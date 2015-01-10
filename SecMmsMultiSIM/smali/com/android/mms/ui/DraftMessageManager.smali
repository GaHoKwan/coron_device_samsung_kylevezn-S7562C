.class public Lcom/android/mms/ui/DraftMessageManager;
.super Landroid/app/Activity;
.source "DraftMessageManager.java"

# interfaces
.implements Lcom/android/mms/ui/SweepHandler$ListCheckInterface;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;,
        Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;,
        Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;
    }
.end annotation


# static fields
.field public static final DELETE_ALL_MESSAGE_TOKEN:I = 0x709

.field public static final DELETE_MESSAGE_TOKEN:I = 0x70a

.field public static final FLAG_DELETE_COMPLETE:I = 0xc9

.field public static final FLAG_DELETE_START:I = 0xc8

.field public static final LIST_MODE_DELETE:I = 0x1

.field public static final LIST_MODE_NORMAL:I = 0x0

.field public static final MENU_DELETE_ALL:I = 0xc8

.field public static final MENU_DELETE_CANCEL:I = 0xd3

.field private static final MENU_DELETE_MESSAGE:I = 0xc9

.field public static final MENU_DELETE_OK:I = 0xd2

.field private static final MESSAGE_LIST_ALL_QUERY_TOKEN:I = 0x6a5

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_LIMIT:I = 0xb

.field private static final MESSAGE_LIST_FAKE_VIEW_QUERY_TOKEN:I = 0x6a4

.field private static final MESSAGE_LIST_SELECTION:Ljava/lang/String; = null

.field private static final OFFSET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/DraftMessageManager"

.field public static badge:Landroid/widget/QuickContactBadge;

.field private static mDeleteComplete:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarDeleteListCancelButton:Landroid/widget/TextView;

.field private mActionbarDeleteListDoneButton:Landroid/widget/TextView;

.field private mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

.field private mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

.field private final mContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

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

.field private mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field public mMsgListMode:I

.field private final mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectedPosition:I

.field mTotalConversations:Landroid/widget/TextView;

.field mTotalConversationsLayout:Landroid/widget/LinearLayout;

.field private mVisibleOffset:I

