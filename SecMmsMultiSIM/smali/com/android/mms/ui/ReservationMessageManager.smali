.class public Lcom/android/mms/ui/ReservationMessageManager;
.super Landroid/app/Activity;
.source "ReservationMessageManager.java"

# interfaces
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;,
        Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;,
        Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;,
        Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final DELETE_ALL_MESSAGE_TOKEN:I = 0x709

.field public static final DELETE_MESSAGE_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field public static final LIST_MODE_DELETE:I = 0x1

.field public static final LIST_MODE_NORMAL:I = 0x0

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0xcb

.field public static final MENU_DELETE_ALL:I = 0xc8

.field public static final MENU_DELETE_CANCEL:I = 0xd3

.field private static final MENU_DELETE_MESSAGE:I = 0xca

.field public static final MENU_DELETE_OK:I = 0xd2

.field private static final MENU_EDIT_MESSAGE:I = 0xce

.field private static final MENU_FORWARD_MESSAGE:I = 0xcf

.field private static final MENU_LOCK_MESSAGE:I = 0xcd

.field private static final MENU_SEND_NOW:I = 0xc9

.field private static final MENU_UNLOCK_MESSAGE:I = 0xcc

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0xd0

.field private static final MESSAGE_LIST_ALL_QUERY_TOKEN:I = 0x6a5

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/ReservationMessageManager"

.field public static badge:Landroid/widget/QuickContactBadge;

.field public static isVoLTEEnabled:Z

.field private static mDeleteComplete:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarDeleteListCancelButton:Landroid/widget/TextView;

.field private mActionbarDeleteListDoneButton:Landroid/widget/TextView;

.field private mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

.field private mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

.field private final mContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

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

.field private mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private final mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

.field public mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectedPosition:I

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field protected mSendNowConfirmDialog:Landroid/content/DialogInterface;

.field private mSendNowLocked:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field mTotalConversations:Landroid/widget/TextView;

