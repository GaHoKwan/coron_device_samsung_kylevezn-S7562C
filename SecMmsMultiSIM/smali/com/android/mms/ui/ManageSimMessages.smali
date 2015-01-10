.class public Lcom/android/mms/ui/ManageSimMessages;
.super Landroid/app/Activity;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;,
        Lcom/android/mms/ui/ManageSimMessages$QueryHandler;,
        Lcom/android/mms/ui/ManageSimMessages$TabFactory;
    }
.end annotation


# static fields
.field public static final COPY_MODE:I = 0x2

.field private static final DEBUG:Z = true

.field public static final DELETE_MODE:I = 0x1

.field private static final ICC_URI:Landroid/net/Uri; = null

.field private static final ICC_URI2:Landroid/net/Uri; = null

.field private static final MENU_COPY_TO_PHONE_MEMORY:I = 0x0

.field private static final MENU_DELETE_FROM_SIM:I = 0x1

.field private static final MENU_VIEW:I = 0x2

.field public static final NORMAL_MODE:I = 0x0

.field private static final OPTION_MENU_CANCEL:I = 0x1

.field private static final OPTION_MENU_COPY:I = 0x3

.field private static final OPTION_MENU_DELETE:I = 0x2

.field private static final OPTION_MENU_DONE:I = 0x0

.field private static final SHOW_BUSY:I = 0x2

.field private static final SHOW_EMPTY:I = 0x1

.field private static final SHOW_LIST:I = 0x0

.field private static final SIM1:Ljava/lang/String; = "SIM1"

.field private static final SIM2:Ljava/lang/String; = "SIM2"

.field public static final SIM_FULL_NOTIFICATION_ID:I = 0xea

.field private static final TAG:Ljava/lang/String; = "Mms/ManageSimMessages"

.field private static isTabMenu:Z

.field private static mtabState:I

.field private static final multiSimNum:I

.field private static sim_1_active:Z

.field private static sim_2_active:Z


# instance fields
.field private airplaneReceiver:Landroid/content/BroadcastReceiver;

.field private allCheckBox:Landroid/widget/CheckBox;

.field private completeToast:Landroid/widget/Toast;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarTemplateTitle:Lcom/android/mms/ui/ActionbarTitleTextView;

.field private mCompleteHandler:Landroid/os/Handler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEmptyMessageLayout:Landroid/widget/LinearLayout;

.field private mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

.field private mLocale:Ljava/lang/String;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mPosForContext:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSimList:Landroid/widget/ListView;

.field private final mSimListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mState:I

.field private mTabSpec1:Landroid/widget/TabHost$TabSpec;

.field private mTabSpec2:Landroid/widget/TabHost$TabSpec;

.field private mTabs:Landroid/widget/TabHost;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private selectAllUserUnchecked:Z

.field private seletAllLayout:Landroid/widget/LinearLayout;

.field private simMsgReceiver:Landroid/content/BroadcastReceiver;

