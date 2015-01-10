.class public Lcom/android/mms/ui/LockedMessageManager;
.super Landroid/app/Activity;
.source "LockedMessageManager.java"

# interfaces
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;,
        Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;,
        Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final DELETE_ALL_MESSAGE_TOKEN:I = 0x709

.field public static final DELETE_MESSAGE_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field public static final FLAG_UNLOCK_COMPLETE:I = 0xcb

.field public static final FLAG_UNLOCK_START:I = 0xca

.field public static final LIST_MODE_DELETE:I = 0x2

.field public static final LIST_MODE_NORMAL:I = 0x0

.field public static final LIST_MODE_UNLOCK:I = 0x1

.field private static final MENU_ATTACHMENT_LIST:I = 0xce

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0xcc

.field private static final MENU_COPY_MESSAGE_TO_SIM:I = 0xd0

.field public static final MENU_DELETE_ALL:I = 0xc9

.field public static final MENU_DELETE_CANCEL:I = 0xd4

.field private static final MENU_DELETE_MESSAGE:I = 0xcb

.field public static final MENU_DELETE_OK:I = 0xd3

.field private static final MENU_EDIT_MESSAGE:I = 0xcd

.field private static final MENU_FORWARD_MESSAGE:I = 0xcf

.field private static final MENU_RESEND_MESSAGE:I = 0xca

.field public static final MENU_UNLOCK_ALL:I = 0xc8

.field private static final MENU_UNLOCK_MESSAGE:I = 0xd2

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0xd1

.field private static final MESSAGE_LIST_ALL_QUERY_TOKEN:I = 0x6a5

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/LockedMsgStoreActivity"

.field public static final UNLOCK_MESSAGE_TOKEN:I = 0x70a

.field public static badge:Landroid/widget/QuickContactBadge;

.field private static mDeleteComplete:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarDeleteListCancelButton:Landroid/widget/TextView;

.field private mActionbarDeleteListDoneButton:Landroid/widget/TextView;

.field private mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

.field private mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

.field private final mContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

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

.field private mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private final mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectedPosition:I

.field private mTempMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;

.field mTotalConversations:Landroid/widget/TextView;

