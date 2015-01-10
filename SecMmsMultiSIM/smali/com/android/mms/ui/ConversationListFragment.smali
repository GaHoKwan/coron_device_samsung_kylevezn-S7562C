.class public Lcom/android/mms/ui/ConversationListFragment;
.super Landroid/app/Fragment;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
.implements Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    }
.end annotation


# static fields
.field private static final ACTION_CONFIG_DIALOG:Ljava/lang/String; = "com.sec.android.app.firewall.action.CONFIG_DIALOG"

.field public static final BIND_COMPLETE_COUNT:I = 0x12

.field private static final BLACK_LIST:Ljava/lang/String; = "blacklist"

.field private static final CHECKED_MESSAGE_LIMITS:Ljava/lang/String; = "checked_message_limits"

.field public static final DELETE_ALL_CONVERSATION_TOKEN:I = 0x709

.field public static final DELETE_CONVERSATION_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field private static final HANDLER_MSG_MOVE_OK:I = 0x3e8

.field public static final HAVE_LOCKED_MESSAGES_IN_SELECTED_TOKEN:I = 0x70d

.field public static final HAVE_LOCKED_MESSAGES_TOKEN:I = 0x70b

.field public static final HAVE_SMS_IN_THREAD:I = 0x70e

.field public static final MENU_ABOUT:I = 0xd1

.field public static final MENU_ADD_TO_BLACK_LIST:I = 0xe6

.field public static final MENU_ADD_TO_CONTACTS:I = 0xcb

.field public static final MENU_ADD_TO_WHITE_LIST:I = 0xe7

.field public static final MENU_BLOCK_NUMBER_SETTING:I = 0xcc

.field public static final MENU_COMPOSE_NEW:I = 0xc8

.field public static final MENU_CP_MESSAGES:I = 0xcc

.field public static final MENU_DELETE:I = 0xc8

.field public static final MENU_DELETE_ALL:I = 0xcb

.field public static final MENU_DELETE_CANCEL:I = 0xcf

.field public static final MENU_DELETE_OK:I = 0xce

.field public static final MENU_DRAFT_MESSAGES:I = 0xd9

.field public static final MENU_DUMMY:I = 0x12c

.field public static final MENU_GOTO_MAILBOX:I = 0xd6

.field public static final MENU_LOCKED_MSG_MANAGER:I = 0xd3

.field public static final MENU_MOVE_CANCEL:I = 0xd8

.field public static final MENU_MOVE_MSG:I = 0xd5

.field public static final MENU_MOVE_OK:I = 0xd7

.field public static final MENU_PREFERENCES:I = 0xcd

.field public static final MENU_REMOVE_FROM_BLACK_LIST:I = 0xe8

.field public static final MENU_REMOVE_FROM_WHITE_LIST:I = 0xe9

.field public static final MENU_SAVE_CANCEL:I = 0xdc

.field public static final MENU_SAVE_CONV:I = 0xce

.field public static final MENU_SAVE_OK:I = 0xdb

.field public static final MENU_SAVE_RESTORE_SDCARD:I = 0xdd

.field public static final MENU_SCHEDULED_MSG_MANAGER:I = 0xda

.field public static final MENU_SEARCH:I = 0xc9

.field public static final MENU_SPAM_MSG_MANAGER:I = 0xd4

.field public static final MENU_TEMPLATES:I = 0xd0

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0xcd

.field public static final MENU_VIEW:I = 0xc9

.field public static final MENU_VIEW_BOX:I = 0xd2

.field public static final MENU_VIEW_CONTACT:I = 0xca

.field private static final OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListFragment"

.field private static final THREAD_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final THREAD_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final THREAD_LIST_QUERY_NO_LIMIT:I = -0x1

.field private static final THREAD_LIST_QUERY_TOKEN:I = 0x6a5

.field private static final WHITE_LIST:Ljava/lang/String; = "whitelist"

.field public static badge:Landroid/widget/QuickContactBadge;

.field private static deleteComplete:Z

.field public static isOmacpChanged:Z

.field public static isOmacpCount:I

.field public static mIsEmptyThread:Z

.field private static mIsSearchMode:Z

.field private static mQueryHint:Ljava/lang/CharSequence;


# instance fields
.field public cpUri:Landroid/net/Uri;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActivity:Landroid/app/Activity;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mConversationMoveTitle:Landroid/widget/LinearLayout;

.field private mConvlist:Landroid/view/View;

.field private mCountToDelete:I

.field private mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mDeleteListActionBarCancelButton:Landroid/widget/TextView;

.field private mDeleteListActionBarDoneButton:Landroid/widget/TextView;

.field private mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

.field private mDeleteListActionBarTitle:Landroid/widget/TextView;

.field private mEasyModeCompose:Landroid/widget/LinearLayout;

.field private mEasyModeComposeLayout:Landroid/widget/LinearLayout;

.field private mEmptyTemplateLandscape:Landroid/view/View;

.field private mEmptyTemplateMultiWindow:Landroid/view/View;

.field private mEmptyTemplatePortrait:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewLandscape:Landroid/view/View;

.field private mEmptyViewMultiWindow:Landroid/view/View;

.field private mEmptyViewPortrait:Landroid/view/View;

.field private mFirstItemId:J

.field private mHandler:Landroid/os/Handler;

.field private mIsAnimationEnable:Z

.field private mIsDelayForSearch:Z

.field private mIsDeleteMode:Z

.field private mIsDeleteMsgAnimating:Z

.field private mIsEasyMode:Z

.field private mIsLandscape:Z

.field private mIsMoveMode:Z

.field private mIsSaveMode:Z

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMenuMoveCancel:Landroid/view/MenuItem;

.field private mMenuMoveDone:Landroid/view/MenuItem;

.field private mMenuSaveCancel:Landroid/view/MenuItem;

.field private mMenuSaveDone:Landroid/view/MenuItem;

.field private mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

.field private mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectedPosition:I

.field private mSelectedThreadIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSeparatorActionBarLayout:Landroid/widget/LinearLayout;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field mTotalConversations:Landroid/widget/TextView;

.field mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private messageHandler:Landroid/os/Handler;

.field private moveMsgCount:I

.field private moveProgressDialog:Landroid/app/ProgressDialog;