.field private simstateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    .line 84
    const-string v0, "content://sms/icc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI2:Landroid/net/Uri;

    .line 131
    sput v1, Lcom/android/mms/ui/ManageSimMessages;->mtabState:I

    .line 132
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    .line 133
    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    .line 134
    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    .line 135
    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 106
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    .line 107
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 146
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    .line 149
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    .line 150
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuCancel:Landroid/view/MenuItem;

    .line 151
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    .line 152
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTemplateTitle:Lcom/android/mms/ui/ActionbarTitleTextView;

    .line 533
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$6;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simstateReceiver:Landroid/content/BroadcastReceiver;

    .line 553
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$7;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simMsgReceiver:Landroid/content/BroadcastReceiver;

    .line 759
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mPosForContext:I

    .line 770
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContextMenu:Landroid/view/ContextMenu;

    .line 772
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$8;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1263
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/AlertDialog;

    .line 1597
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$11;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCompleteHandler:Landroid/os/Handler;

    .line 1611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->selectAllUserUnchecked:Z

    .line 1763
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$13;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/ContextMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContextMenu:Landroid/view/ContextMenu;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/ManageSimMessages;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/SimMessageListAdapter;)Lcom/android/mms/ui/SimMessageListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ManageSimMessages;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ManageSimMessages;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mPosForContext:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ManageSimMessages;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mPosForContext:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery2()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    return-void
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    return v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ManageSimMessages;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ManageSimMessages;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->completeToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ManageSimMessages;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCompleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ManageSimMessages;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ManageSimMessages;->setMode(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init2()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ManageSimMessages;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/ManageSimMessages;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ManageSimMessages;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ManageSimMessages;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/ManageSimMessages;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "messageId"

    .prologue
    .line 1265
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1266
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1268
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1270
    const v1, 0x1040013

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1271
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1272
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1274
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/AlertDialog;

    .line 1275
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1278
    return-void
.end method

.method private confirmMultipleDeleteDialog(Landroid/content/DialogInterface$OnClickListener;II)V
    .locals 5
    .parameter "listener"
    .parameter "messageId"
    .parameter "messageNumber"

    .prologue
    const/4 v3, 0x1

    .line 1282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1283
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1285
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1287
    const v1, 0x7f0a00a2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1288
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1289
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1295
    return-void
.end method

.method private copyAllToPhoneMemory()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1013
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1015
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1016
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1018
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1024
    :cond_1
    :goto_0
    return v1

    .line 1020
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1021
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private copyToPhoneMemory(Landroid/database/Cursor;)Z
    .locals 11
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1029
    if-nez p1, :cond_0

    move v0, v9

    .line 1056
    :goto_0
    return v0

    .line 1032
    :cond_0
    const/4 v1, 0x0

    .line 1033
    .local v1, address:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1034
    .local v2, body:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 1037
    .local v6, date:J
    :try_start_0
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1038
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1039
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 1046
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v0, v10

    .line 1056
    goto :goto_0

    .line 1040
    :catch_0
    move-exception v8

    .line 1041
    .local v8, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v0, "Mms/ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyToPhoneMemory() total count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "current position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 1042
    goto :goto_0

    .line 1049
    .end local v8           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1051
    :catch_1
    move-exception v8

    .line 1052
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    move v0, v9

    .line 1053
    goto :goto_0
.end method

.method private deleteAllFromSim()V
    .locals 4

    .prologue
    .line 1095
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1097
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1098
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1099
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1101
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1102
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(Landroid/database/Cursor;)V

    .line 1103
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1107
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private deleteFromSim(I)I
    .locals 5
    .parameter "indexOnIcc"

    .prologue
    const/4 v4, 0x0

    .line 1111
    const-string v1, "Mms/ManageSimMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFromSim indexOnIcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1114
    .local v0, simUri:Landroid/net/Uri;
    sget-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v1, :cond_1

    .line 1115
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI2:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1126
    :cond_0
    :goto_0
    const-string v1, "Mms/ManageSimMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFromSim simUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1119
    :cond_1
    sget v1, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    if-eqz v1, :cond_0

    .line 1120
    const-string v1, "Mms/ManageSimMessages"

    const-string v2, "deleteFromSim - SIM1 is deactive."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI2:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private deleteFromSim(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 1067
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1071
    :cond_0
    :try_start_0
    const-string v3, "index_on_icc"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1072
    .local v1, messageIndexString:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1075
    .local v2, simUri:Landroid/net/Uri;
    sget-boolean v3, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v3, :cond_2

    .line 1076
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SIM2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1077
    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI2:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1087
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v3, v2, v4, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1088
    .end local v1           #messageIndexString:Ljava/lang/String;
    .end local v2           #simUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1089
    .local v0, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/ManageSimMessages"

    const-string v4, "CursorIndexOutOfBoundsException return"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1080
    .end local v0           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v1       #messageIndexString:Ljava/lang/String;
    .restart local v2       #simUri:Landroid/net/Uri;
    :cond_2
    :try_start_1
    sget v3, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    sget-boolean v3, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    if-eqz v3, :cond_1

    .line 1081
    const-string v3, "Mms/ManageSimMessages"

    const-string v4, "deleteFromSim - SIM1 is deactive."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI2:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 597
    const/16 v0, 0xea

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 599
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 600
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 601
    return-void
.end method

.method private init2()V
    .locals 1

    .prologue
    .line 605
    const/16 v0, 0xea

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 607
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 608
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery2()V

    .line 609
    return-void
.end method

.method private initializeActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 463
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    .line 464
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 465
    .local v0, mActionbarTemplateLayout:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 468
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 469
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 470
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 471
    const v1, 0x7f0e001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ActionbarTitleTextView;

    check-cast v1, Lcom/android/mms/ui/ActionbarTitleTextView;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTemplateTitle:Lcom/android/mms/ui/ActionbarTitleTextView;

    .line 472
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTemplateTitle:Lcom/android/mms/ui/ActionbarTitleTextView;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTemplateTitle:Lcom/android/mms/ui/ActionbarTitleTextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 477
    :cond_0
    return-void
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 1060
    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1062
    .local v0, messageBox:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshMessageList()V
    .locals 2

    .prologue
    .line 721
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "refreshMessageList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 731
    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery2()V

    .line 748
    :goto_0
    return-void

    .line 735
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    goto :goto_0

    .line 738
    :cond_1
    sget v0, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    if-eqz v0, :cond_2

    .line 739
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "refreshMessageList - SIM1 is deactive."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery2()V

    goto :goto_0

    .line 744
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    goto :goto_0
.end method

.method private setMode(IZ)V
    .locals 6
    .parameter "mode"
    .parameter "needToQuery"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xea

    const/4 v2, 0x2

    .line 1377
    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    .line 1379
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    if-nez v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1382
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1391
    :goto_0
    if-eqz p2, :cond_5

    .line 1393
    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v0, :cond_2

    .line 1394
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1396
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 1397
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery2()V

    .line 1437
    :goto_1
    return-void

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .line 1399
    :cond_1
    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1400
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 1401
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    goto :goto_1

    .line 1403
    :cond_2
    sget v0, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    if-le v0, v4, :cond_3

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    if-nez v0, :cond_3

    .line 1404
    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1405
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 1406
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    goto :goto_1

    .line 1407
    :cond_3
    sget v0, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    if-le v0, v4, :cond_4

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    if-eqz v0, :cond_4

    .line 1408
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1409
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 1410
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery2()V

    goto :goto_1

    .line 1412
    :cond_4
    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1413
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 1414
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    goto :goto_1

    .line 1420
    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v0, :cond_7

    .line 1421
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1422
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1423
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 1424
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery2()V

    goto :goto_1

    .line 1426
    :cond_6
    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1427
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 1428
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    goto :goto_1

    .line 1431
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    iget v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SimMessageListAdapter;->setMode(I)V

    .line 1432
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 1433
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->setTitleByMode()V

    .line 1434
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1
.end method

.method private setTitleByMode()V
    .locals 3

    .prologue
    const v2, 0x7f0e01f9

    .line 1685
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 1732
    :goto_0
    return-void

    .line 1688
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1730
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1731
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_0

    .line 1691
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1692
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1694
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTemplateTitle:Lcom/android/mms/ui/ActionbarTitleTextView;

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTemplateTitle:Lcom/android/mms/ui/ActionbarTitleTextView;

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1704
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTemplateTitle:Lcom/android/mms/ui/ActionbarTitleTextView;

    if-eqz v0, :cond_3

    .line 1706
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTemplateTitle:Lcom/android/mms/ui/ActionbarTitleTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_1

    .line 1717
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTemplateTitle:Lcom/android/mms/ui/ActionbarTitleTextView;

    if-eqz v0, :cond_4

    .line 1719
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mActionbarTemplateTitle:Lcom/android/mms/ui/ActionbarTitleTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 1725
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_1

    .line 1688
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showProgressDialog(I)V
    .locals 2
    .parameter "text"

    .prologue
    .line 1737
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    .line 1738
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1739
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1740
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1742
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$12;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSimMessages$12;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1748
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1749
    return-void
.end method

.method private startQuery()V
    .locals 9

    .prologue
    .line 698
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "startQuery"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v8

    .line 704
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startQuery2()V
    .locals 9

    .prologue
    .line 710
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "startQuery2()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI2:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v8

    .line 715
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private updateActionBarMenu(Z)V
    .locals 0
    .parameter "isLandscape"

    .prologue
    .line 493
    return-void
.end method

.method private updateState(I)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1301
    const-string v2, "Mms/ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateState : state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mtabState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/ui/ManageSimMessages;->mtabState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1305
    const-string v2, "Mms/ManageSimMessages"

    const-string v3, "isFinishing!!!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-eq v2, p1, :cond_0

    .line 1313
    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    .line 1314
    packed-switch p1, :pswitch_data_0

    .line 1365
    const-string v2, "Mms/ManageSimMessages"

    const-string v3, "Invalid State"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1316
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->setTitleByMode()V

    .line 1322
    sget-boolean v2, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->mtabState:I

    if-nez v2, :cond_2

    .line 1324
    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$TabFactory;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/ui/ManageSimMessages$TabFactory;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/Context;)V

    .line 1325
    .local v1, factory:Lcom/android/mms/ui/ManageSimMessages$TabFactory;
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 1326
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1327
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1329
    sput v7, Lcom/android/mms/ui/ManageSimMessages;->mtabState:I

    .line 1331
    .end local v1           #factory:Lcom/android/mms/ui/ManageSimMessages$TabFactory;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 1332
    sget-boolean v2, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-nez v2, :cond_0

    .line 1333
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1338
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1340
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->setTitleByMode()V

    .line 1344
    sget-boolean v2, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/mms/ui/ManageSimMessages;->mtabState:I

    if-nez v2, :cond_0

    .line 1346
    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$TabFactory;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/ui/ManageSimMessages$TabFactory;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/Context;)V

    .line 1347
    .restart local v1       #factory:Lcom/android/mms/ui/ManageSimMessages$TabFactory;
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 1348
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1349
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1351
    sput v7, Lcom/android/mms/ui/ManageSimMessages;->mtabState:I

    goto/16 :goto_0

    .line 1356
    .end local v1           #factory:Lcom/android/mms/ui/ManageSimMessages$TabFactory;
    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1357
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1359
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1360
    const v2, 0x7f0a000d

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 1314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private viewMessage(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 1374
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1616
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1617
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    if-nez v1, :cond_1

    .line 1618
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1619
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1624
    :cond_1
    const-string v1, "Mms/ManageSimMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged() mState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    iget v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1626
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1627
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 1631
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e0201

    if-ne v1, v2, :cond_7

    .line 1633
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1634
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SimMessageListAdapter;->getCheckedSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 1636
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1637
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SimMessageListAdapter;->addCheckedItem(I)V

    .line 1636
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1643
    .end local v0           #i:I
    :cond_3
    iget-boolean v1, p0, Lcom/android/mms/ui/ManageSimMessages;->selectAllUserUnchecked:Z

    if-eqz v1, :cond_4

    .line 1644
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SimMessageListAdapter;->clearCheckedList()V

    .line 1646
    :cond_4
    iput-boolean v5, p0, Lcom/android/mms/ui/ManageSimMessages;->selectAllUserUnchecked:Z

    .line 1671
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v1, :cond_6

    .line 1672
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SimMessageListAdapter;->getCheckedSize()I

    move-result v1

    if-nez v1, :cond_9

    .line 1673
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1679
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SimMessageListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1651
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e0214

    if-ne v1, v2, :cond_5

    .line 1653
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1654
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SimMessageListAdapter;->addCheckedItem(I)V

    .line 1657
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SimMessageListAdapter;->getCheckedSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1658
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 1660
    :cond_8
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SimMessageListAdapter;->removeCheckedItem(I)V

    .line 1663
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1665
    iput-boolean v4, p0, Lcom/android/mms/ui/ManageSimMessages;->selectAllUserUnchecked:Z

    .line 1666
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 1675
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1595
    return-void
.end method

.method public onClickDone()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1440
    const-string v7, "Mms/ManageSimMessages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClickDone - mState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-ne v7, v11, :cond_1

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/SimMessageListAdapter;->getCheckedSize()I

    move-result v7

    if-lez v7, :cond_0

    .line 1446
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v7}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1447
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/SimMessageListAdapter;->getCheckedList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1449
    .local v6, mArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    if-ne v7, v10, :cond_5

    .line 1451
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1452
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/SimMessageListAdapter;->getCheckedSize()I

    move-result v7

    new-array v0, v7, [I

    .line 1453
    .local v0, checkedList:[I
    const/4 v2, 0x0

    .line 1456
    .local v2, i:I
    :cond_2
    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1457
    .local v4, id:I
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v7, v4}, Lcom/android/mms/ui/SimMessageListAdapter;->isCheckedItem(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1462
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1464
    array-length v7, v0

    if-le v7, v10, :cond_4

    .line 1465
    new-instance v7, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    invoke-direct {v7, p0, v0}, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;-><init>(Lcom/android/mms/ui/ManageSimMessages;[I)V

    const v8, 0x7f0a0301

    array-length v9, v0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/mms/ui/ManageSimMessages;->confirmMultipleDeleteDialog(Landroid/content/DialogInterface$OnClickListener;II)V

    goto :goto_0

    .line 1460
    :cond_3
    const-string v7, "index_on_icc"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1461
    .local v5, indexOnIcc:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput v5, v0, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 1468
    .end local v5           #indexOnIcc:I
    :cond_4
    new-instance v7, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    invoke-direct {v7, p0, v0}, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;-><init>(Lcom/android/mms/ui/ManageSimMessages;[I)V

    const v8, 0x7f0a0302

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    .line 1471
    .end local v0           #checkedList:[I
    .end local v2           #i:I
    .end local v4           #id:I
    :cond_5
    iget v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    if-ne v7, v11, :cond_0

    .line 1472
    const v7, 0x7f0a0303

    invoke-direct {p0, v7}, Lcom/android/mms/ui/ManageSimMessages;->showProgressDialog(I)V

    .line 1473
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/mms/ui/ManageSimMessages$10;

    invoke-direct {v8, p0, v1, v6}, Lcom/android/mms/ui/ManageSimMessages$10;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;Ljava/util/ArrayList;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 752
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 754
    const-string v0, "Mms/ManageSimMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 757
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 876
    iget v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mPosForContext:I

    if-gez v3, :cond_0

    .line 928
    :goto_0
    return v1

    .line 879
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    iget v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mPosForContext:I

    invoke-virtual {v3, v4}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 881
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 928
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 883
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 884
    const v1, 0x7f0a00cb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    move v1, v2

    .line 890
    goto :goto_0

    .line 887
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000a

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 892
    :pswitch_1
    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSimMessages$9;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    const v3, 0x7f0a0302

    invoke-direct {p0, v1, v3}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    move v1, v2

    .line 923
    goto :goto_0

    .line 925
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->viewMessage(Landroid/database/Cursor;)V

    move v1, v2

    .line 926
    goto :goto_0

    .line 881
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const v8, 0x7f0e01f9

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    sput v6, Lcom/android/mms/ui/ManageSimMessages;->mtabState:I

    .line 162
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    .line 163
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    .line 164
    const-string v1, "Mms/ManageSimMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multiSimNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sim_1_active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sim_2_active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget v1, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    if-le v1, v5, :cond_0

    sget-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    if-eqz v1, :cond_0

    .line 166
    sput-boolean v5, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    .line 171
    :goto_0
    sget-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v1, :cond_1

    .line 172
    const v1, 0x7f030084

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 173
    const v1, 0x7f0e020c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    .line 174
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    const-string v2, "SIM1"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {p0, v6}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0, v6, v5}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabSpec1:Landroid/widget/TabHost$TabSpec;

    .line 175
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    const-string v2, "SIM2"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0, v5, v5}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabSpec2:Landroid/widget/TabHost$TabSpec;

    .line 176
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    new-instance v2, Lcom/android/mms/ui/ManageSimMessages$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ManageSimMessages$1;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 193
    const-string v1, "Mms/ManageSimMessages"

    const-string v2, "setOnTabChangedListener (Default) SIM1: "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    const-string v2, "SIM1"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 213
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->initializeActionBar()V

    .line 215
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    .line 216
    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 217
    const v1, 0x7f0e01e4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    .line 219
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 232
    const v1, 0x7f0e01e5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;

    .line 233
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 235
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    .line 236
    const v1, 0x7f0e0201

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 320
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/ui/ManageSimMessages$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ManageSimMessages$2;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 365
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ManageSimMessages$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ManageSimMessages$3;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 395
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 396
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/view/View;->setClickable(Z)V

    .line 405
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ManageSimMessages$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ManageSimMessages$4;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 422
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    .line 423
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 424
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 426
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/mms/ui/ManageSimMessages$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ManageSimMessages$5;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 432
    const-string v1, ""

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->completeToast:Landroid/widget/Toast;

    .line 434
    sget-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-nez v1, :cond_3

    .line 436
    sget v1, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    if-le v1, v5, :cond_2

    sget-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    if-eqz v1, :cond_2

    .line 437
    const-string v1, "Mms/ManageSimMessages"

    const-string v2, "onCreate - SIM1 is deactive."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init2()V

    .line 448
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->simstateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->simMsgReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.REFRESH_SIM_LIST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 458
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 459
    .local v0, lc:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mLocale:Ljava/lang/String;

    .line 461
    return-void

    .line 168
    .end local v0           #lc:Ljava/util/Locale;
    :cond_0
    sput-boolean v6, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    goto/16 :goto_0

    .line 199
    :cond_1
    const v1, 0x7f030083

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 442
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    goto :goto_2

    .line 445
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 1167
    const/4 v0, 0x3

    const v1, 0x7f0a0300

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1169
    const/4 v0, 0x2

    const v1, 0x7f0a00a2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1172
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 968
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 982
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 985
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 994
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simstateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1002
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simMsgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1003
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1004
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 1787
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    if-eqz v0, :cond_0

    .line 1788
    invoke-direct {p0, v1, v1}, Lcom/android/mms/ui/ManageSimMessages;->setMode(IZ)V

    .line 1789
    const/4 v0, 0x1

    .line 1795
    :goto_0
    return v0

    .line 1792
    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    if-nez v0, :cond_1

    .line 1793
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1795
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 573
    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init2()V

    .line 593
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    goto :goto_0

    .line 582
    :cond_1
    sget v0, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->sim_1_active:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/mms/ui/ManageSimMessages;->sim_2_active:Z

    if-eqz v0, :cond_2

    .line 583
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "onNewIntent - SIM1 is deactive."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init2()V

    goto :goto_0

    .line 589
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1259
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 1240
    :sswitch_0
    invoke-direct {p0, v2, v2}, Lcom/android/mms/ui/ManageSimMessages;->setMode(IZ)V

    goto :goto_1

    .line 1243
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->onClickDone()V

    goto :goto_1

    .line 1246
    :sswitch_2
    invoke-direct {p0, v0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setMode(IZ)V

    goto :goto_0

    .line 1249
    :sswitch_3
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ManageSimMessages;->setMode(IZ)V

    goto :goto_0

    .line 1252
    :sswitch_4
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    if-nez v0, :cond_0

    .line 1253
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1255
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/android/mms/ui/ManageSimMessages;->setMode(IZ)V

    goto :goto_0

    .line 1238
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 953
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 964
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1178
    const v7, 0x7f0a01e9

    invoke-interface {p1, v6, v5, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuCancel:Landroid/view/MenuItem;

    .line 1179
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1181
    iget v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    if-ne v7, v8, :cond_1

    .line 1182
    const v7, 0x7f0a010f

    invoke-interface {p1, v6, v6, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    .line 1186
    :goto_0
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1187
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1189
    const/4 v7, 0x3

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1190
    .local v2, menuCopy:Landroid/view/MenuItem;
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1191
    .local v3, menuDelete:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuCancel:Landroid/view/MenuItem;

    .line 1192
    .local v1, menuCancel:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    .line 1194
    .local v4, menuDone:Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 1195
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_2

    move v0, v5

    .line 1197
    .local v0, isLandscape:Z
    :goto_1
    iget v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mMode:I

    if-eqz v7, :cond_5

    .line 1198
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1199
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1200
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1201
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1203
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/SimMessageListAdapter;->getCheckedSize()I

    move-result v7

    if-lez v7, :cond_3

    .line 1204
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1213
    :goto_2
    if-eqz v0, :cond_4

    .line 1214
    const v5, 0x7f020285

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1215
    const v5, 0x7f020286

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1233
    .end local v0           #isLandscape:Z
    :cond_0
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    return v5

    .line 1184
    .end local v1           #menuCancel:Landroid/view/MenuItem;
    .end local v2           #menuCopy:Landroid/view/MenuItem;
    .end local v3           #menuDelete:Landroid/view/MenuItem;
    .end local v4           #menuDone:Landroid/view/MenuItem;
    :cond_1
    const v7, 0x7f0a00a2

    invoke-interface {p1, v6, v6, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    goto :goto_0

    .restart local v1       #menuCancel:Landroid/view/MenuItem;
    .restart local v2       #menuCopy:Landroid/view/MenuItem;
    .restart local v3       #menuDelete:Landroid/view/MenuItem;
    .restart local v4       #menuDone:Landroid/view/MenuItem;
    :cond_2
    move v0, v6

    .line 1195
    goto :goto_1

    .line 1206
    .restart local v0       #isLandscape:Z
    :cond_3
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1217
    :cond_4
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1218
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 1221
    :cond_5
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1222
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1223
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    if-lez v7, :cond_6

    iget v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-nez v7, :cond_6

    .line 1224
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1225
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1227
    :cond_6
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1228
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 933
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 936
    sget-boolean v3, Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/mms/ui/ManageSimMessages;->mtabState:I

    if-ne v3, v5, :cond_0

    .line 938
    const/4 v2, 0x0

    .local v2, simSlotNum:I
    :goto_0
    sget v3, Lcom/android/mms/ui/ManageSimMessages;->multiSimNum:I

    if-ge v2, v3, :cond_0

    .line 939
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 940
    .local v0, simIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p0, v2, v5}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 942
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 943
    .local v1, simName:Landroid/widget/TextView;
    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 949
    .end local v0           #simIcon:Landroid/widget/ImageView;
    .end local v1           #simName:Landroid/widget/TextView;
    .end local v2           #simSlotNum:I
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 525
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->notifyDataSetChanged()V

    .line 528
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 529
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 530
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 515
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 516
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 517
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 1
    .parameter "updated"

    .prologue
    .line 1801
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$14;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1809
    return-void
.end method