.field mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteComplete:Z

    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/LockedMessageManager;->badge:Landroid/widget/QuickContactBadge;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 146
    iput v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    .line 158
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 160
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 162
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 164
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    .line 167
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 168
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    .line 174
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J

    .line 176
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    iput-boolean v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    .line 183
    iput-boolean v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsDeleteMsgAnimating:Z

    .line 185
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 187
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 188
    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;

    .line 669
    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LockedMessageManager$4;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1589
    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LockedMessageManager$10;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    .line 1728
    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LockedMessageManager$11;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 1890
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/LockedMessageManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/LockedMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/LockedMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->updateEmptyViewVisibility(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/LockedMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/LockedMessageManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/LockedMessageManager;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/LockedMessageManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/LockedMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/LockedMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/LockedMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    sput-boolean p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteComplete:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/LockedMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->startViewer(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/LockedMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/LockedMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/LockedMessageManager;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/LockedMessageManager;->deleteMessage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/LockedMessageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/LockedMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/LockedMessageManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->unlockSelectedMessages()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->deleteSelectedMessages()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/LockedMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/animation/MsgListAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    return-object v0
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 1546
    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 2

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1356
    .local v0, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 1024
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1025
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1027
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1028
    if-eqz p2, :cond_0

    const v1, 0x7f0a009d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1030
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1031
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1032
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1033
    return-void

    .line 1028
    :cond_0
    const v1, 0x7f0a009c

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x0

    .line 1006
    const v4, 0x7f030029

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1007
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0e00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1008
    .local v2, checkbox:Landroid/widget/CheckBox;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1009
    const v4, 0x7f0e00e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1010
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 1012
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1013
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

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    const v4, 0x7f0a009a

    goto :goto_0
.end method

.method private deleteMessage(Landroid/net/Uri;Z)V
    .locals 7
    .parameter "uriMessage"
    .parameter "bLocked"

    .prologue
    const/4 v5, 0x0

    .line 945
    if-eqz p1, :cond_1

    .line 946
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    if-eqz p2, :cond_2

    move-object v4, v5

    :goto_0
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 952
    :cond_1
    return-void

    .line 949
    :cond_2
    const-string v4, "locked=0"

    goto :goto_0
.end method

.method private deleteSelectedMessages()V
    .locals 22

    .prologue
    .line 955
    const-string v18, "Mms/LockedMsgStoreActivity"

    const-string v19, "deleteSelectedMessages()"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const/4 v6, 0x0

    .line 957
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 958
    .local v13, idxMsgType:I
    const/4 v12, 0x1

    .line 959
    .local v12, idxMsgId:I
    const/16 v11, 0x14

    .line 961
    .local v11, idxLockedMsg:I
    const/4 v14, 0x0

    .line 962
    .local v14, locked:Z
    const-wide/16 v15, 0x0

    .line 963
    .local v15, msgId:J
    const-string v17, "sms"

    .line 964
    .local v17, msgType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 965
    .local v4, checked:Z
    const/4 v9, 0x0

    .line 967
    .local v9, hasLockedMessage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v5

    .line 968
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cursor:Landroid/database/Cursor;
    check-cast v6, Landroid/database/Cursor;

    .line 970
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 968
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 973
    :cond_1
    const/4 v13, 0x0

    .line 974
    const/4 v12, 0x1

    .line 975
    const/16 v11, 0x14

    .line 977
    :try_start_0
    const-string v18, "transport_type"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 978
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 979
    const-string v18, "locked"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 983
    :goto_1
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 984
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 985
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_4

    const/4 v14, 0x1

    .line 987
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide v1, v15

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v4

    .line 989
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    if-eqz v4, :cond_0

    .line 990
    const/4 v9, 0x1

    .line 994
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/DialogInterface;->dismiss()V

    .line 996
    :cond_3
    new-instance v19, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/LockedMessageManager;Landroid/net/Uri;Z)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCheckedCount()I

    move-result v18

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const v18, 0x7f0a009c

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v18

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/mms/ui/LockedMessageManager;->confirmDeleteMessageDialog(Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v7

    .line 1000
    .local v7, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 1001
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 1002
    return-void

    .line 980
    .end local v7           #dlg:Landroid/app/AlertDialog;
    :catch_0
    move-exception v8

    .line 981
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "colsMap"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 985
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 996
    :cond_5
    const v18, 0x7f0a01d7

    goto :goto_3
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 836
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 837
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 838
    return-void
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 11
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 591
    const/4 v1, 0x0

    .line 593
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 594
    .local v4, itemObject:Ljava/lang/Object;
    instance-of v7, v4, Landroid/database/Cursor;

    if-nez v7, :cond_1

    .line 612
    .end local v4           #itemObject:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v6

    .line 596
    .restart local v4       #itemObject:Ljava/lang/Object;
    :cond_1
    move-object v0, v4

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 598
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 602
    iget-object v7, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/LockedMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 603
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v5, :cond_0

    .line 605
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 607
    iget-object v6, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v4           #itemObject:Ljava/lang/Object;
    .end local v5           #msgItem:Lcom/android/mms/ui/MessageItem;
    :goto_1
    move-object v6, v1

    .line 612
    goto :goto_0

    .line 609
    :catch_0
    move-exception v3

    .line 610
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1109
    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LockedMessageManager$5;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    .prologue
    .line 827
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "message"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1151
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1155
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 1169
    if-nez p1, :cond_0

    .line 1170
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1173
    :goto_0
    return-object v0

    .line 1172
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, str:Ljava/lang/String;
    goto :goto_0
.end method

.method private initEtc()V
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$3;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/animation/MsgListAnimation;->setLayout(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 576
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 578
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    .line 579
    return-void
.end method

.method private initListAdapter()V
    .locals 3

    .prologue
    .line 491
    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    if-eqz v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 497
    :cond_0
    new-instance v0, Lcom/android/mms/ui/LockedMessageListAdapter;

    const/4 v1, 0x0

    const v2, 0x7f030048

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    .line 498
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mContentChangedListener:Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;)V

    .line 499
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initListAnimation()V
    .locals 2

    .prologue
    .line 504
    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 505
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$2;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    .line 529
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    .line 530
    return-void
.end method

.method private initResourceRefs()V
    .locals 7

    .prologue
    const v6, 0x7f0a0125

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 463
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 464
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 465
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030022

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    .line 466
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e00cd

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversations:Landroid/widget/TextView;

    .line 467
    const v2, 0x7f0e00df

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    .line 468
    const v2, 0x7f0e00e0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 469
    const v2, 0x7f0e003c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    .line 470
    const v2, 0x7f0e003d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    .line 471
    const v2, 0x7f0e0043

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    .line 472
    const v2, 0x7f0e0048

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    .line 474
    const v2, 0x7f0e003f

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    const v2, 0x7f0e0046

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    const v2, 0x7f0e0047

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    const v2, 0x7f0e0040

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 478
    .local v1, temp:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 479
    const v2, 0x7f0e004b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 481
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 483
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v3, 0x7f0a000d

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 486
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 487
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 488
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 584
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    const/4 v0, 0x0

    .line 587
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 1186
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 1187
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1188
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 1189
    iput-wide v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J

    .line 1190
    const/4 v2, 0x1

    .line 1193
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
    .line 1430
    const/4 v2, 0x0

    .line 1433
    .local v2, isMultiWindowMode:Z
    :try_start_0
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    .line 1434
    .local v0, MW:Landroid/sec/multiwindow/MultiWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1435
    const/4 v2, 0x1

    .line 1443
    .end local v0           #MW:Landroid/sec/multiwindow/MultiWindow;
    :goto_0
    return v2

    .line 1437
    .restart local v0       #MW:Landroid/sec/multiwindow/MultiWindow;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1439
    .end local v0           #MW:Landroid/sec/multiwindow/MultiWindow;
    :catch_0
    move-exception v1

    .line 1440
    .local v1, e:Ljava/lang/NoClassDefFoundError;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadToDeleteMode(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 814
    const-string v0, "MessageListMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    .line 815
    return-void
.end method

.method private openThread(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 783
    const-string v4, "Mms/LockedMsgStoreActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openThread startActivity for position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v4

    if-lez v4, :cond_0

    .line 806
    :goto_0
    return-void

    .line 787
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 788
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const-string v5, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 791
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_1

    .line 792
    const-string v4, "Mms/LockedMsgStoreActivity"

    const-string v5, "openThread can\'t find conversation"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 796
    .local v2, threadId:J
    invoke-static {v2, v3}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 799
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 802
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 803
    const-string v4, "Mms/LockedMsgStoreActivity"

    const-string v5, "openThread startActivity()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->drawMessagePointer(I)V

    goto :goto_0
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    .prologue
    .line 1447
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1448
    .local v0, RangeModeFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1450
    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$8;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1462
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/LockedMessageManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1463
    const/4 v1, 0x1

    return v1
.end method

.method private removeDeleteModeListActionbar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1325
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1327
    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1331
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1332
    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 1335
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1336
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1337
    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 1339
    :cond_2
    return-void
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 1204
    :goto_0
    return-void

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 809
    const-string v0, "MessageListMode"

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 831
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 832
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 833
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 1178
    const v1, 0x7f0a0125

    const v2, 0x7f0b0003

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/LockedMessageManager;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    const-string v1, "Mms/LockedMsgStoreActivity"

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

    .line 1183
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1565
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryInternal(Z)V

    .line 1566
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1556
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$9;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1561
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 11
    .parameter "isFake"

    .prologue
    .line 1570
    :try_start_0
    const-string v7, "normalized_date DESC"

    .line 1571
    .local v7, sOrderBySQL:Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "complete-conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1572
    .local v3, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1574
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "(locked=1) AND (hidden=0)"

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
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1578
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v7       #sOrderBySQL:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1579
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "(locked=1) AND (hidden=0)"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1583
    .end local v3           #uri:Landroid/net/Uri;
    .end local v7           #sOrderBySQL:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1584
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1551
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->beforeQuery()V

    .line 1552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQueryInternal(Z)V

    .line 1553
    return-void
.end method

.method private startViewer(I)V
    .locals 14
    .parameter "position"

    .prologue
    const/16 v5, 0x82

    const/4 v4, 0x0

    const/4 v13, 0x1

    .line 1036
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    .line 1037
    .local v7, itemObject:Ljava/lang/Object;
    instance-of v0, v7, Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v7

    .line 1039
    check-cast v1, Landroid/database/Cursor;

    .line 1040
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/LockedMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 1044
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 1046
    const/4 v6, 0x0

    .line 1047
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    .line 1048
    .local v9, msgId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v11

    .line 1050
    .local v11, threadId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1051
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1052
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1053
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1054
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1055
    const-string v0, "requestLockedMessageView"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1056
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/LockedMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 1082
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v5, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    iget v2, v3, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v8

    .line 1086
    .local v8, messageDetails:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a00a4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1089
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1059
    .end local v8           #messageDetails:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v0, v5, :cond_2

    .line 1061
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGalleryView4SingleImageMMSType()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    if-ne v0, v2, :cond_7

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v13, :cond_7

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

    .line 1066
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V

    goto :goto_1

    .line 1069
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1070
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1074
    .restart local v6       #intent:Landroid/content/Intent;
    :goto_2
    const/high16 v0, 0x2000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1075
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1076
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1077
    const-string v0, "requestLockedMessageView"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1078
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/LockedMessageManager;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1072
    :cond_8
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v6       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method private unlockSelectedMessages()V
    .locals 28

    .prologue
    .line 852
    const-string v3, "Mms/LockedMsgStoreActivity"

    const-string v4, "unlockSelectedMessages()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v10, arrayUnlockUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/16 v22, 0x0

    .line 865
    .local v22, sizeCheckedMsg:I
    const/16 v25, 0x0

    .line 867
    .local v25, unlockCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 868
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 869
    const/4 v11, 0x0

    .line 870
    .local v11, checked:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCheckedCount()I

    move-result v22

    .line 871
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v23

    .line 872
    .local v23, sizeCursor:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move/from16 v0, v23

    if-ge v14, v0, :cond_4

    .line 873
    const/16 v17, 0x0

    .line 874
    .local v17, idxMsgType:I
    const/16 v16, 0x1

    .line 875
    .local v16, idxMsgId:I
    const/16 v15, 0x15

    .line 878
    .local v15, idxGroupId:I
    :try_start_0
    const-string v3, "transport_type"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 882
    :goto_1
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 885
    .local v24, szMessageType:Ljava/lang/String;
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    .line 889
    :goto_2
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 892
    .local v20, lMessageId:J
    :try_start_2
    const-string v3, "group_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v15

    .line 896
    :goto_3
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 898
    .local v18, lMessageGroupId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    move-wide/from16 v0, v20

    move-object/from16 v2, v24

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v11

    .line 900
    if-nez v11, :cond_0

    .line 901
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 872
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 879
    .end local v18           #lMessageGroupId:J
    .end local v20           #lMessageId:J
    .end local v24           #szMessageType:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 880
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 886
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v24       #szMessageType:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 887
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 893
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v20       #lMessageId:J
    :catch_2
    move-exception v13

    .line 894
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 905
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v18       #lMessageGroupId:J
    :cond_0
    add-int/lit8 v25, v25, 0x1

    .line 906
    const-string v3, "mms"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 907
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 919
    .local v6, unlockUri:Landroid/net/Uri;
    :goto_5
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 908
    .end local v6           #unlockUri:Landroid/net/Uri;
    :cond_1
    const-string v3, "wpm"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 909
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #unlockUri:Landroid/net/Uri;
    goto :goto_5

    .line 912
    .end local v6           #unlockUri:Landroid/net/Uri;
    :cond_2
    cmp-long v3, v20, v18

    if-nez v3, :cond_3

    .line 913
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #unlockUri:Landroid/net/Uri;
    goto :goto_5

    .line 916
    .end local v6           #unlockUri:Landroid/net/Uri;
    :cond_3
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .restart local v6       #unlockUri:Landroid/net/Uri;
    goto :goto_5

    .line 924
    .end local v6           #unlockUri:Landroid/net/Uri;
    .end local v11           #checked:Z
    .end local v14           #i:I
    .end local v15           #idxGroupId:I
    .end local v16           #idxMsgId:I
    .end local v17           #idxMsgType:I
    .end local v18           #lMessageGroupId:J
    .end local v20           #lMessageId:J
    .end local v23           #sizeCursor:I
    .end local v24           #szMessageType:Ljava/lang/String;
    :cond_4
    if-nez v25, :cond_5

    .line 925
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    .line 942
    :goto_6
    return-void

    .line 927
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_6

    .line 928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 930
    :cond_6
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 931
    .local v7, values:Landroid/content/ContentValues;
    const-string v3, "locked"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 932
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_7
    move/from16 v0, v25

    if-ge v14, v0, :cond_9

    .line 933
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 934
    .restart local v6       #unlockUri:Landroid/net/Uri;
    if-eqz v6, :cond_7

    .line 935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    const/16 v4, 0x70a

    new-instance v5, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v26, 0x0

    add-int/lit8 v8, v25, -0x1

    if-ne v14, v8, :cond_8

    const/4 v8, 0x1

    :goto_8
    move-wide/from16 v0, v26

    invoke-direct {v5, v0, v1, v8}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 932
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 935
    :cond_8
    const/4 v8, 0x0

    goto :goto_8

    .line 939
    .end local v6           #unlockUri:Landroid/net/Uri;
    :cond_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_6
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    .prologue
    .line 1468
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1469
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1471
    :catch_0
    move-exception v0

    .line 1472
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/LockedMsgStoreActivity"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateActionBarText()V
    .locals 0

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->updateCheckedMsgCount()V

    .line 1282
    return-void
.end method

.method private updateCheckedMsgCount()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1218
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1249
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1251
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1252
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1255
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1258
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    .line 1259
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1260
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1264
    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_7

    .line 1265
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1270
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1271
    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_8

    .line 1272
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1262
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1267
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 1274
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

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

    .line 1496
    const-string v2, "Mms/LockedMsgStoreActivity"

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

    .line 1497
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 1498
    .local v0, listView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v8, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    .line 1500
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    .line 1501
    .local v1, nListMode:I
    if-ne v1, v3, :cond_2

    .line 1502
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1503
    if-nez p1, :cond_1

    .line 1506
    invoke-virtual {p0, v4, v3, v4}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    .line 1543
    :goto_1
    return-void

    .end local v1           #nListMode:I
    :cond_0
    move v2, v4

    .line 1498
    goto :goto_0

    .line 1509
    .restart local v1       #nListMode:I
    :cond_1
    invoke-virtual {p0, v3, v3, v4}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1512
    :cond_2
    if-ne v1, v8, :cond_5

    .line 1513
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1514
    if-nez p1, :cond_4

    .line 1515
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_3

    .line 1516
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 1517
    :cond_3
    invoke-virtual {p0, v4, v3, v4}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1520
    :cond_4
    invoke-virtual {p0, v8, v3, v4}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1524
    :cond_5
    if-nez p1, :cond_7

    .line 1525
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1526
    iget-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->updateEmptyViewVisibility(Z)V

    .line 1531
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1532
    if-eqz p2, :cond_6

    .line 1533
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1541
    :cond_6
    :goto_2
    invoke-virtual {p0, v4, v3, v4}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1535
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1536
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1537
    if-eqz p2, :cond_6

    .line 1538
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateEmptyViewVisibility(Z)V
    .locals 4
    .parameter "isLandscape"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1480
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->isMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1482
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1483
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1493
    :goto_0
    return-void

    .line 1484
    :cond_0
    if-eqz p1, :cond_1

    .line 1485
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1486
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1487
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1491
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public drawMessagePointer(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 773
    const-string v0, "Mms/LockedMsgStoreActivity"

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

    .line 775
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->setListItemSelected(J)V

    .line 780
    return-void
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    return v0
.end method

.method getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 616
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/LockedMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-object v0

    .line 620
    :cond_1
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 621
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    const/4 v10, 0x0

    .line 623
    .local v10, objMsgItem:Lcom/android/mms/ui/MessageItem;
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 624
    .local v9, idxMsgType:I
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, szMsgType:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .local v0, objMsgItem:Lcom/android/mms/ui/MessageItem;
    goto :goto_0

    .line 626
    .end local v0           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #szMsgType:Ljava/lang/String;
    .end local v9           #idxMsgType:I
    .restart local v10       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    .line 627
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/LockedMsgStoreActivity"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .end local v10           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 8
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 634
    const-string v5, "Mms/LockedMsgStoreActivity"

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

    .line 635
    const/4 v1, 0x0

    .line 637
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 638
    if-nez v1, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-object v4

    .line 641
    :catch_0
    move-exception v2

    .line 642
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 645
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 648
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, numbers:[Ljava/lang/String;
    array-length v5, v3

    if-eqz v5, :cond_0

    .line 656
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 657
    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 659
    .end local v3           #numbers:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 660
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1164
    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "hide progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2011
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getNumber(I)Ljava/lang/String;

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
    .line 2016
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->isMessageIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMessageIndex(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 841
    if-gez p1, :cond_1

    .line 848
    :cond_0
    :goto_0
    return v3

    .line 844
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 845
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 846
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 848
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

    .line 448
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 450
    const-string v1, "Mms/LockedMsgStoreActivity"

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

    .line 451
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    .line 453
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 454
    iget-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->updateEmptyViewVisibility(Z)V

    .line 460
    :cond_0
    :goto_1
    return-void

    .line 451
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v0

    .line 457
    .local v0, nListMode:I
    if-eq v0, v2, :cond_3

    if-ne v0, v5, :cond_0

    .line 458
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->updateDeleteModeListActionBar(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    .line 196
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->setContentView(I)V

    .line 204
    new-instance v0, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/LockedMessageManager;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mQueryHandler:Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageManager$MessageListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 206
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initResourceRefs()V

    .line 208
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initListAdapter()V

    .line 210
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initListAnimation()V

    .line 212
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->initEtc()V

    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/LockedMessageManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/LockedMessageManager$1;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->registerMultiWindowBroadcastReciver()Z

    .line 225
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "aaa"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 266
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->removeDeleteModeListActionbar()V

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 276
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->unregisterMultiWindowBroadcastReciver()Z

    .line 280
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    .line 281
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    .line 283
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->hideProgressDialog()V

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 286
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 437
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_0

    .line 439
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    .line 443
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
    .line 313
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->startAsyncQuery()V

    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 315
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 360
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 396
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 362
    :sswitch_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 366
    :sswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 370
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_1

    .line 371
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->finish()V

    goto :goto_0

    .line 379
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 380
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->unlockSelectedMessages()V

    goto :goto_0

    .line 382
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->deleteSelectedMessages()V

    goto :goto_0

    .line 387
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_3

    .line 388
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    goto :goto_0

    .line 391
    :cond_3
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/LockedMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 360
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xd3 -> :sswitch_3
        0xd4 -> :sswitch_4
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 251
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/16 v4, 0xd3

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 319
    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 324
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v0

    if-lez v0, :cond_4

    .line 325
    const/16 v0, 0xd4

    const v1, 0x7f0a01e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 328
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 329
    const v0, 0x7f0a00a2

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 336
    iget-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 338
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 355
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 331
    :cond_2
    const v0, 0x7f0a006a

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_0

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 347
    const/16 v0, 0xc8

    const v1, 0x7f0a00bd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 349
    const/16 v0, 0xc9

    const v1, 0x7f0a00bb

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
    .line 1140
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1144
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1133
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1134
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1137
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 243
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v0

    .line 244
    .local v0, isAnimationEnable:Z
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/LockedMessageManager;->setAnimationEnable(Z)V

    .line 245
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 290
    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "\t\t onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->saveListOffset()V

    .line 293
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 294
    iget-boolean v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    .line 296
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 299
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1           #headerCount:I
    :goto_0
    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    return-void

    .line 302
    .restart local v1       #headerCount:I
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 304
    .end local v1           #headerCount:I
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageListAdapter;->refreshFontSize()V

    .line 231
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->startFakeAsyncQuery()V

    .line 233
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 236
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 237
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 259
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 406
    const-string v0, "Mms/LockedMsgStoreActivity"

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

    .line 407
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    const/4 v5, 0x1

    .line 411
    const-string v2, "Mms/LockedMsgStoreActivity"

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

    .line 414
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 416
    .local v0, list:Lcom/android/mms/ui/MsgSweepActionListView;
    if-nez p2, :cond_1

    .line 417
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 420
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 432
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 422
    .restart local v1       #number:Ljava/lang/String;
    :cond_0
    const-string v2, "Mms/LockedMsgStoreActivity"

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

    .line 424
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    if-ne v5, p2, :cond_2

    .line 427
    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->openThread(I)V

    .line 428
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 401
    const-string v0, "Mms/LockedMsgStoreActivity"

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

    .line 402
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 1
    .parameter "isAnimationEnable"

    .prologue
    .line 1094
    iput-boolean p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    .line 1096
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    .line 1099
    :cond_0
    return-void
.end method

.method public setCurrentListMode(I)I
    .locals 1
    .parameter "listmode"

    .prologue
    .line 822
    iput p1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    .line 823
    iget v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListMode:I

    return v0
.end method

.method public setListModeLayout(IZZ)V
    .locals 10
    .parameter "nListMode"
    .parameter "requestLayout"
    .parameter "startAnimation"

    .prologue
    const-wide/16 v8, 0x190

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1360
    const-string v1, "Mms/LockedMsgStoreActivity"

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

    .line 1363
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->setCurrentListMode(I)I

    .line 1365
    const/16 v0, 0x50

    .line 1366
    .local v0, heightOfTitle:I
    if-lez p1, :cond_3

    .line 1367
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 1369
    iget-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 1370
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 1371
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v8, v9, v2, v3, v6}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 1381
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1383
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/LockedMessageManager;->updateDeleteModeListActionBar(I)V

    .line 1385
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 1386
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1387
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1388
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1389
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1392
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1420
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/LockedMessageListAdapter;->setMessageListMode(I)V

    .line 1421
    if-eqz p2, :cond_1

    .line 1422
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1425
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->invalidateOptionsMenu()V

    .line 1426
    return-void

    .line 1378
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1394
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->clearCheckedList()V

    .line 1396
    iget-boolean v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    .line 1397
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v8, v9, v2, v6, v3}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 1407
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1409
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->removeDeleteModeListActionbar()V

    .line 1411
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    .line 1412
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1413
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1414
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1415
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->updateNormalModeListActionBar()V

    .line 1418
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/LockedMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 1404
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 1102
    const-string v0, "Mms/LockedMsgStoreActivity"

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

    .line 1103
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1104
    return-void
.end method

.method public updateDeleteModeListActionBar(I)V
    .locals 4
    .parameter "nListMode"

    .prologue
    const/4 v3, 0x0

    .line 1285
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 1286
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 1287
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 1288
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 1289
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    .line 1291
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1293
    .local v0, title:Landroid/widget/TextView;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1294
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1300
    .end local v0           #title:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/mms/ui/LockedMessageManager$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/LockedMessageManager$6;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1309
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/mms/ui/LockedMessageManager$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/LockedMessageManager$7;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1321
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/LockedMessageManager;->updateActionBarText()V

    .line 1322
    return-void

    .line 1295
    .restart local v0       #title:Landroid/widget/TextView;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1296
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateNormalModeListActionBar()V
    .locals 3

    .prologue
    const v2, 0x7f0a03d3

    .line 1207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1208
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1209
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1211
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1215
    :goto_0
    return-void

    .line 1213
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LockedMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