.field private onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private final sWsomaCPObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    .line 287
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    .line 322
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->isOmacpChanged:Z

    .line 323
    sput v1, Lcom/android/mms/ui/ConversationListFragment;->isOmacpCount:I

    .line 349
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    .line 2265
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 339
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    .line 251
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    .line 260
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 261
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z

    .line 263
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    .line 264
    iput v3, p0, Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I

    .line 281
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    .line 292
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    .line 296
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    .line 302
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 303
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 304
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 305
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 307
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 312
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuCancel:Landroid/view/MenuItem;

    .line 313
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    .line 314
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveCancel:Landroid/view/MenuItem;

    .line 315
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    .line 317
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveCancel:Landroid/view/MenuItem;

    .line 318
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    .line 321
    const-string v0, "content://com.wsomacp.messagelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->cpUri:Landroid/net/Uri;

    .line 324
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListFragment$1;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->sWsomaCPObserver:Landroid/database/ContentObserver;

    .line 336
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    .line 337
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeCompose:Landroid/widget/LinearLayout;

    .line 348
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    .line 353
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    .line 354
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    .line 356
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSeparatorActionBarLayout:Landroid/widget/LinearLayout;

    .line 627
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$6;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 1666
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$18;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 1841
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$19;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$19;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2223
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$21;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 3626
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$26;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$26;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->messageHandler:Landroid/os/Handler;

    .line 340
    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setIntent(Landroid/content/Intent;)V

    .line 342
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    sput-boolean p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->handle_focus_on_Select_All()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationListFragment;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListFragment;->openThread(JI)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationListFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/mms/ui/ConversationListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ConversationListFragment;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationListFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ConversationListFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedConversations()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->moveSelectedConversations()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ConversationListFragment;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->threadHasUnmoveableMessages(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/mms/ui/ConversationListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I

    return p1
.end method

.method static synthetic access$5308(Lcom/android/mms/ui/ConversationListFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I

    return v0
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->moveProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/mms/ui/ConversationListFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->moveProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    sput-boolean p0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationListFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 976
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 980
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 2

    .prologue
    .line 3447
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3460
    .local v0, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 3
    .parameter "threadId"
    .parameter "handler"

    .prologue
    .line 2174
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDeleteThread(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    const/16 v0, 0x70b

    invoke-static {p2, p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 2176
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 8
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v7, 0x0

    .line 2191
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confirmDeleteThreadDialog(),deleteAll="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",hasLockedMessages="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",resourceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    const v4, 0x7f030029

    invoke-static {p3, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2195
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0e00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2196
    .local v2, checkbox:Landroid/widget/CheckBox;
    const v4, 0x7f0e00e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2197
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 2199
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setHasLockedMessage(Z)V

    .line 2200
    if-nez p2, :cond_0

    .line 2201
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2212
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2213
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    const v4, 0x7f0a009b

    :goto_1
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 2203
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2204
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 2205
    new-instance v4, Lcom/android/mms/ui/ConversationListFragment$20;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/ui/ConversationListFragment$20;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2213
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const v4, 0x7f0a009a

    goto :goto_1
.end method

.method private createNewMessage()V
    .locals 2

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "2000"

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->doBoost(Landroid/content/Context;Ljava/lang/String;)V

    .line 1717
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    .line 1726
    return-void
.end method

.method private deleteSelectedConversations()V
    .locals 2

    .prologue
    .line 3488
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "deleteSelectedConversations()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3490
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    .line 3494
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v1, 0x70d

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedThread(Landroid/content/AsyncQueryHandler;I)V

    .line 3497
    return-void
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 612
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 613
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 614
    return-void
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 4
    .parameter "position"

    .prologue
    .line 2944
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$5;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 4

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 3679
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a01ed

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3683
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 2517
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2518
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "getQuantityText This fragment was detached from it\'s activity."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    const-string v0, ""

    .line 2525
    :goto_0
    return-object v0

    .line 2521
    :cond_0
    if-nez p1, :cond_1

    .line 2522
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2524
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2525
    .local v0, str:Ljava/lang/String;
    goto :goto_0
.end method

.method private handle_focus_on_Select_All()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1370
    const/4 v10, 0x0

    .line 1371
    .local v10, view_done:Landroid/view/View;
    const/4 v9, 0x0

    .line 1373
    .local v9, view_cancel:Landroid/view/View;
    const/4 v6, -0x1

    .line 1374
    .local v6, indexOf_ActionmenuView:I
    const/4 v5, -0x1

    .line 1375
    .local v5, indexOf_ActionBarView:I
    const/4 v4, -0x1

    .line 1376
    .local v4, indexOf_ActionBarContainer:I
    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 1377
    .local v8, rView:Landroid/view/ViewGroup;
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1379
    .local v7, ll:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 1380
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v11, :cond_6

    .line 1381
    move v4, v3

    .line 1386
    :cond_0
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarContainer;

    .line 1387
    .local v2, action_bar:Lcom/android/internal/widget/ActionBarContainer;
    if-eqz v2, :cond_3

    .line 1388
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_1

    .line 1389
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Lcom/android/internal/widget/ActionBarView;

    if-eqz v11, :cond_7

    .line 1390
    move v5, v3

    .line 1395
    :cond_1
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarView;

    .line 1396
    .local v1, Aview:Lcom/android/internal/widget/ActionBarView;
    if-eqz v1, :cond_2

    .line 1398
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 1399
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v11, :cond_8

    .line 1400
    move v6, v3

    .line 1406
    :cond_2
    const/4 v11, -0x1

    if-eq v6, v11, :cond_3

    .line 1408
    invoke-virtual {v1, v6}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView;

    .line 1409
    .local v0, AmView:Lcom/android/internal/view/menu/ActionMenuView;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #view_done:Landroid/view/View;
    check-cast v10, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 1410
    .restart local v10       #view_done:Landroid/view/View;
    invoke-virtual {v0, v12}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #view_cancel:Landroid/view/View;
    check-cast v9, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 1414
    .end local v0           #AmView:Lcom/android/internal/view/menu/ActionMenuView;
    .end local v1           #Aview:Lcom/android/internal/widget/ActionBarView;
    .restart local v9       #view_cancel:Landroid/view/View;
    :cond_3
    if-eqz v10, :cond_4

    .line 1416
    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$13;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$13;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1437
    :cond_4
    if-eqz v9, :cond_5

    .line 1439
    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$14;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$14;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1463
    :cond_5
    return-void

    .line 1379
    .end local v2           #action_bar:Lcom/android/internal/widget/ActionBarContainer;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1388
    .restart local v2       #action_bar:Lcom/android/internal/widget/ActionBarContainer;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1398
    .restart local v1       #Aview:Lcom/android/internal/widget/ActionBarView;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private hideEasyMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3923
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "hideEasyMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3925
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3926
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3928
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplatePortrait:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3929
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplatePortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3931
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplateLandscape:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3932
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplateLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3934
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplateMultiWindow:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 3935
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplateMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3936
    :cond_3
    return-void
.end method

.method private hideSoftInputKeyboard()V
    .locals 3

    .prologue
    .line 1098
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1101
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1102
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1103
    return-void
.end method

.method private initEasyMode()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 3892
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "initEasyMode"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3893
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v2, 0x7f0e00de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3895
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_4

    .line 3896
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "initEasyMode inflate easy mode"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3897
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    .line 3899
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e00f8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeCompose:Landroid/widget/LinearLayout;

    .line 3900
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeCompose:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$28;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$28;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3912
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplatePortrait:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3913
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplatePortrait:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3915
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplateLandscape:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3916
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplateLandscape:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3918
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplateMultiWindow:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 3919
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplateMultiWindow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3920
    :cond_3
    return-void

    .line 3908
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 3909
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEasyModeComposeLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initListAdapter()V
    .locals 4

    .prologue
    .line 636
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "initListAdapter()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-instance v1, Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 639
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 640
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 641
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)V

    .line 644
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    .line 645
    .local v0, useSplitView:Z
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->setSplitModePreference(Z)V

    .line 646
    return-void
.end method

.method private initListAnimation()V
    .locals 2

    .prologue
    .line 536
    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 537
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$4;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    .line 569
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    .line 571
    return-void
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 2540
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 2542
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 2543
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 2544
    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    .line 2545
    const/4 v2, 0x1

    .line 2549
    .end local v0           #newId:J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadToDeleteMode(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 841
    const-string v0, "conversationDeleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 842
    return-void
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    .prologue
    .line 703
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 704
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 705
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 707
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "markCheckedMessageLimit()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method private moveSelectedConversations()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3501
    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "moveSelectedConversations()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 3503
    .local v0, allSelected:Z
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f030063

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3504
    .local v2, contents:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3505
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v0, :cond_0

    const v3, 0x7f0a0442

    :goto_0
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/mms/ui/ConversationListFragment$25;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ConversationListFragment$25;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3623
    return-void

    .line 3505
    :cond_0
    const v3, 0x7f0a043f

    goto :goto_0
.end method

.method private notifyDeleteStart()V
    .locals 1

    .prologue
    .line 3664
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteStart()V

    .line 3665
    return-void
.end method

.method private openThread(J)V
    .locals 9
    .parameter "threadId"

    .prologue
    .line 1730
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    .line 1732
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    .line 1738
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    if-nez v6, :cond_1

    .line 1770
    :cond_0
    :goto_0
    return-void

    .line 1741
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-static {v6, p1, p2, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1744
    .local v1, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v3

    .line 1745
    .local v3, isCmas:Z
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/mms/data/Conversation;->isCmasPresidential(I)Z

    move-result v4

    .line 1747
    .local v4, isCmasPresidentialType:Z
    const-string v6, "Mms/ConversationListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openThread startActivity for threadId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , CMAS= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isPresidential = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_2

    if-eqz v4, :cond_2

    .line 1750
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v5

    .line 1751
    .local v5, useSplitView:Z
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6, p1, p2}, Lcom/android/mms/ui/CMASViewer;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1752
    .local v0, cmasintent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 1753
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v5}, Lcom/android/mms/ui/ConversationComposer;->requestSplitModeOnConverationList(Z)V

    .line 1754
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 1755
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_0

    .line 1759
    .end local v0           #cmasintent:Landroid/content/Intent;
    .end local v5           #useSplitView:Z
    :cond_2
    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1763
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-static {v6, p1, p2, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v2

    .line 1764
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v2}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 1767
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto/16 :goto_0
.end method

.method private openThread(JI)V
    .locals 9
    .parameter "threadId"
    .parameter "reply_all"

    .prologue
    .line 1775
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    .line 1776
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    .line 1782
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-static {v6, p1, p2, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1785
    .local v1, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v3

    .line 1786
    .local v3, isCmas:Z
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/mms/data/Conversation;->isCmasPresidential(I)Z

    move-result v4

    .line 1788
    .local v4, isCmasPresidentialType:Z
    const-string v6, "Mms/ConversationListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openThread startActivity for threadId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , CMAS= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isPresidential = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_1

    if-eqz v4, :cond_1

    .line 1791
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v5

    .line 1792
    .local v5, useSplitView:Z
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6, p1, p2}, Lcom/android/mms/ui/CMASViewer;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1793
    .local v0, cmasintent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 1794
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v5}, Lcom/android/mms/ui/ConversationComposer;->requestSplitModeOnConverationList(Z)V

    .line 1795
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 1796
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1811
    .end local v0           #cmasintent:Landroid/content/Intent;
    .end local v5           #useSplitView:Z
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1804
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-static {v6, p1, p2, v7, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZI)Landroid/content/Intent;

    move-result-object v2

    .line 1805
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v2}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 1808
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_0
.end method

.method private refreshSplitMode()V
    .locals 2

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 2162
    :goto_0
    return-void

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
.end method

.method private removeDeleteModeActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3339
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3340
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3341
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 3344
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3345
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3346
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 3349
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 3350
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 3351
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 3353
    :cond_2
    return-void
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 849
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 837
    const-string v0, "conversationDeleteMode"

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 838
    return-void
.end method

.method public static setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "queryhint"

    .prologue
    .line 3848
    sput-object p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    .line 3849
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 607
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 608
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 609
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 2530
    const v1, 0x7f0a0124

    const v2, 0x7f0b0004

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 2532
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2534
    const-string v1, "Mms/ConversationListFragment"

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

    .line 2535
    return-void
.end method

.method private showAbout()V
    .locals 3

    .prologue
    .line 3753
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3754
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a03c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3755
    const v1, 0x7f0a0439

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3756
    const v1, 0x7f0a006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3757
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3758
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    .line 1063
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1066
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$10;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1071
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 4
    .parameter "isFake"

    .prologue
    .line 1081
    if-eqz p1, :cond_0

    .line 1082
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v2, 0x6a4

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;II)V

    .line 1091
    :goto_0
    return-void

    .line 1085
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v2, 0x6a5

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;II)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1055
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->beforeQuery()V

    .line 1056
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    .line 1057
    return-void