.field mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    sput-boolean v0, Lcom/android/mms/ui/ReservationMessageManager;->isVoLTEEnabled:Z

    .line 162
    sput-boolean v0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteComplete:Z

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ReservationMessageManager;->badge:Landroid/widget/QuickContactBadge;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 161
    iput v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

    .line 167
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 168
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 169
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 170
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    .line 172
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 173
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    .line 175
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J

    .line 178
    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    .line 182
    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsDeleteMsgAnimating:Z

    .line 185
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;

    .line 186
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;

    .line 187
    iput-wide v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J

    .line 188
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;

    .line 189
    iput-wide v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J

    .line 190
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;

    .line 191
    iput-boolean v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z

    .line 193
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 648
    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ReservationMessageManager$3;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1427
    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ReservationMessageManager$10;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    .line 1549
    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ReservationMessageManager$11;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 1925
    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/ReservationMessageManager$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ReservationMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->updateEmptyViewVisibility(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ReservationMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ReservationMessageManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ReservationMessageManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ReservationMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ReservationMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    sput-boolean p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteComplete:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ReservationMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->startViewer(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->confirmSendDialog(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ReservationMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ReservationMessageManager;->deleteMessage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ReservationMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ReservationMessageManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ReservationMessageManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/android/mms/ui/ReservationMessageManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ReservationMessageManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/mms/ui/ReservationMessageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ReservationMessageManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/android/mms/ui/ReservationMessageManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/mms/ui/ReservationMessageManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->deleteSelectedMessages()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ReservationMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/animation/MsgListAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    return-object v0
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 1384
    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 2

    .prologue
    .line 1195
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1210
    .local v0, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 882
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 883
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a017a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 885
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 886
    if-eqz p2, :cond_0

    const v1, 0x7f0a049c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 888
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 889
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 890
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 891
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/ui/ReservationMessageManager$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ReservationMessageManager$4;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 896
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 897
    return-void

    .line 886
    :cond_0
    const v1, 0x7f0a049b

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x0

    .line 866
    const v4, 0x7f030029

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 867
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0e00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 868
    .local v2, checkbox:Landroid/widget/CheckBox;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 869
    const v4, 0x7f0e00e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 870
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 872
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 873
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a017a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

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
.end method

.method private confirmSendDialog(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;)V
    .locals 3
    .parameter "msgItem"
    .parameter "address"

    .prologue
    .line 1714
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0177

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a03db

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a006a

    new-instance v2, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ReservationMessageManager$SendNowListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSendNowConfirmDialog:Landroid/content/DialogInterface;

    .line 1722
    return-void
.end method

.method private deleteMessage(Landroid/net/Uri;Z)V
    .locals 7
    .parameter "uriMessage"
    .parameter "bLocked"

    .prologue
    const/4 v5, 0x0

    .line 804
    if-eqz p1, :cond_1

    .line 805
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    if-eqz p2, :cond_2

    move-object v4, v5

    :goto_0
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 811
    :cond_1
    return-void

    .line 808
    :cond_2
    const-string v4, "locked=0"

    goto :goto_0
.end method

.method private deleteSelectedMessages()V
    .locals 22

    .prologue
    .line 814
    const-string v18, "Mms/ReservationMessageManager"

    const-string v19, "deleteSelectedMessages()"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const/4 v6, 0x0

    .line 816
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 817
    .local v13, idxMsgType:I
    const/4 v12, 0x1

    .line 818
    .local v12, idxMsgId:I
    const/16 v11, 0x14

    .line 820
    .local v11, idxLockedMsg:I
    const/4 v14, 0x0

    .line 821
    .local v14, locked:Z
    const-wide/16 v15, 0x0

    .line 822
    .local v15, msgId:J
    const-string v17, "sms"

    .line 823
    .local v17, msgType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 824
    .local v4, checked:Z
    const/4 v9, 0x0

    .line 826
    .local v9, hasLockedMessage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v5

    .line 827
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cursor:Landroid/database/Cursor;
    check-cast v6, Landroid/database/Cursor;

    .line 829
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 827
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 832
    :cond_1
    const/4 v13, 0x0

    .line 833
    const/4 v12, 0x1

    .line 834
    const/16 v11, 0x14

    .line 836
    :try_start_0
    const-string v18, "transport_type"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 837
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 838
    const-string v18, "locked"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 842
    :goto_1
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 843
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 844
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_4

    const/4 v14, 0x1

    .line 846
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide v1, v15

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/ReservationMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v4

    .line 848
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    if-eqz v4, :cond_0

    .line 849
    const/4 v9, 0x1

    .line 854
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/DialogInterface;->dismiss()V

    .line 856
    :cond_3
    new-instance v19, Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Landroid/net/Uri;Z)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCheckedCount()I

    move-result v18

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const v18, 0x7f0a049b

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v18

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/mms/ui/ReservationMessageManager;->confirmDeleteMessageDialog(Lcom/android/mms/ui/ReservationMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v7

    .line 860
    .local v7, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 861
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 862
    return-void

    .line 839
    .end local v7           #dlg:Landroid/app/AlertDialog;
    :catch_0
    move-exception v8

    .line 840
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "colsMap"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 844
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 856
    :cond_5
    const v18, 0x7f0a049b

    goto :goto_3
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 788
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 789
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 790
    return-void
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 11
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 570
    const/4 v1, 0x0

    .line 572
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 573
    .local v4, itemObject:Ljava/lang/Object;
    instance-of v7, v4, Landroid/database/Cursor;

    if-nez v7, :cond_1

    .line 591
    .end local v4           #itemObject:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v6

    .line 575
    .restart local v4       #itemObject:Ljava/lang/Object;
    :cond_1
    move-object v0, v4

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 577
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 581
    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/ReservationMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 582
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v5, :cond_0

    .line 584
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 586
    iget-object v6, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

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

    .line 591
    goto :goto_0

    .line 588
    :catch_0
    move-exception v3

    .line 589
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 4
    .parameter "msgItem"

    .prologue
    const/4 v0, 0x0

    .line 710
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-object v0

    .line 716
    :cond_1
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 717
    .local v1, textModel:Lcom/android/mms/model/TextModel;
    if-eqz v1, :cond_0

    .line 721
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, result:Ljava/lang/String;
    goto :goto_0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 972
    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ReservationMessageManager$5;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    .prologue
    .line 779
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "message"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1008
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1012
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 1026
    if-nez p1, :cond_0

    .line 1027
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1030
    :goto_0
    return-object v0

    .line 1029
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, str:Ljava/lang/String;
    goto :goto_0
.end method

.method private initEtc()V
    .locals 4

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$2;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/animation/MsgListAnimation;->setLayout(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 555
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 557
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    .line 558
    return-void
.end method

.method private initListAdapter()V
    .locals 3

    .prologue
    .line 470
    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    if-eqz v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 476
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ReservationMessageListAdapter;

    const/4 v1, 0x0

    const v2, 0x7f030048

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;)V

    .line 478
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initListAnimation()V
    .locals 2

    .prologue
    .line 483
    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 484
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$1;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    .line 508
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    .line 509
    return-void
.end method

.method private initResourceRefs()V
    .locals 7

    .prologue
    const v6, 0x7f0a0344

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 442
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 443
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 444
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030022

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    .line 445
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e00cd

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    .line 446
    const v2, 0x7f0e00df

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    .line 447
    const v2, 0x7f0e00e0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 448
    const v2, 0x7f0e003c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    .line 449
    const v2, 0x7f0e003d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    .line 450
    const v2, 0x7f0e0043

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    .line 451
    const v2, 0x7f0e0048

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    .line 453
    const v2, 0x7f0e003f

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const v2, 0x7f0e0046

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    const v2, 0x7f0e0047

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 456
    const v2, 0x7f0e0040

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 457
    .local v1, temp:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 458
    const v2, 0x7f0e004b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 460
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 462
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v3, 0x7f0a000d

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 465
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 466
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 467
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 563
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    :cond_0
    const/4 v0, 0x0

    .line 566
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 1043
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 1044
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1045
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 1046
    iput-wide v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J

    .line 1047
    const/4 v2, 0x1

    .line 1050
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
    .line 1285
    const/4 v2, 0x0

    .line 1288
    .local v2, isMultiWindowMode:Z
    :try_start_0
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v0

    .line 1289
    .local v0, MW:Landroid/sec/multiwindow/MultiWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1290
    const/4 v2, 0x1

    .line 1298
    .end local v0           #MW:Landroid/sec/multiwindow/MultiWindow;
    :goto_0
    return v2

    .line 1292
    .restart local v0       #MW:Landroid/sec/multiwindow/MultiWindow;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1294
    .end local v0           #MW:Landroid/sec/multiwindow/MultiWindow;
    :catch_0
    move-exception v1

    .line 1295
    .local v1, e:Ljava/lang/NoClassDefFoundError;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadToDeleteMode(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 766
    const-string v0, "MessageListMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

    .line 767
    return-void
.end method

.method private openThread(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 736
    const-string v5, "Mms/ReservationMessageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openThread startActivity for position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v5

    if-lez v5, :cond_0

    .line 758
    :goto_0
    return-void

    .line 740
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 741
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 744
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_1

    .line 745
    const-string v5, "smsto:12345"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 746
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 752
    .end local v1           #data:Landroid/net/Uri;
    :goto_1
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 755
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 757
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->drawMessagePointer(I)V

    goto :goto_0

    .line 748
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    .line 749
    .local v3, threadId:J
    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private registerMultiWindowBroadcastReciver()Z
    .locals 2

    .prologue
    .line 1302
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1303
    .local v0, RangeModeFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1305
    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$8;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1317
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ReservationMessageManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1318
    const/4 v1, 0x1

    return v1
.end method

.method private removeDeleteModeListActionbar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1178
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1180
    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1190
    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 1192
    :cond_2
    return-void
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 761
    const-string v0, "MessageListMode"

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 763
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 783
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 784
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 785
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 1035
    const v1, 0x7f0a0344

    const v2, 0x7f0b0003

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/ReservationMessageManager;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    const-string v1, "Mms/ReservationMessageManager"

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

    .line 1040
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1403
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryInternal(Z)V

    .line 1404
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1394
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ReservationMessageManager$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ReservationMessageManager$9;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1399
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 11
    .parameter "isFake"

    .prologue
    .line 1408
    :try_start_0
    const-string v7, "normalized_date DESC"

    .line 1409
    .local v7, sOrderBySQL:Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "complete-conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1410
    .local v3, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1412
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1"

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
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1416
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v7       #sOrderBySQL:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1417
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "reserved=1"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1421
    .end local v3           #uri:Landroid/net/Uri;
    .end local v7           #sOrderBySQL:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1422
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1389
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->beforeQuery()V

    .line 1390
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQueryInternal(Z)V

    .line 1391
    return-void
.end method

.method private startViewer(I)V
    .locals 14
    .parameter "position"

    .prologue
    const/16 v5, 0x82

    const/4 v4, 0x0

    const/4 v13, 0x1

    .line 900
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    .line 901
    .local v7, itemObject:Ljava/lang/Object;
    instance-of v0, v7, Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 954
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v7

    .line 903
    check-cast v1, Landroid/database/Cursor;

    .line 904
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 908
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 910
    const/4 v6, 0x0

    .line 911
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v9

    .line 912
    .local v9, msgId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v11

    .line 914
    .local v11, threadId:J
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 915
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsViewer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 917
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 918
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 919
    const-string v0, "requestReservedMessageView"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 920
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ReservationMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 946
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v5, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    iget v2, v3, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v8

    .line 950
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

    goto :goto_0

    .line 923
    .end local v8           #messageDetails:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v0, v5, :cond_2

    .line 925
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

    .line 930
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V

    goto :goto_1

    .line 933
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 934
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 938
    .restart local v6       #intent:Landroid/content/Intent;
    :goto_2
    const/high16 v0, 0x2000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 939
    const-string v0, "msgId"

    invoke-virtual {v6, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 940
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 941
    const-string v0, "requestReservedMessageView"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 942
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ReservationMessageManager;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 936
    :cond_8
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v6       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    .prologue
    .line 1323
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1326
    :catch_0
    move-exception v0

    .line 1327
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/ReservationMessageManager"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateActionBarText()V
    .locals 0

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->updateCheckedMsgCount()V

    .line 1140
    return-void
.end method

.method private updateCheckedMsgCount()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1078
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1110
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1112
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1113
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1116
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    .line 1117
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1118
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1122
    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_7

    .line 1123
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1128
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1129
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_8

    .line 1130
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1120
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1125
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 1132
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateEmptyScreen(IZ)V
    .locals 8
    .parameter "resultCount"
    .parameter "handleFooter"

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1353
    const-string v2, "Mms/ReservationMessageManager"

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

    .line 1354
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 1355
    .local v0, listView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    .line 1357
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v1

    .line 1358
    .local v1, nListMode:I
    if-ne v1, v3, :cond_1

    .line 1359
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    invoke-virtual {p0, v3, v3, v4}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    .line 1381
    :goto_1
    return-void

    .end local v1           #nListMode:I
    :cond_0
    move v2, v4

    .line 1355
    goto :goto_0

    .line 1362
    .restart local v1       #nListMode:I
    :cond_1
    if-nez p1, :cond_3

    .line 1363
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    iget-boolean v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->updateEmptyViewVisibility(Z)V

    .line 1369
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    if-eqz p2, :cond_2

    .line 1371
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1379
    :cond_2
    :goto_2
    invoke-virtual {p0, v4, v3, v4}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1373
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    if-eqz p2, :cond_2

    .line 1376
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateEmptyViewVisibility(Z)V
    .locals 4
    .parameter "isLandscape"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1335
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->isMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1337
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    :goto_0
    return-void

    .line 1339
    :cond_0
    if-eqz p1, :cond_1

    .line 1340
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1341
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1342
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public drawMessagePointer(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 726
    const-string v0, "Mms/ReservationMessageManager"

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

    .line 728
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setListItemSelected(J)V

    .line 733
    return-void
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

    return v0
.end method

.method getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 595
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ReservationMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-object v0

    .line 599
    :cond_1
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 600
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    const/4 v10, 0x0

    .line 602
    .local v10, objMsgItem:Lcom/android/mms/ui/MessageItem;
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 603
    .local v9, idxMsgType:I
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 604
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

    .line 605
    .end local v0           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #szMsgType:Ljava/lang/String;
    .end local v9           #idxMsgType:I
    .restart local v10       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    .line 606
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/ReservationMessageManager"

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

    .line 613
    const-string v5, "Mms/ReservationMessageManager"

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

    .line 614
    const/4 v1, 0x0

    .line 616
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 617
    if-nez v1, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-object v4

    .line 620
    :catch_0
    move-exception v2

    .line 621
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 624
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 627
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 630
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, numbers:[Ljava/lang/String;
    array-length v5, v3

    if-eqz v5, :cond_0

    .line 635
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 636
    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 638
    .end local v3           #numbers:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 639
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1021
    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "hide progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1929
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getNumber(I)Ljava/lang/String;

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
    .line 1934
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->isMessageIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMessageIndex(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 793
    if-gez p1, :cond_1

    .line 800
    :cond_0
    :goto_0
    return v3

    .line 796
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 797
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 798
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 800
    .local v1, cntFooter:I
    add-int/lit8 v4, v2, -0x1

    if-le p1, v4, :cond_0

    sub-int v4, v0, v1

    if-ge p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 427
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 429
    const-string v1, "Mms/ReservationMessageManager"

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

    .line 430
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    .line 432
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 433
    iget-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->updateEmptyViewVisibility(Z)V

    .line 439
    :cond_0
    :goto_1
    return-void

    .line 430
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v0

    .line 436
    .local v0, nListMode:I
    if-ne v0, v2, :cond_0

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->updateDeleteModeListActionBar(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

    .line 202
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->setContentView(I)V

    .line 210
    new-instance v0, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mQueryHandler:Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageManager$MessageListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 213
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initResourceRefs()V

    .line 214
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initListAdapter()V

    .line 215
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initListAnimation()V

    .line 216
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->initEtc()V

    .line 218
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->registerMultiWindowBroadcastReciver()Z

    .line 219
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 266
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->removeDeleteModeListActionbar()V

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 275
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->unregisterMultiWindowBroadcastReciver()Z

    .line 279
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDetailDialog()V

    .line 280
    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->closeDeleteDialog()V

    .line 282
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->hideProgressDialog()V

    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 285
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 416
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_0

    .line 418
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    .line 422
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
    .line 312
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQuery()V

    .line 313
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 348
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 375
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 350
    :sswitch_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 354
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_1

    .line 355
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->finish()V

    goto :goto_0

    .line 362
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->deleteSelectedMessages()V

    goto :goto_0

    .line 366
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 348
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xd2 -> :sswitch_2
        0xd3 -> :sswitch_3
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 252
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 318
    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 322
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getCurrentListMode()I

    move-result v0

    if-lez v0, :cond_3

    .line 323
    const/16 v0, 0xd3

    const v1, 0x7f0a01e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 324
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 326
    const/16 v0, 0xd2

    const v1, 0x7f0a006a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 329
    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 331
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 343
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 340
    const/16 v0, 0xc8

    const v1, 0x7f0a03da

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1001
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 990
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 991
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 992
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 994
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 238
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v0

    .line 239
    .local v0, isAnimationEnable:Z
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ReservationMessageManager;->setAnimationEnable(Z)V

    .line 246
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 289
    const-string v2, "Mms/ReservationMessageManager"

    const-string v3, "\t\t onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->saveListOffset()V

    .line 292
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 293
    iget-boolean v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    .line 295
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 298
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v1           #headerCount:I
    :goto_0
    const-string v2, "Mms/ReservationMessageManager"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 308
    return-void

    .line 301
    .restart local v1       #headerCount:I
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 303
    .end local v1           #headerCount:I
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->refreshFontSize()V

    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v1, 0x7f0a000d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->startFakeAsyncQuery()V

    .line 228
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 231
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 232
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 260
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 385
    const-string v0, "Mms/ReservationMessageManager"

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

    .line 386
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    const/4 v5, 0x1

    .line 390
    const-string v2, "Mms/ReservationMessageManager"

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

    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 395
    .local v0, list:Lcom/android/mms/ui/MsgSweepActionListView;
    if-nez p2, :cond_1

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 399
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 411
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 401
    .restart local v1       #number:Ljava/lang/String;
    :cond_0
    const-string v2, "Mms/ReservationMessageManager"

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

    .line 403
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    if-ne v5, p2, :cond_2

    .line 406
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->openThread(I)V

    .line 407
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 380
    const-string v0, "Mms/ReservationMessageManager"

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

    .line 381
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 1
    .parameter "isAnimationEnable"

    .prologue
    .line 957
    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    .line 959
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    .line 962
    :cond_0
    return-void
.end method

.method public setCurrentListMode(I)I
    .locals 1
    .parameter "listmode"

    .prologue
    .line 774
    iput p1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

    .line 775
    iget v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListMode:I

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

    .line 1214
    const-string v1, "Mms/ReservationMessageManager"

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

    .line 1217
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->setCurrentListMode(I)I

    .line 1219
    const/16 v0, 0x50

    .line 1220
    .local v0, heightOfTitle:I
    if-lez p1, :cond_3

    .line 1221
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 1223
    iget-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 1224
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 1225
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v8, v9, v2, v3, v6}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 1235
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1237
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager;->updateDeleteModeListActionBar(I)V

    .line 1239
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1241
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1242
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1243
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1246
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1274
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setMessageListMode(I)V

    .line 1275
    if-eqz p2, :cond_1

    .line 1276
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1279
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->invalidateOptionsMenu()V

    .line 1280
    return-void

    .line 1232
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1248
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->clearCheckedList()V

    .line 1250
    iget-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    .line 1251
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v8, v9, v2, v6, v3}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 1261
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1263
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->removeDeleteModeListActionbar()V

    .line 1265
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    .line 1266
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1267
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1268
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1269
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->updateNormalModeListActionBar()V

    .line 1272
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 1258
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 965
    const-string v0, "Mms/ReservationMessageManager"

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

    .line 966
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 967
    return-void
.end method

.method public updateDeleteModeListActionBar(I)V
    .locals 4
    .parameter "nListMode"

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 1144
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 1145
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 1146
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 1147
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    .line 1149
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1151
    .local v0, title:Landroid/widget/TextView;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1153
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    .end local v0           #title:Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/mms/ui/ReservationMessageManager$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ReservationMessageManager$6;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/mms/ui/ReservationMessageManager$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ReservationMessageManager$7;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ReservationMessageManager;->updateActionBarText()V

    .line 1175
    return-void
.end method

.method public updateNormalModeListActionBar()V
    .locals 4

    .prologue
    const v3, 0x7f0a03d5

    .line 1064
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1065
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1066
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1071
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1075
    :goto_1
    return-void

    .line 1069
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1073
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