.field private onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(type=3 OR msg_box=3) AND thread_id<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/DraftMessageManager;->MESSAGE_LIST_SELECTION:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteComplete:Z

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/DraftMessageManager;->badge:Landroid/widget/QuickContactBadge;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    iput v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListMode:I

    .line 138
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 139
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 140
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 141
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    .line 142
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 143
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    .line 145
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J

    .line 147
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    iput-boolean v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsDeleteMsgAnimating:Z

    .line 156
    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 631
    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$4;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1358
    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$11;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    .line 1473
    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$12;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 1557
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/DraftMessageManager;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/DraftMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/DraftMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->updateEmptyViewVisibility(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/DraftMessageManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/DraftMessageManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DraftMessageManager;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/DraftMessageManager;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgDeleteActionAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/DraftMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/DraftMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/DraftMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$2102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput-boolean p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteComplete:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/DraftMessageManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->openThread(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/DraftMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DraftMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/DraftMessageManager;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/DraftMessageManager;->deleteMessage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->updateCheckedMsgCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/DraftMessageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/DraftMessageManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->deleteSelectedMessages()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/DraftMessageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/animation/MsgListAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/DraftMessageManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method private beforeQuery()V
    .locals 2

    .prologue
    .line 1315
    const-string v0, "Mms/DraftMessageManager"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    return-void
.end method

.method private changeHeaderSizewhenchangeFontSize()I
    .locals 2

    .prologue
    .line 1122
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1137
    .local v0, selectAllLP:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v1
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 833
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 834
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 836
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 837
    if-eqz p2, :cond_0

    const v1, 0x7f0a009d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 839
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 840
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 841
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 842
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/ui/DraftMessageManager$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DraftMessageManager$5;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 847
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 848
    return-void

    .line 837
    :cond_0
    const v1, 0x7f0a009c

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x0

    .line 815
    const v4, 0x7f030029

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 816
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0e00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 817
    .local v2, checkbox:Landroid/widget/CheckBox;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 818
    const v4, 0x7f0e00e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 819
    .local v0, bodyMessage:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 821
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 822
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

    .line 754
    if-eqz p1, :cond_1

    .line 755
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x70a

    new-instance v2, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    if-eqz p2, :cond_2

    move-object v4, v5

    :goto_0
    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 761
    :cond_1
    return-void

    .line 758
    :cond_2
    const-string v4, "locked=0"

    goto :goto_0
.end method

.method private deleteSelectedMessages()V
    .locals 22

    .prologue
    .line 764
    const-string v18, "Mms/DraftMessageManager"

    const-string v19, "deleteSelectedMessages()"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const/4 v6, 0x0

    .line 766
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 767
    .local v13, idxMsgType:I
    const/4 v12, 0x1

    .line 768
    .local v12, idxMsgId:I
    const/16 v11, 0x14

    .line 770
    .local v11, idxLockedMsg:I
    const/4 v14, 0x0

    .line 771
    .local v14, locked:Z
    const-wide/16 v15, 0x0

    .line 772
    .local v15, msgId:J
    const-string v17, "sms"

    .line 773
    .local v17, msgType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 774
    .local v4, checked:Z
    const/4 v9, 0x0

    .line 776
    .local v9, hasLockedMessage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v5

    .line 777
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cursor:Landroid/database/Cursor;
    check-cast v6, Landroid/database/Cursor;

    .line 779
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 777
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 782
    :cond_1
    const/4 v13, 0x0

    .line 783
    const/4 v12, 0x1

    .line 784
    const/16 v11, 0x14

    .line 786
    :try_start_0
    const-string v18, "transport_type"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 787
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 788
    const-string v18, "locked"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 792
    :goto_1
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 793
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 794
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_4

    const/4 v14, 0x1

    .line 796
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide v1, v15

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/DraftMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v4

    .line 798
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    if-eqz v4, :cond_0

    .line 799
    const/4 v9, 0x1

    .line 803
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/DialogInterface;->dismiss()V

    .line 805
    :cond_3
    new-instance v19, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/DraftMessageManager;Landroid/net/Uri;Z)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCheckedCount()I

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

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/mms/ui/DraftMessageManager;->confirmDeleteMessageDialog(Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v7

    .line 809
    .local v7, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 810
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 811
    return-void

    .line 789
    .end local v7           #dlg:Landroid/app/AlertDialog;
    :catch_0
    move-exception v8

    .line 790
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "colsMap"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 794
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 805
    :cond_5
    const v18, 0x7f0a01d7

    goto :goto_3
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 738
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 739
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 740
    return-void
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .locals 11
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 543
    const/4 v1, 0x0

    .line 545
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 546
    .local v4, itemObject:Ljava/lang/Object;
    const-string v7, "Mms/DraftMessageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConversation position="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    instance-of v7, v4, Landroid/database/Cursor;

    if-nez v7, :cond_1

    .line 549
    const-string v7, "Mms/DraftMessageManager"

    const-string v8, "getConversation object isn\'t cursor instance"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .end local v4           #itemObject:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v6

    .line 553
    .restart local v4       #itemObject:Ljava/lang/Object;
    :cond_1
    move-object v0, v4

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 555
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 559
    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/DraftMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 560
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v5, :cond_2

    .line 561
    const-string v7, "Mms/DraftMessageManager"

    const-string v8, "getConversation can\'t find msgItem"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v4           #itemObject:Ljava/lang/Object;
    .end local v5           #msgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v3

    .line 572
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3           #ex:Ljava/lang/Exception;
    :goto_1
    move-object v6, v1

    .line 574
    goto :goto_0

    .line 565
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v4       #itemObject:Ljava/lang/Object;
    .restart local v5       #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_2
    :try_start_1
    const-string v7, "Mms/DraftMessageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConversation threadId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 569
    iget-object v6, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftMessageManager$6;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .locals 1

    .prologue
    .line 729
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "message"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 936
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 940
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .locals 5
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 954
    if-nez p1, :cond_0

    .line 955
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 958
    :goto_0
    return-object v0

    .line 957
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, str:Ljava/lang/String;
    goto :goto_0
.end method

.method private initEtc()V
    .locals 4

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$3;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/animation/MsgListAnimation;->setLayout(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 528
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 530
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    .line 531
    return-void
.end method

.method private initListAdapter()V
    .locals 3

    .prologue
    .line 442
    const-string v0, "Mms/DraftMessageManager"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    if-eqz v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 448
    :cond_0
    new-instance v0, Lcom/android/mms/ui/DraftMessageListAdapter;

    const/4 v1, 0x0

    const v2, 0x7f030048

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/DraftMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    .line 449
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mContentChangedListener:Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;)V

    .line 450
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initListAnimation()V
    .locals 2

    .prologue
    .line 455
    new-instance v0, Lcom/android/mms/animation/MsgListAnimation;

    invoke-direct {v0}, Lcom/android/mms/animation/MsgListAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    .line 456
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$2;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgListAnimation;->setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V

    .line 482
    return-void
.end method

.method private initResourceRefs()V
    .locals 7

    .prologue
    const v6, 0x7f0a0125

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 414
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 415
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 416
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030022

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    .line 417
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e00cd

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    .line 418
    const v2, 0x7f0e00df

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    .line 419
    const v2, 0x7f0e00e0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 420
    const v2, 0x7f0e003c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    .line 421
    const v2, 0x7f0e003d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    .line 422
    const v2, 0x7f0e0043

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    .line 423
    const v2, 0x7f0e0048

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    .line 425
    const v2, 0x7f0e003f

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const v2, 0x7f0e0046

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    const v2, 0x7f0e0047

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    const v2, 0x7f0e0040

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 429
    .local v1, temp:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 430
    const v2, 0x7f0e004b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 432
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 434
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v3, 0x7f0a000d

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 437
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 438
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->onMessageListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 439
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 536
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    const/4 v0, 0x0

    .line 539
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFirstItemChanged()Z
    .locals 4

    .prologue
    .line 971
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 972
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 973
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 974
    iput-wide v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J

    .line 975
    const/4 v2, 0x1

    .line 978
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
    .line 716
    const-string v0, "MessageListMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListMode:I

    .line 717
    return-void
.end method

.method private openThread(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 685
    const-string v4, "Mms/DraftMessageManager"

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

    .line 686
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v4

    if-lez v4, :cond_0

    .line 708
    :goto_0
    return-void

    .line 689
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 690
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    const-string v5, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 693
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-nez v0, :cond_1

    .line 694
    const-string v4, "Mms/DraftMessageManager"

    const-string v5, "openThread can\'t find conversation"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 697
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 698
    .local v2, threadId:J
    invoke-static {v2, v3}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 701
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 704
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->startActivity(Landroid/content/Intent;)V

    .line 705
    const-string v4, "Mms/DraftMessageManager"

    const-string v5, "openThread startActivity()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->drawMessagePointer(I)V

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
    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$9;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1243
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/DraftMessageManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1244
    const/4 v1, 0x1

    return v1
.end method

.method private removeDeleteModeListActionbar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1105
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1111
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1117
    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 1119
    :cond_2
    return-void
.end method

.method private restoreListOffset()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 989
    :goto_0
    return-void

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_0
.end method

.method private saveListOffset()V
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_0

    .line 984
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mVisibleOffset:I

    goto :goto_0
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 711
    const-string v0, "MessageListMode"

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    .line 733
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/SweepHandler$ListCheckInterface;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 734
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 735
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 963
    const v1, 0x7f0a0125

    const v2, 0x7f0b0003

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/DraftMessageManager;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    const-string v1, "Mms/DraftMessageManager"

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

    .line 968
    return-void
.end method

.method private startAsyncQuery()V
    .locals 1

    .prologue
    .line 1334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryInternal(Z)V

    .line 1335
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 1325
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$10;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1330
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .locals 11
    .parameter "isFake"

    .prologue
    .line 1339
    :try_start_0
    const-string v7, "normalized_date DESC"

    .line 1340
    .local v7, sOrderBySQL:Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "draft-messages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1341
    .local v3, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1343
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a4

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/android/mms/ui/DraftMessageManager;->MESSAGE_LIST_SELECTION:Ljava/lang/String;

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
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1347
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v7       #sOrderBySQL:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->cancelOperation(I)V

    .line 1348
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/android/mms/ui/DraftMessageManager;->MESSAGE_LIST_SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1352
    .end local v3           #uri:Landroid/net/Uri;
    .end local v7           #sOrderBySQL:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1353
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startFakeAsyncQuery()V
    .locals 1

    .prologue
    .line 1320
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->beforeQuery()V

    .line 1321
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryInternal(Z)V

    .line 1322
    return-void
.end method

.method private startViewer(I)V
    .locals 14
    .parameter "position"

    .prologue
    const/4 v13, 0x1

    .line 851
    iget-object v9, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v9, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 852
    .local v2, itemObject:Ljava/lang/Object;
    instance-of v9, v2, Landroid/database/Cursor;

    if-nez v9, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v2

    .line 854
    check-cast v1, Landroid/database/Cursor;

    .line 855
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    if-ltz v9, :cond_0

    .line 858
    iget-object v9, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9, v1}, Lcom/android/mms/ui/DraftMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 859
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v5, :cond_0

    .line 861
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    .line 862
    .local v3, msgId:J
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v6

    .line 863
    .local v6, threadId:J
    const/4 v8, 0x0

    .line 866
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 867
    sget-object v9, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 874
    :goto_1
    iget-object v9, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 877
    .local v0, composeIntent:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 878
    const-string v9, "exit_on_sent"

    invoke-virtual {v0, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 879
    const-string v9, "from_temp_msgbox"

    invoke-virtual {v0, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 880
    const-string v9, "draft_ThreadId"

    invoke-virtual {v0, v9, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 881
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 868
    .end local v0           #composeIntent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v5, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v10, 0x82

    if-eq v9, v10, :cond_0

    .line 869
    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1
.end method

.method private unregisterMultiWindowBroadcastReciver()Z
    .locals 3

    .prologue
    .line 1249
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
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
    const-string v1, "Mms/DraftMessageManager"

    const-string v2, "mMultiWindowBroadcastReceiver is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateActionBarText()V
    .locals 0

    .prologue
    .line 1067
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->updateCheckedMsgCount()V

    .line 1068
    return-void
.end method

.method private updateCheckedMsgCount()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1006
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1037
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1038
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1040
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1041
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1044
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    .line 1045
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1046
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1050
    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_7

    .line 1051
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1056
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1057
    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_8

    .line 1058
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1048
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1053
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 1060
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

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

    .line 1277
    const-string v2, "Mms/DraftMessageManager"

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
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 1279
    .local v0, listView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    .line 1281
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v1

    .line 1282
    .local v1, nListMode:I
    if-ne v1, v3, :cond_3

    .line 1283
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    if-nez p1, :cond_2

    .line 1285
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    .line 1286
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 1287
    :cond_0
    invoke-virtual {p0, v4, v3, v4}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    .line 1312
    :goto_1
    return-void

    .end local v1           #nListMode:I
    :cond_1
    move v2, v4

    .line 1279
    goto :goto_0

    .line 1290
    .restart local v1       #nListMode:I
    :cond_2
    invoke-virtual {p0, v3, v3, v4}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1293
    :cond_3
    if-nez p1, :cond_5

    .line 1294
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    iget-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->updateEmptyViewVisibility(Z)V

    .line 1300
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    if-eqz p2, :cond_4

    .line 1302
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1310
    :cond_4
    :goto_2
    invoke-virtual {p0, v4, v3, v4}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_1

    .line 1304
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1305
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1306
    if-eqz p2, :cond_4

    .line 1307
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversationsLayout:Landroid/widget/LinearLayout;

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
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->isMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1263
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1274
    :goto_0
    return-void

    .line 1265
    :cond_0
    if-eqz p1, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1270
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1272
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyViewMultiWindow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public drawMessagePointer(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 675
    const-string v0, "Mms/DraftMessageManager"

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

    .line 677
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/DraftMessageListAdapter;->setListItemSelected(J)V

    .line 682
    return-void
.end method

.method public getCurrentListMode()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListMode:I

    return v0
.end method

.method getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 578
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/mms/ui/DraftMessageManager;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-object v0

    .line 582
    :cond_1
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 583
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    const/4 v10, 0x0

    .line 585
    .local v10, objMsgItem:Lcom/android/mms/ui/MessageItem;
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 586
    .local v9, idxMsgType:I
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 587
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

    .line 588
    .end local v0           #objMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #szMsgType:Ljava/lang/String;
    .end local v9           #idxMsgType:I
    .restart local v10       #objMsgItem:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    .line 589
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/DraftMessageManager"

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

    .line 596
    const-string v5, "Mms/DraftMessageManager"

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

    .line 597
    const/4 v1, 0x0

    .line 599
    .local v1, conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getConversation(I)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 600
    if-nez v1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-object v4

    .line 603
    :catch_0
    move-exception v2

    .line 604
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 607
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 610
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 613
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, numbers:[Ljava/lang/String;
    array-length v5, v3

    if-eqz v5, :cond_0

    .line 618
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 619
    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 621
    .end local v3           #numbers:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 622
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 949
    const-string v0, "Mms/DraftMessageManager"

    const-string v1, "hide progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCallable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1681
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getNumber(I)Ljava/lang/String;

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
    .line 1686
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->isMessageIndex(I)Z

    move-result v0

    return v0
.end method

.method public isMessageIndex(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 743
    if-gez p1, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v3

    .line 746
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 747
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 748
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 750
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

    .line 399
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 401
    const-string v1, "Mms/DraftMessageManager"

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

    .line 402
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    .line 404
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 405
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->updateEmptyViewVisibility(Z)V

    .line 411
    :cond_0
    :goto_1
    return-void

    .line 402
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v0

    .line 408
    .local v0, nListMode:I
    if-ne v0, v2, :cond_0

    .line 409
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->updateDeleteModeListActionBar(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListMode:I

    .line 165
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->setContentView(I)V

    .line 174
    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/DraftMessageManager;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 178
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initResourceRefs()V

    .line 180
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initListAdapter()V

    .line 182
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initListAnimation()V

    .line 184
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->initEtc()V

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/DraftMessageManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftMessageManager$1;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->registerMultiWindowBroadcastReciver()Z

    .line 197
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 238
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->removeDeleteModeListActionbar()V

    .line 244
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMultiWindowBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 248
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->unregisterMultiWindowBroadcastReciver()Z

    .line 251
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->hideProgressDialog()V

    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 254
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 386
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_0

    .line 388
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    .line 394
    :goto_0
    return v0

    .line 392
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 394
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->startAsyncQuery()V

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 318
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 345
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 320
    :sswitch_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 324
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v1

    if-lez v1, :cond_1

    .line 325
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 327
    :cond_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 328
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->finish()V

    goto :goto_0

    .line 333
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->deleteSelectedMessages()V

    goto :goto_0

    .line 337
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgListAnimation;->hidecheckbox()V

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0, v2, v0, v2}, Lcom/android/mms/ui/DraftMessageManager;->setListModeLayout(IZZ)V

    goto :goto_0

    .line 318
    nop

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
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 224
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 287
    const-string v0, "Mms/DraftMessageManager"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 291
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getCurrentListMode()I

    move-result v0

    if-lez v0, :cond_3

    .line 292
    const/16 v0, 0xd3

    const v1, 0x7f0a01e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 295
    const/16 v0, 0xd2

    const v1, 0x7f0a00a2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 298
    iget-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 313
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 309
    const/16 v0, 0xc8

    const v1, 0x7f0a00bb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 929
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 919
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 920
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 922
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 216
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v0

    .line 217
    .local v0, isAnimationEnable:Z
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftMessageManager;->setAnimationEnable(Z)V

    .line 218
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 258
    const-string v2, "Mms/DraftMessageManager"

    const-string v3, "\t\t onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->saveListOffset()V

    .line 261
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 262
    iget-boolean v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsDeleteMsgAnimating:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    if-eqz v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->userRelease()V

    .line 264
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 267
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1           #headerCount:I
    :goto_0
    const-string v2, "Mms/DraftMessageManager"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    return-void

    .line 270
    .restart local v1       #headerCount:I
    :cond_1
    const-wide/16 v2, -0x1

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mFirstItemId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 272
    .end local v1           #headerCount:I
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->refreshFontSize()V

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    const v1, 0x7f0a000d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->startFakeAsyncQuery()V

    .line 206
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 210
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 232
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 355
    const-string v0, "Mms/DraftMessageManager"

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

    .line 356
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    const/4 v5, 0x1

    .line 360
    const-string v2, "Mms/DraftMessageManager"

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

    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 365
    .local v0, list:Lcom/android/mms/ui/MsgSweepActionListView;
    if-nez p2, :cond_1

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->getNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 369
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 381
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 371
    .restart local v1       #number:Ljava/lang/String;
    :cond_0
    const-string v2, "Mms/DraftMessageManager"

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

    .line 373
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    if-ne v5, p2, :cond_2

    .line 376
    invoke-direct {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->openThread(I)V

    .line 377
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 379
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 350
    const-string v0, "Mms/DraftMessageManager"

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

    .line 351
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 1
    .parameter "isAnimationEnable"

    .prologue
    .line 885
    iput-boolean p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    .line 887
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    .line 890
    :cond_0
    return-void
.end method

.method public setCurrentListMode(I)I
    .locals 1
    .parameter "listmode"

    .prologue
    .line 724
    iput p1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListMode:I

    .line 725
    iget v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListMode:I

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

    .line 1141
    const-string v1, "Mms/DraftMessageManager"

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

    .line 1144
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->setCurrentListMode(I)I

    .line 1146
    const/16 v0, 0x50

    .line 1147
    .local v0, heightOfTitle:I
    if-lez p1, :cond_3

    .line 1148
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->changeHeaderSizewhenchangeFontSize()I

    move-result v0

    .line 1150
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 1151
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    mul-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setTitleHeight(I)V

    .line 1152
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    mul-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v8, v9, v2, v3, v6}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setDeleteModeLayout(Landroid/view/animation/Animation;)V

    .line 1162
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1164
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DraftMessageManager;->updateDeleteModeListActionBar(I)V

    .line 1166
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1168
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1169
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1170
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1173
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1201
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/DraftMessageListAdapter;->setMessageListMode(I)V

    .line 1202
    if-eqz p2, :cond_1

    .line 1203
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1206
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->invalidateOptionsMenu()V

    .line 1207
    return-void

    .line 1159
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1175
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->clearCheckedList()V

    .line 1177
    iget-boolean v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mIsAnimationEnable:Z

    if-eqz v1, :cond_5

    if-eqz p3, :cond_5

    .line 1178
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgListAnimation;->getTitleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v8, v9, v2, v6, v3}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgListAnimation;->setNormalModeLayout(Landroid/view/animation/Animation;)V

    .line 1188
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1190
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->removeDeleteModeListActionbar()V

    .line 1192
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    .line 1193
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1194
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1195
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1196
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->updateNormalModeListActionBar()V

    .line 1199
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DraftMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_1

    .line 1185
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setMessageSelectAll(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 893
    const-string v0, "Mms/DraftMessageManager"

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

    .line 894
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 895
    return-void
.end method

.method public updateDeleteModeListActionBar(I)V
    .locals 4
    .parameter "nListMode"

    .prologue
    const/4 v3, 0x0

    .line 1071
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 1072
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftMessageManager;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    .line 1073
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    .line 1074
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    .line 1075
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListSeprator_2:Landroid/widget/ImageView;

    .line 1077
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0e000c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1079
    .local v0, title:Landroid/widget/TextView;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1080
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    .end local v0           #title:Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListDoneButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/mms/ui/DraftMessageManager$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DraftMessageManager$7;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1089
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionbarDeleteListCancelButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/mms/ui/DraftMessageManager$8;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/DraftMessageManager$8;-><init>(Lcom/android/mms/ui/DraftMessageManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/DraftMessageManager;->updateActionBarText()V

    .line 1102
    return-void
.end method

.method public updateNormalModeListActionBar()V
    .locals 4

    .prologue
    const v3, 0x7f0a04da

    .line 992
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 993
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 994
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 999
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1003
    :goto_1
    return-void

    .line 997
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1001
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