.end method

.method private threadHasUnmoveableMessages(J)Z
    .locals 13
    .parameter "threadId"

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 3763
    const/4 v10, 0x0

    .line 3764
    .local v10, unMoveableNum:I
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3765
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1, p2, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v8

    .line 3766
    .local v8, mConversation:Lcom/android/mms/data/Conversation;
    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->isAnonymousMsg()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v3, v11

    .line 3825
    :goto_0
    return v3

    .line 3769
    :cond_1
    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-nez v6, :cond_2

    move v3, v11

    .line 3770
    goto :goto_0

    .line 3772
    :cond_2
    const-string v4, "(thread_id = ? AND (type = 4 OR type = 5 OR type = 6))"

    .line 3773
    .local v4, whereSql:Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 3776
    .local v5, whereArgs:[Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 3777
    .local v2, tableUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, resolver:Landroid/content/ContentResolver;
    move-object v6, v3

    .line 3778
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3780
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 3783
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 3787
    :cond_3
    if-eqz v7, :cond_4

    .line 3788
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3794
    :cond_4
    const-string v4, "(thread_id = ? and ((m_type = ?) or (msg_box = 4) or (msg_box = 200)))"

    .line 3795
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    .end local v5           #whereArgs:[Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 3798
    .restart local v5       #whereArgs:[Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v3

    .line 3799
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3802
    .local v9, mms_cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 3806
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    add-int/2addr v10, v3

    .line 3809
    :cond_5
    if-eqz v9, :cond_6

    .line 3810
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3813
    :cond_6
    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v3

    if-ne v10, v3, :cond_9

    .line 3815
    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v11

    .line 3819
    goto :goto_0

    .line 3787
    .end local v9           #mms_cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v7, :cond_7

    .line 3788
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 3809
    .restart local v9       #mms_cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    if-eqz v9, :cond_8

    .line 3810
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 3821
    :cond_9
    const-string v3, "Mms/ConversationListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "threadHasUnmoveableMessages(): unMoveableNum="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", mConversation.getMessageCount()="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3824
    :cond_a
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    move v3, v12

    .line 3825
    goto/16 :goto_0
.end method

.method private updateCheckedMsgCount()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3426
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 3427
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3428
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3442
    :cond_0
    :goto_0
    return-void

    .line 3430
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 3431
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    .line 3432
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 3433
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 3435
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 3436
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 3437
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 3438
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 3440
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private static updateCmasExpiry(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 957
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 958
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 959
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "expired"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 961
    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "calling updateCMASExpiry"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expired!=1 AND expires<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 965
    .local v1, selection:Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Threads;->CMAS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 967
    return-void
.end method

.method private updateDeleteModeActionBar()V
    .locals 3

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 3359
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 3360
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 3361
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 3363
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3364
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 3365
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    const v1, 0x7f0a043f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3368
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$23;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$23;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3378
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$24;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$24;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3398
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateCheckedMsgCount()V

    .line 3399
    return-void
.end method

.method private updateEmptyScreen(IZ)V
    .locals 7
    .parameter "resultCount"
    .parameter "handleFooter"

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1007
    const-string v1, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEmptyScreen(),resultCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 1009
    .local v0, listView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    .line 1012
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-eqz v1, :cond_2

    .line 1013
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    invoke-virtual {p0, v2, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    .line 1052
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 1009
    goto :goto_0

    .line 1018
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    if-eqz v1, :cond_3

    .line 1019
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    invoke-virtual {p0, v2, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setMoveModeLayout(ZZZ)V

    goto :goto_1

    .line 1022
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z

    if-eqz v1, :cond_4

    .line 1023
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    invoke-virtual {p0, v2, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->setSaveModeLayout(ZZZ)V

    goto :goto_1

    .line 1029
    :cond_4
    if-nez p1, :cond_6

    .line 1030
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1034
    const-string v1, "GATE"

    const-string v2, "<GATE-M>NO_MESSAGES</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyViewVisibility()V

    .line 1039
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    if-eqz p2, :cond_0

    .line 1041
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1046
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    if-eqz p2, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateEmptyViewVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 983
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 984
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 986
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 996
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;
    .locals 4
    .parameter "cursor"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    .line 3688
    if-nez p1, :cond_1

    move-object p1, v1

    .line 3702
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 3691
    .restart local p1
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3693
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3695
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 3699
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 3693
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 3702
    goto :goto_0
.end method

.method closeSearchView(Z)V
    .locals 5
    .parameter "invalidate"

    .prologue
    const/4 v4, 0x0

    .line 3830
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSearchView invalidate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3832
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3833
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    .line 3834
    iput-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 3835
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    .line 3836
    .local v0, useSplitView:Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3837
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->requestFocusOnComposer()Z

    .line 3839
    :cond_0
    if-eqz p1, :cond_1

    .line 3840
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3843
    .end local v0           #useSplitView:Z
    :cond_1
    sget-object v1, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 3844
    sput-object v4, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    .line 3845
    :cond_2
    return-void
.end method

.method public confirmRegisterAsSpamNumber()V
    .locals 3

    .prologue
    .line 3857
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3858
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a039a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3859
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 3860
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3861
    const v1, 0x7f0a03a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3862
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$27;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$27;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3875
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3877
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3878
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3879
    return-void
.end method

.method public deleteSelectedConversationsRemote(J)V
    .locals 2
    .parameter "mthreadId"

    .prologue
    .line 3481
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "deleteSelectedConversationsRemote()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 3483
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {p1, p2, v0}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 3485
    :cond_0
    return-void
.end method

.method public dismissDeleteConfirmDialog()V
    .locals 1

    .prologue
    .line 3852
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 3853
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 3854
    :cond_0
    return-void
.end method

.method public drawMessagePointer(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 1816
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->setListItemSelected(J)V

    .line 1823
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    .line 1825
    return-void
.end method

.method public drawMessageTouchPointer()V
    .locals 2

    .prologue
    .line 1828
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "drawMessageTouchPointer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    .line 1833
    :cond_0
    return-void
.end method

.method public getAnimationEnable()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    return v0
.end method

.method public getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method public getEmptyScreenVisible()I
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getFirstItemId()J
    .locals 2

    .prologue
    .line 923
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    return-wide v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 8
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 2981
    const-string v5, "Mms/ConversationListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNumber(),position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 2985
    .local v1, conv:Lcom/android/mms/data/Conversation;
    if-nez v1, :cond_1

    .line 3022
    .end local v1           #conv:Lcom/android/mms/data/Conversation;
    :cond_0
    :goto_0
    return-object v4

    .line 2988
    .restart local v1       #conv:Lcom/android/mms/data/Conversation;
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 2989
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 2992
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 2993
    .local v3, numbers:[Ljava/lang/String;
    array-length v5, v3

    if-eqz v5, :cond_0

    .line 2996
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 2997
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3000
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string v6, "#CMAS#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3003
    const/4 v5, 0x0

    aget-object v4, v3, v5

    goto :goto_0

    .line 3014
    :cond_2
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3015
    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3018
    .end local v0           #contactList:Lcom/android/mms/data/ContactList;
    .end local v1           #conv:Lcom/android/mms/data/Conversation;
    .end local v3           #numbers:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3019
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hidecheckbox()V
    .locals 1

    .prologue
    .line 3740
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v0, :cond_0

    .line 3741
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    .line 3742
    :cond_0
    return-void
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 3883
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConversationIndex(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 617
    if-gez p1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v3

    .line 620
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 621
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 622
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 624
    .local v1, cntFooter:I
    add-int/lit8 v4, v2, -0x1

    if-le p1, v4, :cond_0

    sub-int v4, v0, v1

    if-ge p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 3464
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method public isListIndex(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 3888
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->isConversationIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMoveMode()Z
    .locals 1

    .prologue
    .line 3469
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    return v0
.end method

.method public isSaveMode()Z
    .locals 1

    .prologue
    .line 3474
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3475
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z

    .line 3477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 3

    .prologue
    .line 3747
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3748
    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 449
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 450
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "[Start]onActivityCreated()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onActivityCreated start"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 456
    if-eqz p1, :cond_0

    .line 457
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->loadToDeleteMode(Landroid/os/Bundle;)V

    .line 461
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 467
    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    .line 468
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 470
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 474
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 475
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 476
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 485
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initListAdapter()V

    .line 488
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initListAnimation()V

    .line 491
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    .line 492
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 493
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "checked_message_limits"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 495
    .local v0, checkedMessageLimits:Z
    if-nez v0, :cond_2

    .line 496
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->runOneTimeStorageLimitCheckForLegacyMessages()V

    .line 499
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$3;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_3

    .line 519
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/animation/MsgListAnimation;->setLayout(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 522
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 523
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    .line 527
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->cpUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->sWsomaCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 529
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onActivityCreated end"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "[End]onActivityCreated()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 360
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "start onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 362
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "end onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2114
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    .line 2115
    .local v0, SplitModefrom:I
    const-string v2, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configurationChanged(),newConfig="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_7

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    .line 2118
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 2120
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getEmptyScreenVisible()I

    move-result v2

    if-nez v2, :cond_0

    .line 2121
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyViewVisibility()V

    .line 2124
    :cond_0
    if-ne v0, v3, :cond_1

    .line 2126
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v2, :cond_1

    .line 2127
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v2}, Landroid/view/ContextMenu;->close()V

    .line 2128
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    .line 2133
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    .line 2134
    .local v1, useSplitView:Z
    if-eqz v1, :cond_2

    .line 2135
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v2, :cond_8

    if-eq v0, v7, :cond_8

    .line 2137
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 2138
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 2146
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2147
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    .line 2150
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2151
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2154
    :cond_6
    return-void

    .end local v1           #useSplitView:Z
    :cond_7
    move v2, v4

    .line 2116
    goto :goto_0

    .line 2141
    .restart local v1       #useSplitView:Z
    :cond_8
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarPadding(Z)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 16
    .parameter "item"

    .prologue
    .line 1985
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v13, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationComposer;->getCMASViewerIsVisible()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1986
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v13, Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/mms/ui/ConversationComposer;->onCMASViewerContextItemSelected(Landroid/view/MenuItem;)V

    .line 1987
    const/4 v13, 0x0

    .line 2099
    :goto_0
    return v13

    .line 1990
    :cond_0
    const-string v13, "Mms/ConversationListFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onContextItemSelected(),itemId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 1994
    .local v7, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v14, v7, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v9

    .line 1995
    .local v9, itemObject:Ljava/lang/Object;
    instance-of v13, v9, Landroid/database/Cursor;

    if-nez v13, :cond_1

    .line 1996
    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    move-object v5, v9

    .line 1997
    check-cast v5, Landroid/database/Cursor;

    .line 1999
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    if-ltz v13, :cond_2

    .line 2002
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    .line 2003
    .local v4, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    .line 2004
    .local v10, threadId:J
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 2099
    .end local v4           #conv:Lcom/android/mms/data/Conversation;
    .end local v10           #threadId:J
    :cond_2
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v13

    goto :goto_0

    .line 2006
    .restart local v4       #conv:Lcom/android/mms/data/Conversation;
    .restart local v10       #threadId:J
    :sswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    .line 2007
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {v10, v11, v13}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_1

    .line 2012
    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2013
    iget v13, v4, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v13}, Lcom/android/mms/ui/ConversationListFragment;->openThread(JI)V

    goto :goto_1

    .line 2015
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    goto :goto_1

    .line 2021
    :sswitch_2
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    .line 2022
    .local v3, contact:Lcom/android/mms/data/Contact;
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v8, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2023
    .local v8, intent:Landroid/content/Intent;
    const/high16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2024
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.android.jcontacts"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2025
    const-string v13, "com.android.jcontacts"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2027
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2032
    .end local v3           #contact:Lcom/android/mms/data/Contact;
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_3
    :try_start_0
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 2033
    .local v1, address:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2034
    .end local v1           #address:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2035
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2041
    .end local v6           #e:Ljava/lang/Exception;
    :sswitch_4
    const/4 v2, 0x0

    .line 2043
    .local v2, blockContact:Lcom/android/mms/data/Contact;
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 2044
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #blockContact:Lcom/android/mms/data/Contact;
    check-cast v2, Lcom/android/mms/data/Contact;

    .line 2046
    .restart local v2       #blockContact:Lcom/android/mms/data/Contact;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2047
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v13, v2}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    goto/16 :goto_1

    .line 2049
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListFragment;->confirmRegisterAsSpamNumber()V

    goto/16 :goto_1

    .line 2055
    .end local v2           #blockContact:Lcom/android/mms/data/Contact;
    :sswitch_5
    const/4 v12, 0x0

    .line 2056
    .local v12, unblockContact:Lcom/android/mms/data/Contact;
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 2057
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #unblockContact:Lcom/android/mms/data/Contact;
    check-cast v12, Lcom/android/mms/data/Contact;

    .line 2058
    .restart local v12       #unblockContact:Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2059
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0a039d

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2066
    .end local v12           #unblockContact:Lcom/android/mms/data/Contact;
    :sswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 2067
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 2068
    .restart local v1       #address:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2069
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v13, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2070
    const-string v13, "number"

    invoke-virtual {v8, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2071
    const-string v13, "list"

    const-string v14, "blacklist"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2072
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2078
    .end local v1           #address:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 2079
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 2080
    .restart local v1       #address:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2081
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v13, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2082
    const-string v13, "number"

    invoke-virtual {v8, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2083
    const-string v13, "list"

    const-string v14, "whitelist"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2084
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2090
    .end local v1           #address:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2091
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    const/4 v14, 0x1

    new-array v14, v14, [J

    const/4 v15, 0x0

    aput-wide v10, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/samsung/mms/util/SaveRestoreOperation;->startSaveOperation([JZ)V

    goto/16 :goto_1

    .line 2004
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
        0xcb -> :sswitch_3
        0xcc -> :sswitch_4
        0xcd -> :sswitch_5
        0xce -> :sswitch_8
        0xe6 -> :sswitch_6
        0xe7 -> :sswitch_7
        0xe8 -> :sswitch_6
        0xe9 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 367
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onCreate start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    .line 370
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onCreate end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 377
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "[Start]onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onCreateView start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const v0, 0x7f030026

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    .line 381
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 385
    const v0, 0x7f030022

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    .line 386
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00cd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    .line 387
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0e00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    .line 388
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0e00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0e003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0e003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewPortrait:Landroid/view/View;

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0e0043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewLandscape:Landroid/view/View;

    .line 392
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0e0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewMultiWindow:Landroid/view/View;

    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyViewMultiWindow:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$2;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 438
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0e0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplatePortrait:Landroid/view/View;

    .line 439
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0e0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplateLandscape:Landroid/view/View;

    .line 440
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f0e004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyTemplateMultiWindow:Landroid/view/View;

    .line 442
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onCreateView end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "[End]onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteCompleted()V
    .locals 2

    .prologue
    .line 3668
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3675
    :cond_0
    :goto_0
    return-void

    .line 3671
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 3672
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3673
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 2

    .prologue
    .line 3657
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 3658
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3659
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3661
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 895
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 898
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 903
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->removeDeleteModeActionBar()V

    .line 907
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 908
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->sWsomaCPObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 913
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    if-eqz v0, :cond_2

    .line 914
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->OnDestroy()V

    .line 915
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 918
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 919
    return-void
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 927
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "post onDraftChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListFragment$8;-><init>(Lcom/android/mms/ui/ConversationListFragment;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 939
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 711
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->updateCmasExpiry(Landroid/content/Context;)V

    .line 719
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    .line 721
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    .line 1467
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 1468
    .local v6, itemId:I
    const-string v10, "Mms/ConversationListFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onOptionsItemSelected(),item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    sparse-switch v6, :sswitch_data_0

    .line 1663
    const/4 v10, 0x0

    :goto_0
    return v10

    .line 1473
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1474
    iget-boolean v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v10, :cond_0

    .line 1475
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->hidecheckbox()V

    .line 1479
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 1477
    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    goto :goto_1

    .line 1480
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1481
    iget-boolean v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v10, :cond_2

    .line 1482
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->hidecheckbox()V

    .line 1486
    :goto_2
    const/4 v10, 0x1

    goto :goto_0

    .line 1484
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/mms/ui/ConversationListFragment;->setMoveModeLayout(ZZZ)V

    goto :goto_2

    .line 1488
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1489
    iget-boolean v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v10, :cond_4

    .line 1490
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->hidecheckbox()V

    .line 1494
    :goto_3
    const/4 v10, 0x1

    goto :goto_0

    .line 1492
    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/mms/ui/ConversationListFragment;->setSaveModeLayout(ZZZ)V

    goto :goto_3

    .line 1496
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 1499
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V

    .line 1500
    const/4 v10, 0x1

    goto :goto_0

    .line 1502
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->startSearchMenu()V

    .line 1503
    const/4 v10, 0x1

    goto :goto_0

    .line 1507
    :sswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1508
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    .line 1511
    :cond_6
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    .line 1512
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$15;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$15;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1522
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$16;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$16;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v12, 0x96

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1531
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1533
    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1534
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    .line 1535
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/mms/ui/ConversationListFragment$17;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationListFragment$17;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1544
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1546
    :sswitch_5
    new-instance v4, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1548
    .local v4, intent:Landroid/content/Intent;
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    .line 1549
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1550
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1553
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_6
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedConversations()V

    .line 1554
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1557
    :sswitch_7
    iget-boolean v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v10, :cond_8

    .line 1558
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->hidecheckbox()V

    .line 1561
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1560
    :cond_8
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    goto :goto_4

    .line 1566
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.SET_CP"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1567
    .local v0, cpIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1577
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1580
    .end local v0           #cpIntent:Landroid/content/Intent;
    :sswitch_9
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    .line 1581
    new-instance v5, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1582
    .local v5, intent_box:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1583
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1584
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 1585
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1590
    .end local v5           #intent_box:Landroid/content/Intent;
    :sswitch_a
    new-instance v1, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {v1, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1591
    .local v1, fintent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1592
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1596
    .end local v1           #fintent:Landroid/content/Intent;
    :sswitch_b
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->showAbout()V

    .line 1597
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1600
    :sswitch_c
    new-instance v7, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {v7, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1601
    .local v7, lintent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1602
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1606
    .end local v7           #lintent:Landroid/content/Intent;
    :sswitch_d
    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1607
    .local v9, sintent:Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1609
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1613
    .end local v9           #sintent:Landroid/content/Intent;
    :sswitch_e
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    .line 1614
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v10, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationComposer;->onConversationMoveMode()V

    .line 1615
    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/mms/ui/ConversationListFragment;->setMoveModeLayout(ZZZ)V

    .line 1616
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1619
    :sswitch_f
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/util/SecurityMailboxUtils;->showPasswordEntryScreen(Landroid/content/Context;)V

    .line 1620
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1623
    :sswitch_10
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->moveSelectedConversations()V

    .line 1624
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1627
    :sswitch_11
    iget-boolean v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v10, :cond_9

    .line 1628
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->hidecheckbox()V

    .line 1631
    :goto_5
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1630
    :cond_9
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/mms/ui/ConversationListFragment;->setMoveModeLayout(ZZZ)V

    goto :goto_5

    .line 1635
    :sswitch_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1636
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v10}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedConvList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1637
    .local v8, selectedIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v3, v10, [J

    .line 1638
    .local v3, ids:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_a

    .line 1639
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v3, v2

    .line 1638
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1642
    :cond_a
    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    const/4 v11, 0x1

    invoke-virtual {v10, v3, v11}, Lcom/samsung/mms/util/SaveRestoreOperation;->startSaveOperation([JZ)V

    .line 1644
    .end local v2           #i:I
    .end local v3           #ids:[J
    .end local v8           #selectedIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1647
    :sswitch_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1648
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1649
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->hidecheckbox()V

    .line 1653
    :cond_c
    :goto_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1651
    :cond_d
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/mms/ui/ConversationListFragment;->setSaveModeLayout(ZZZ)V

    goto :goto_7

    .line 1656
    :sswitch_14
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v12, Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1657
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1660
    :sswitch_15
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v12, Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1661
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1470
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xcb -> :sswitch_3
        0xcc -> :sswitch_8
        0xcd -> :sswitch_5
        0xce -> :sswitch_6
        0xcf -> :sswitch_7
        0xd0 -> :sswitch_a
        0xd1 -> :sswitch_b
        0xd2 -> :sswitch_9
        0xd3 -> :sswitch_c
        0xd4 -> :sswitch_d
        0xd5 -> :sswitch_e
        0xd6 -> :sswitch_f
        0xd7 -> :sswitch_10
        0xd8 -> :sswitch_11
        0xd9 -> :sswitch_14
        0xda -> :sswitch_15
        0xdb -> :sswitch_12
        0xdc -> :sswitch_13
        0xdd -> :sswitch_4
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 860
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 861
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    .line 863
    return-void
.end method

.method public onPrepareListOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    const v5, 0x7f020285

    const/4 v4, 0x1

    const/4 v3, 0x6

    const/4 v12, 0x0

    .line 1107
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onPrepareOptionsMenu()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 1109
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onPrepareOptionsMenu() Already search mode"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    :goto_0
    return-void

    .line 1119
    :cond_0
    const/4 v11, 0x0

    .line 1121
    .local v11, showEasyMode:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1122
    const/16 v1, 0xcf

    const v2, 0x7f0a01e9

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuCancel:Landroid/view/MenuItem;

    .line 1123
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1125
    const/16 v1, 0xce

    const v2, 0x7f0a00a2

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    .line 1126
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1128
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 1129
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1130
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f020286

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1133
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1134
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1138
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    .line 1139
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1340
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportEasyMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1341
    if-eqz v11, :cond_21

    .line 1342
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initEasyMode()V

    .line 1348
    :cond_3
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    .line 1136
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1140
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1141
    const/16 v1, 0xd8

    const v2, 0x7f0a01e9

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveCancel:Landroid/view/MenuItem;

    .line 1142
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1144
    const/16 v1, 0xd7

    const v2, 0x7f0a043f

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    .line 1145
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1147
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v1, :cond_6

    .line 1148
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1149
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    const v2, 0x7f020286

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1152
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 1153
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1157
    :goto_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    .line 1158
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_2

    .line 1155
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuMoveDone:Landroid/view/MenuItem;

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 1159
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1160
    const/16 v1, 0xdc

    const v2, 0x7f0a01e9

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveCancel:Landroid/view/MenuItem;

    .line 1161
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1163
    const/16 v1, 0xdb

    const v2, 0x7f0a010f

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    .line 1164
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1166
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsLandscape:Z

    if-eqz v1, :cond_9

    .line 1167
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1168
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    const v2, 0x7f020286

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1171
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 1172
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1174
    :cond_a
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMenuSaveDone:Landroid/view/MenuItem;

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1175
    :cond_b
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    if-eqz v1, :cond_c

    .line 1176
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onPrepareOptionsMenu() Delay for search mode"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1177
    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1180
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1181
    const v1, 0x7f0e0252

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 1183
    .local v8, menuSearch:Landroid/view/MenuItem;
    invoke-interface {v8}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 1184
    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$11;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 1205
    invoke-interface {v8}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1209
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/SearchManager;

    .line 1210
    .local v9, searchManager:Landroid/app/SearchManager;
    invoke-interface {v8}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/SearchView;

    .line 1211
    .local v10, searchView:Landroid/widget/SearchView;
    iput-object v10, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 1212
    if-eqz v9, :cond_d

    if-eqz v10, :cond_d

    .line 1213
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1214
    const/16 v1, 0x7d0

    invoke-virtual {v10, v1}, Landroid/widget/SearchView;->setMaxWidth(I)V

    .line 1217
    :cond_d
    sget-object v1, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 1218
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;

    sget-object v2, Lcom/android/mms/ui/ConversationListFragment;->mQueryHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v12}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 1225
    .end local v8           #menuSearch:Landroid/view/MenuItem;
    .end local v9           #searchManager:Landroid/app/SearchManager;
    .end local v10           #searchView:Landroid/widget/SearchView;
    :cond_e
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_f

    .line 1226
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1228
    :cond_f
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    if-eqz v1, :cond_1f

    .line 1229
    const/4 v11, 0x1

    .line 1245
    :cond_10
    :goto_5
    sget-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->isOmacpChanged:Z

    if-eqz v1, :cond_13

    .line 1246
    const/4 v6, 0x0

    .line 1248
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->cpUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1249
    .local v0, resolver:Landroid/content/ContentProviderClient;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->cpUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1251
    if-eqz v6, :cond_11

    .line 1252
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sput v1, Lcom/android/mms/ui/ConversationListFragment;->isOmacpCount:I

    .line 1255
    :cond_11
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    if-eqz v6, :cond_12

    .line 1260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1263
    .end local v0           #resolver:Landroid/content/ContentProviderClient;
    :cond_12
    :goto_6
    sput-boolean v12, Lcom/android/mms/ui/ConversationListFragment;->isOmacpChanged:Z

    .line 1266
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_13
    sget v1, Lcom/android/mms/ui/ConversationListFragment;->isOmacpCount:I

    if-lez v1, :cond_14

    .line 1267
    const/16 v1, 0xcc

    const v2, 0x7f0a0007

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200b4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1272
    :cond_14
    const/16 v1, 0xc9

    const v2, 0x7f0a01cf

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200de

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x73

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1277
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_15

    .line 1278
    const/16 v1, 0xcb

    const v2, 0x7f0a000a

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200ba

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1282
    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1284
    const/16 v1, 0xd2

    const v2, 0x7f0a0310

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200e7

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1289
    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDraftMessageBox()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1290
    const/16 v1, 0xd9

    const v2, 0x7f0a04da

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200bd

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1293
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1294
    const/16 v1, 0xda

    const v2, 0x7f0a03d5

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200d8

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1298
    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1299
    const/16 v1, 0xd3

    const v2, 0x7f0a03d3

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200ca

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1303
    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1304
    :cond_1a
    const/16 v1, 0xd4

    const v2, 0x7f0a036b

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200e0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1307
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1c

    .line 1308
    const/16 v1, 0xdd

    const v2, 0x7f0a04ff

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200da

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1311
    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1312
    const/16 v1, 0xd6

    const v2, 0x7f0a043d

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200c1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1315
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1d

    .line 1316
    const/16 v1, 0xd5

    const v2, 0x7f0a043e

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200cb

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1323
    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTexttemplatTMOMenu()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1324
    const/16 v1, 0xd0

    const v2, 0x7f0a02df

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200e1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1329
    :cond_1e
    const/16 v1, 0xcd

    const v2, 0x7f0a0006

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200d0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1334
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1335
    const/16 v1, 0xd1

    const v2, 0x7f0a03c5

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200c5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1232
    :cond_1f
    const/16 v1, 0xc8

    const v2, 0x7f0a0005

    invoke-interface {p1, v12, v1, v12, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02028f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1236
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1238
    const/16 v1, 0xc8

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    goto/16 :goto_5

    .line 1256
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1257
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "com.wsomacp.messagelist provider error"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1259
    if-eqz v6, :cond_12

    .line 1260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 1259
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_20

    .line 1260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_20
    throw v1

    .line 1344
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_21
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideEasyMode()V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 2949
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t\t onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2951
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 2953
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->updateCountryIso()V

    .line 2955
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$22;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$22;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2972
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z

    .line 2973
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2974
    return-void
.end method

.method public onSaveCompleted()V
    .locals 2

    .prologue
    .line 942
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$9;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 952
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 809
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "\t\t onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    .line 813
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 815
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    .line 816
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    .line 817
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 822
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 823
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 824
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    .end local v1           #headerCount:I
    :goto_0
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void

    .line 826
    .restart local v1       #headerCount:I
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 828
    .end local v1           #headerCount:I
    :catch_0
    move-exception v0

    .line 829
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 740
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 741
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 745
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->refreshFontSize()V

    .line 747
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "mms noti-cancel:sms rejected"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 751
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "mms noti-cancel:report"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 755
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 757
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v0, p0}, Lcom/samsung/mms/util/SaveRestoreOperation;->SetOnSaveCompleteListener(Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;)V

    .line 762
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 765
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 766
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->updateCmasExpiry(Landroid/content/Context;)V

    .line 770
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startFakeAsyncQuery()V

    .line 785
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 793
    :cond_2
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    if-nez v0, :cond_3

    .line 794
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 805
    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 867
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 868
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "\t onStop()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 872
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    if-eqz v1, :cond_0

    .line 874
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v1, v3}, Lcom/samsung/mms/util/SaveRestoreOperation;->SetOnSaveCompleteListener(Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;)V

    .line 882
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 884
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 885
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 889
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 891
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 2897
    const-string v0, "Mms/ConversationListFragment"

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

    .line 2898
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 8
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    const/4 v7, 0x1

    .line 2901
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSweepActionFired(),itemIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",flickDirection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 2905
    .local v2, list:Lcom/android/mms/ui/MsgSweepActionListView;
    const/4 v0, 0x0

    .line 2907
    .local v0, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 2909
    if-nez v0, :cond_0

    .line 2910
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2941
    :goto_0
    return-void

    .line 2913
    :catch_0
    move-exception v1

    .line 2914
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2915
    invoke-virtual {v2, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 2919
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    if-nez p2, :cond_2

    .line 2920
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getNumber(I)Ljava/lang/String;

    move-result-object v3

    .line 2922
    .local v3, number:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 2923
    invoke-virtual {v2, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 2925
    :cond_1
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSweepActionFired calling(),itemIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2929
    .end local v3           #number:Ljava/lang/String;
    :cond_2
    if-ne v7, p2, :cond_4

    .line 2931
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2932
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    iget v6, v0, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->openThread(JI)V

    .line 2937
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 2934
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    goto :goto_1

    .line 2939
    :cond_4
    invoke-virtual {v2, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 2977
    const-string v0, "Mms/ConversationListFragment"

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

    .line 2978
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 3727
    if-nez p1, :cond_1

    .line 3728
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportQwertKeypad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3729
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3737
    :cond_0
    :goto_0
    return-void

    .line 3734
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3735
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->hideSoftInputKeyboard()V

    goto :goto_0
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 3718
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 3719
    const/4 v0, 0x0

    .line 3723
    :goto_0
    return v0

    .line 3722
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 3723
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestFocusOnConversationList(J)Z
    .locals 3
    .parameter "threadId"

    .prologue
    .line 3706
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;

    move-result-object v0

    .line 3708
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 3709
    const/4 v1, 0x0

    .line 3713
    :goto_0
    return v1

    .line 3711
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 3713
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 4

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 656
    .local v0, autoDeleteEnabled:Z
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runOneTimeStorageLimitCheckForLegacyMessages(),autoDeleteEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    if-eqz v0, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :goto_0
    monitor-exit p0

    return-void

    .line 665
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$7;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 655
    .end local v0           #autoDeleteEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAnimationEnable(Z)V
    .locals 2
    .parameter "isAnimationEnable"

    .prologue
    .line 725
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    .line 727
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setAnimationEnable(Z)V

    .line 732
    :cond_1
    return-void
.end method

.method public setDeleteModeLayout(ZZZ)V
    .locals 8
    .parameter "isDeleteMode"
    .parameter "requestLayout"
    .parameter "startAnimation"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3030
    const-string v1, "Mms/ConversationListFragment"

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

    .line 3033
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 3035
    const/16 v0, 0x50

    .line 3036
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_2

    .line 3038
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3040
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 3042
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 3045
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 3046
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 3047
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    const-wide/16 v2, 0x12c

    new-instance v4, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v4}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v5, v7}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 3064
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3065
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3069
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 3101
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setDeleteMode(Z)V

    .line 3102
    if-eqz p2, :cond_0

    .line 3103
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 3106
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3107
    return-void

    .line 3054
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3071
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 3072
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->clearHasLockedMsg()V

    .line 3074
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v1, :cond_4

    .line 3075
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    const-wide/16 v2, 0x64

    new-instance v4, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v4}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v5}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v7, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 3085
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3091
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_3

    .line 3092
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3094
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 3095
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 3099
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 3082
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setDeleteModeLayoutForOnNewIntent(ZZZ)V
    .locals 7
    .parameter "isDeleteMode"
    .parameter "requestLayout"
    .parameter "startAnimation"

    .prologue
    const/4 v6, 0x0

    .line 3110
    const-string v1, "Mms/ConversationListFragment"

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

    .line 3112
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 3114
    const/16 v0, 0x50

    .line 3115
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_2

    .line 3116
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 3119
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 3120
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 3121
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    const-wide/16 v2, 0x12c

    new-instance v4, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v4}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 3132
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3138
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3142
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 3171
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setDeleteMode(Z)V

    .line 3172
    if-eqz p2, :cond_0

    .line 3173
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 3176
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3177
    return-void

    .line 3128
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3144
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 3145
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->clearHasLockedMsg()V

    .line 3147
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v1, :cond_3

    .line 3148
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    const-wide/16 v2, 0x64

    new-instance v4, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v4}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v5}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v6, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 3158
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3169
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 3155
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 3027
    return-void
.end method

.method public setMoveModeLayout(ZZZ)V
    .locals 8
    .parameter "isMoveMode"
    .parameter "requestLayout"
    .parameter "startAnimation"

    .prologue
    const-wide/16 v6, 0x190

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3181
    const-string v1, "Mms/ConversationListFragment"

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

    .line 3183
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    .line 3185
    const/16 v0, 0x50

    .line 3186
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_2

    .line 3187
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 3190
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 3191
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 3192
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v3, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 3203
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3209
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3213
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 3242
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setMoveMode(Z)V

    .line 3243
    if-eqz p2, :cond_0

    .line 3244
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 3247
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3248
    return-void

    .line 3199
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3215
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 3216
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->clearHasLockedMsg()V

    .line 3218
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v1, :cond_3

    .line 3219
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v5, v3}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 3229
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3235
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3237
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 3240
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 3226
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setSaveModeLayout(ZZZ)V
    .locals 8
    .parameter "isSaveMode"
    .parameter "requestLayout"
    .parameter "startAnimation"

    .prologue
    const-wide/16 v6, 0x190

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3274
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSaveModeLayout(),isSaveMode="

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

    .line 3276
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z

    .line 3278
    const/16 v0, 0x50

    .line 3279
    .local v0, heightOfTitle:I
    if-eqz p1, :cond_2

    .line 3280
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 3283
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 3284
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 3285
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v3, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 3295
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3300
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3303
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 3330
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setSaveMode(Z)V

    .line 3331
    if-eqz p2, :cond_0

    .line 3332
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 3334
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3335
    return-void

    .line 3292
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3305
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 3306
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->clearHasLockedMsg()V

    .line 3308
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z

    if-eqz v1, :cond_3

    .line 3309
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6, v7, v2, v5, v3}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 3319
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3324
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3326
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 3328
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 3316
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setSelectAll(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 3650
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3651
    return-void
.end method

.method public startSearchMenu()V
    .locals 4

    .prologue
    .line 1352
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->mIsSearchMode:Z

    if-eqz v0, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDelayForSearch:Z

    .line 1356
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$12;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$12;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateEmptyScreenForMultiWindow()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyViewVisibility()V

    .line 1004
    :cond_0
    return-void
.end method
