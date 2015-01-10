.class public Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.super Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;,
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;,
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static FMC_MODE:Z

.field public static final LOG_PROJECTION:[Ljava/lang/String;

.field public static final REGISTERINFO_URI:Landroid/net/Uri;

.field public static afterDeleteActivity:Z

.field public static bCheckedBefore:Z

.field public static dataRefreshed:Z

.field public static iconIndexCDMA:I

.field public static iconIndexGSM:I

.field public static isFocusDetailView:Z

.field public static keyPressed:Z

.field public static mIsKeepPosition:Z

.field public static mIsSingledelete:Z

.field private static prevLogsCount:I

.field private static prevSelectedPosition:I

.field public static selectedPosion:I

.field public static showCalllogTip:Z

.field public static simNameCDMA:Ljava/lang/String;

.field public static simNameGSM:Ljava/lang/String;


# instance fields
.field private final CONTEXTMENU_BLACKLIST:I

.field private final CONTEXTMENU_BLOCKCONTACT:I

.field private final CONTEXTMENU_BLOCKNUMBER:I

.field private final CONTEXTMENU_CALL:I

.field private final CONTEXTMENU_CTC133CALLBACKCALL:I

.field private final CONTEXTMENU_CTCINTLROAMINGCALL:I

.field private final CONTEXTMENU_EDITNUMBER:I

.field private final CONTEXTMENU_REMOVEHISTORYLOG:I

.field private final CONTEXTMENU_REMOVELOG:I

.field private final CONTEXTMENU_REMOVE_FROM_BLACK_LIST:I

.field private final CONTEXTMENU_REMOVE_FROM_WHITE_LIST:I

.field private final CONTEXTMENU_SAVECONTACT:I

.field private final CONTEXTMENU_SENDINFO:I

.field private final CONTEXTMENU_SENDMSG:I

.field private final CONTEXTMENU_UNBLOCKCONTACT:I

.field private final CONTEXTMENU_VIEWCONTACT:I

.field private final CONTEXTMENU_WHITELIST:I

.field cnapname:Ljava/lang/String;

.field private empty_layout:Landroid/widget/LinearLayout;

.field fName:Ljava/lang/String;

.field private isUsingTwoPanel:Z

.field lName:Ljava/lang/String;

.field private logs_tab:Landroid/widget/LinearLayout;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field private mAfterStartQuery:Z

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mBlockNumberFullErrorDlgIsShowing:Z

.field private mBlockSettingDlgIsShowing:Z

.field private mCallLogFetched:Z

.field private mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

.field private mContext:Landroid/content/Context;

.field private mContextForDialog:Landroid/content/Context;

.field private mDeleteLogDlg:Landroid/app/AlertDialog;

.field private mEmptyLoaderRunning:Z

.field private mFragmentView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsSplitStatus:Z

.field private mItemPosition:Ljava/lang/Integer;

.field private mItemSize:Ljava/lang/Integer;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastWhichButton:I

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field protected mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

.field private mMenuVisible:Z

.field private mNoLogs:Landroid/widget/TextView;

.field private mNumberForDialog:Ljava/lang/String;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetMissedCheck:Z

.field public mScrollToTop:Z

.field private mSelectSimDlg:Landroid/app/AlertDialog;

.field private mShowOptionsMenu:Z

.field public mStrNumber:Ljava/lang/String;

.field mSupportFolderType:Z

.field private mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mTabChanged:Z

.field private mViewByDlg:Landroid/app/AlertDialog;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private mVoiceMailNumber1:Ljava/lang/String;

.field private mVoiceMailNumber2:Ljava/lang/String;

.field private mVoicemailStatusFetched:Z

.field public mWhichButton:I

.field public mWhichSelectSimId:I

.field public mWhichSimIdButton:I

.field private mstrName:Ljava/lang/String;

.field private prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

.field private previousCursorCount:I

.field private unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    .line 177
    const-string v0, "CDMA"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    .line 178
    const-string v0, "GSM"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    .line 179
    sput v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    .line 180
    sput v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    .line 181
    const-string v0, "content://com.sec.provider.simcardmanagement/registerinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->REGISTERINFO_URI:Landroid/net/Uri;

    .line 238
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    .line 239
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isFocusDetailView:Z

    .line 245
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    .line 246
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->dataRefreshed:Z

    .line 257
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->selectedPosion:I

    .line 258
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->afterDeleteActivity:Z

    .line 268
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    .line 269
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSingledelete:Z

    .line 270
    sput v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevSelectedPosition:I

    .line 274
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsKeepPosition:Z

    .line 276
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showCalllogTip:Z

    .line 280
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->keyPressed:Z

    .line 285
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v0, v2

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cityid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cnap_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fname"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lname"

    aput-object v2, v0, v1

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->LOG_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;-><init>()V

    .line 148
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    .line 172
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    .line 174
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->previousCursorCount:I

    .line 182
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    .line 183
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z

    .line 185
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 186
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSelectSimId:I

    .line 187
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 191
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    .line 209
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    .line 216
    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_CALL:I

    .line 217
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SENDMSG:I

    .line 218
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_EDITNUMBER:I

    .line 219
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SENDINFO:I

    .line 220
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_VIEWCONTACT:I

    .line 221
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SAVECONTACT:I

    .line 222
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_BLOCKCONTACT:I

    .line 223
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_UNBLOCKCONTACT:I

    .line 224
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_BLOCKNUMBER:I

    .line 225
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_REMOVELOG:I

    .line 226
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_WHITELIST:I

    .line 227
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_BLACKLIST:I

    .line 228
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_CTCINTLROAMINGCALL:I

    .line 229
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_CTC133CALLBACKCALL:I

    .line 230
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_REMOVE_FROM_WHITE_LIST:I

    .line 231
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_REMOVE_FROM_BLACK_LIST:I

    .line 232
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_REMOVEHISTORYLOG:I

    .line 255
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTabChanged:Z

    .line 256
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAfterStartQuery:Z

    .line 260
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 266
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSplitStatus:Z

    .line 271
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSupportFolderType:Z

    .line 289
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    .line 290
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    .line 291
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    .line 314
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mMenuVisible:Z

    .line 316
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mBlockSettingDlgIsShowing:Z

    .line 317
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mBlockNumberFullErrorDlgIsShowing:Z

    .line 319
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    .line 2355
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$23;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$23;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2535
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openViewByDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateVoicemailNotifications()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNumberForDialog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/android/contacts/util/AsyncTaskExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    return-object v0
.end method

.method private cleanupResouces()V
    .locals 1

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2531
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V

    .line 2532
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    .line 2533
    return-void
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 524
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 525
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 526
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 528
    :cond_0
    return-void
.end method

.method private getRegisterInfo()V
    .locals 4

    .prologue
    .line 2581
    const-string v0, "ril.ICC_TYPE"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2582
    const-string v0, "gsm.sim.cardname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2583
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2584
    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    .line 2585
    :cond_0
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simNameCDMA:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2590
    const-string v0, "gsm.sim.cardname.dual"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    .line 2595
    :cond_2
    :goto_0
    return-void

    .line 2592
    :cond_3
    const-string v0, "ril.ICC2_TYPE"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2593
    const-string v0, "gsm.sim.cardname2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSlotSelectionInformation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2549
    const-string v2, "/sys/class/sec/slot_switch/slot_sel"

    .line 2550
    const/4 v1, 0x0

    .line 2551
    const-string v0, "0"

    .line 2554
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2555
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2556
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 2557
    const-string v2, "CallLogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot_Sel [read]<---------------------------------- : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2564
    if-eqz v0, :cond_0

    .line 2565
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 2572
    :goto_0
    if-nez v0, :cond_1

    .line 2573
    const-string v0, "0"

    .line 2576
    :cond_1
    return-object v0

    .line 2567
    :catch_0
    move-exception v0

    .line 2568
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 2570
    goto :goto_0

    .line 2559
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 2560
    :goto_1
    :try_start_3
    const-string v1, "CallLogFragment"

    const-string v2, "File open error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    const-string v1, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2564
    if-eqz v0, :cond_2

    .line 2565
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    move-object v0, v1

    .line 2569
    goto :goto_0

    .line 2567
    :catch_2
    move-exception v0

    .line 2568
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 2570
    goto :goto_0

    .line 2563
    :catchall_0
    move-exception v0

    .line 2564
    :goto_2
    if-eqz v1, :cond_3

    .line 2565
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2569
    :cond_3
    :goto_3
    throw v0

    .line 2567
    :catch_3
    move-exception v1

    .line 2568
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2563
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 2559
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private loadPref()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "logslist_pref"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1089
    const-string v1, "reject_popup"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    .line 1091
    const-string v1, "permanent_save_view_by_setting"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1093
    instance-of v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogActivity;

    if-nez v1, :cond_1

    .line 1094
    const-string v1, "default_view_by_setting_allcalls"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1095
    const-string v1, "WhichButton"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 1098
    :goto_0
    const-string v1, "feature_common_dsds_support "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    const-string v1, "SIMWhichButton"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 1100
    :cond_0
    const-string v1, "not_support_msg_logs"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1101
    const-string v1, "SIMWhichButton"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 1105
    :cond_1
    return-void

    .line 1097
    :cond_2
    const-string v1, "WhichButton"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    goto :goto_0
.end method

.method private nullViewDrawable(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2516
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2521
    :goto_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 2522
    .local v1, imageView:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2523
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2526
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_1
    return-void

    .line 2517
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2524
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 2496
    if-eqz p1, :cond_1

    .line 2500
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 2502
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2503
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2505
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2506
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2503
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2508
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childCount:I
    .end local v3           #index:I
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :catch_0
    move-exception v5

    .line 2510
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->nullViewDrawable(Landroid/view/View;)V

    .line 2512
    :cond_1
    return-void
.end method

.method private openSelectSimDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1907
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0d040b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1911
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1912
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1913
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    .line 1916
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d040a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$15;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$15;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    .line 1928
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$16;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1934
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1935
    return-void
.end method

.method private openViewByDialog()V
    .locals 11

    .prologue
    const v10, 0x7f0d02f8

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1938
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->haveVOIPCalls(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    .line 1939
    const/4 v1, 0x0

    .line 1941
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    .line 1947
    :cond_0
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1948
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    if-eqz v0, :cond_2

    .line 1949
    const v0, 0x7f08000f

    .line 1997
    :cond_1
    :goto_0
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1998
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d032d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$18;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$18;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$17;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    .line 2052
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2054
    return-void

    .line 1951
    :cond_2
    const v0, 0x7f08000e

    goto :goto_0

    .line 1954
    :cond_3
    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "feature_cspire"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1955
    const v0, 0x7f080008

    goto :goto_0

    .line 1957
    :cond_4
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1958
    const v0, 0x7f080007

    goto :goto_0

    .line 1960
    :cond_5
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1961
    const v0, 0x7f08000a

    goto :goto_0

    .line 1963
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1964
    const v0, 0x7f080006

    goto :goto_0

    .line 1966
    :cond_7
    const-string v0, "dcm_not_support_extra_calllog_type"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1967
    const v0, 0x7f080009

    goto/16 :goto_0

    .line 1969
    :cond_8
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1970
    const-string v0, "not_support_msg_logs"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1971
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_9

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1972
    const v0, 0x7f080012

    .line 1979
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1980
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1981
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d041a

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1982
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d041a

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    goto/16 :goto_0

    .line 1974
    :cond_9
    const v0, 0x7f080011

    goto :goto_2

    .line 1977
    :cond_a
    const v0, 0x7f080010

    goto :goto_2

    .line 1983
    :cond_b
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1984
    const-string v2, "not_support_msg_logs"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1985
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    aput-object v2, v1, v6

    .line 1986
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    aput-object v2, v1, v7

    goto/16 :goto_0

    .line 1988
    :cond_c
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    aput-object v2, v1, v7

    .line 1989
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    aput-object v2, v1, v9

    goto/16 :goto_0

    .line 1994
    :cond_d
    const v0, 0x7f080005

    goto/16 :goto_0

    .line 2025
    :cond_e
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d032d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$20;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$20;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$19;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method private openViewByDialog(I)V
    .locals 4
    .parameter

    .prologue
    .line 2058
    .line 2060
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 2064
    :cond_0
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2065
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    if-eqz v0, :cond_1

    .line 2066
    const v0, 0x7f08000f

    .line 2078
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d032d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$22;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02f8

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$21;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    .line 2107
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2109
    return-void

    .line 2068
    :cond_1
    const v0, 0x7f08000e

    goto :goto_0

    .line 2070
    :cond_2
    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2071
    const v0, 0x7f080008

    goto :goto_0

    .line 2072
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2073
    const v0, 0x7f080006

    goto :goto_0

    .line 2075
    :cond_4
    const v0, 0x7f080005

    goto :goto_0
.end method

.method private refreshData(Z)V
    .locals 1
    .parameter "mResetMissed"

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->invalidateCache()V

    .line 2269
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startCallsQuery()V

    .line 2270
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnEntry(Z)V

    .line 2272
    return-void
.end method

.method private removeMissedCallNotifications()V
    .locals 3

    .prologue
    .line 2277
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2279
    if-eqz v0, :cond_1

    .line 2280
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 2291
    :goto_0
    const-string v0, "dcm_support_machichara_service"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_0

    .line 2293
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.nttdocomo.android.mascot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 2295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nttdocomo.android.mascot.DisablePopup.AbsentArriving"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2297
    const-string v1, "com.nttdocomo.android.mascot"

    const-string v2, "com.nttdocomo.android.mascot.service.MascotIntentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2299
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2311
    :cond_0
    :goto_1
    return-void

    .line 2282
    :cond_1
    :try_start_2
    const-string v0, "CallLogFragment"

    const-string v1, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2306
    :catch_0
    move-exception v0

    .line 2307
    const-string v0, "CallLogFragment"

    const-string v1, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2301
    :catch_1
    move-exception v0

    .line 2302
    :try_start_3
    const-string v0, "CallLogFragment"

    const-string v1, "com.nttdocomo.android.mascot is not found"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2308
    :catch_2
    move-exception v0

    .line 2309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateOnEntry(Z)V
    .locals 2
    .parameter "mResetMissed"

    .prologue
    .line 2321
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)V

    .line 2322
    .local v0, entry:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2323
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2324
    return-void
.end method

.method private updateOnExit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2315
    const-string v0, "CallLogFragment"

    const-string v1, "========= updateOnExit ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(ZZ)V

    .line 2317
    return-void
.end method

.method private updateOnTransition(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2329
    iput-boolean p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z

    .line 2330
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2335
    if-nez p1, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 2338
    :cond_0
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOnTransition mResetMissed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    if-eqz p2, :cond_1

    .line 2340
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 2341
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V

    .line 2342
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateVoicemailNotifications()V

    .line 2353
    :cond_1
    :goto_0
    return-void

    .line 2346
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    if-nez v0, :cond_1

    .line 2347
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2348
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2349
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    .line 2350
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateSweepActionFeasibility()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2410
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v0, :cond_1

    .line 2451
    :cond_0
    :goto_0
    return-void

    .line 2414
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SweepOperationArea"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2417
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isSweepActionEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2418
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 2419
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 2420
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 2421
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 2422
    const-string v1, "ExcludeAvatar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2424
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    goto :goto_0

    .line 2427
    :cond_3
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2428
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 2429
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 2432
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-nez v1, :cond_6

    .line 2433
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->configureSweepActionCallbackAndListener()V

    .line 2437
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 2438
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 2440
    const-string v1, "ExcludeAvatar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2442
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2444
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2446
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 2448
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v1, v2, v1

    add-float/2addr v0, v1

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    goto/16 :goto_0
.end method

.method private updateVoicemailNotifications()V
    .locals 3

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2392
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2393
    const-string v1, "com.sec.android.app.dialertab.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2394
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2396
    :cond_0
    return-void
.end method


# virtual methods
.method public SaveToContact()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 1332
    const-string v0, "feature_cnam"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1333
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->LOG_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1338
    if-eqz v0, :cond_2

    .line 1339
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1340
    const-string v2, "cnap_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1342
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1343
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1344
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1346
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    .line 1347
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    .line 1348
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    .line 1350
    if-eq v1, v6, :cond_0

    .line 1351
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    .line 1352
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    .line 1353
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    .line 1356
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1358
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    if-eqz v0, :cond_1

    .line 1359
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firstname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Lastname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CnapName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " City ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->fName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->lName:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->AddToContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_2
    :goto_1
    return-void

    .line 1364
    :cond_3
    const-string v0, "feature_cnap"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1365
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/call"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->LOG_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1369
    if-eqz v0, :cond_2

    .line 1370
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1371
    const-string v2, "cnap_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1372
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1373
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1374
    if-eq v1, v6, :cond_4

    .line 1375
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    .line 1378
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1381
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1382
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cnapname:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->AddToContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1384
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->AddToContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1389
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->AddToContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v5, v4

    goto/16 :goto_0
.end method

.method public callSelectedEntry()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2137
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v0

    .line 2138
    if-gez v0, :cond_0

    .line 2142
    const/4 v0, 0x0

    .line 2144
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2145
    if-eqz v0, :cond_1

    .line 2146
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "P"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2182
    :cond_1
    :goto_0
    return-void

    .line 2157
    :cond_2
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2158
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "sip"

    invoke-static {v3, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2175
    :goto_1
    const-string v1, "feature_assistdialing"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2176
    const-string v1, "origin"

    const-string v2, "from_dialer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2178
    :cond_3
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2180
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2163
    :cond_4
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2164
    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eq v2, v4, :cond_5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 2168
    :cond_5
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2169
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getBetterNumberFromContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2171
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public clearDetail()V
    .locals 1

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;->onDetailClear()V

    .line 2474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 2475
    return-void
.end method

.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 667
    const-string v0, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    .line 668
    return-void
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 5

    .prologue
    .line 337
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionBarCallBack(Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;)V

    .line 338
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSweepActionBarCallBack()Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 340
    return-void
.end method

.method public fetchLogs()V
    .locals 3

    .prologue
    .line 1006
    const-string v0, "CallLogFragment"

    const-string v1, "========= fetchLogs ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(II)V

    .line 1012
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    goto :goto_0
.end method

.method public getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method public getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method public getLogsCount()I
    .locals 1

    .prologue
    .line 2491
    sget v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    return v0
.end method

.method protected getSimCardInfo()V
    .locals 3

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "switching.slot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2601
    const-string v1, "ril.ICC_TYPE"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2602
    const/4 v1, 0x6

    sput v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    .line 2606
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2607
    const-string v0, "gsm.sim.icon.dual"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    .line 2614
    :goto_1
    return-void

    .line 2604
    :cond_0
    const-string v1, "gsm.sim.icon"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    goto :goto_0

    .line 2608
    :cond_1
    const-string v0, "ril.ICC2_TYPE"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2609
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    goto :goto_1

    .line 2611
    :cond_2
    const-string v0, "gsm.sim.icon2"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    goto :goto_1
.end method

.method protected final getSweepActionBarCallBack()Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isSweepActionEnabled()Z
    .locals 1

    .prologue
    .line 2405
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    return v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 419
    const-string v2, "CallLogFragment"

    const-string v3, "========= onCallsFetched ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setLoading(Z)V

    .line 424
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 425
    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->previousCursorCount:I

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 428
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->previousCursorCount:I

    .line 431
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 432
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 434
    .local v0, currentLogCount:I
    if-eqz v0, :cond_3

    .line 435
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSingledelete:Z

    if-eqz v2, :cond_7

    .line 436
    if-ne v0, v6, :cond_6

    .line 437
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 438
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    .line 483
    :cond_3
    :goto_1
    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    .line 484
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSingledelete:Z

    .line 485
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAfterStartQuery:Z

    .line 486
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsKeepPosition:Z

    .line 490
    .end local v0           #currentLogCount:I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 491
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v2, :cond_5

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    .line 499
    .local v1, listView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    .line 500
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    .line 502
    .end local v1           #listView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    :cond_5
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogFetched:Z

    .line 503
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0

    .line 440
    .restart local v0       #currentLogCount:I
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sget v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevSelectedPosition:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSelectedPos(I)V

    .line 441
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto :goto_1

    .line 443
    :cond_7
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsKeepPosition:Z

    if-eqz v2, :cond_8

    .line 444
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto :goto_1

    .line 446
    :cond_8
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    if-le v2, v0, :cond_9

    .line 447
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->clearDetail()V

    .line 448
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 449
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto :goto_1

    .line 450
    :cond_9
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    if-ge v2, v0, :cond_3

    .line 451
    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    if-eq v2, v6, :cond_b

    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string v2, "permanent_save_view_by_setting"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 455
    iput v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    .line 457
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 458
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto :goto_1

    .line 460
    :cond_b
    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    if-eqz v2, :cond_c

    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "permanent_save_view_by_setting"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 464
    iput v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mLastWhichButton:I

    .line 466
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 467
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto/16 :goto_1

    .line 470
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getSelectedPos()I

    move-result v2

    if-eqz v2, :cond_d

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->clearDetail()V

    .line 472
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getSelectedPos()I

    move-result v3

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevLogsCount:I

    sub-int v4, v0, v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSelectedPos(I)V

    .line 473
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto/16 :goto_1

    .line 474
    :cond_d
    if-ne v0, v6, :cond_3

    .line 475
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 476
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 14
    .parameter "newConfig"

    .prologue
    const v13, 0x7f0900bc

    const v12, 0x7f0900b8

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 682
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 684
    sget-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    if-eqz v6, :cond_0

    .line 685
    const-string v6, "CallLogFragment"

    const-string v7, "onConfigurationChanged"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    const-string v6, "feature_chn_duos"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 688
    iget v6, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v10, :cond_5

    iget v6, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 708
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v10, :cond_2

    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v6, :cond_6

    .line 709
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 712
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f0900bb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNoLogs:Landroid/widget/TextView;

    .line 713
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNoLogs:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 714
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 715
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNoLogs:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 733
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 734
    .local v1, heightValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x10102eb

    invoke-virtual {v6, v7, v1, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 736
    iget v6, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 739
    .local v0, actionBarHeight:I
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-nez v6, :cond_4

    .line 740
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 742
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logs_tab:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 752
    :cond_4
    :goto_2
    return-void

    .line 693
    .end local v0           #actionBarHeight:I
    .end local v1           #heightValue:Landroid/util/TypedValue;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    .line 694
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 695
    const-string v6, "CallLogFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentFocus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 697
    invoke-virtual {v5}, Landroid/view/View;->clearFocus()V

    .line 698
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    .line 699
    if-eqz v5, :cond_1

    .line 700
    const-string v6, "CallLogFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentFocus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 702
    invoke-virtual {v5}, Landroid/view/View;->clearFocus()V

    goto/16 :goto_0

    .line 718
    .end local v5           #view:Landroid/view/View;
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 721
    const-string v6, "feature_hvga"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 722
    const-string v6, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 723
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f0900bf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 724
    .local v3, mNoLogsText2:Landroid/widget/TextView;
    const/high16 v6, 0x41b0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 725
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v7, 0x7f0900c0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 726
    .local v4, mNoLogsText3:Landroid/widget/TextView;
    const/high16 v6, 0x4190

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_1

    .line 745
    .end local v3           #mNoLogsText2:Landroid/widget/TextView;
    .end local v4           #mNoLogsText3:Landroid/widget/TextView;
    .restart local v0       #actionBarHeight:I
    .restart local v1       #heightValue:Landroid/util/TypedValue;
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getOrientation()I

    move-result v6

    if-nez v6, :cond_8

    .line 746
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logs_tab:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9, v9, v9, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_2

    .line 749
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logs_tab:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1719
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 1720
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_1

    .line 1722
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isFocusDetailView:Z

    if-eqz v0, :cond_0

    .line 1723
    sput-boolean v7, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isFocusDetailView:Z

    move v0, v7

    .line 1811
    :goto_0
    return v0

    .line 1726
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    move v0, v7

    .line 1811
    goto :goto_0

    .line 1728
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v8

    .line 1729
    goto :goto_0

    .line 1731
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->editCall(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v8

    .line 1732
    goto :goto_0

    .line 1735
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->SaveToContact()V

    move v0, v8

    .line 1736
    goto :goto_0

    .line 1739
    :pswitch_3
    const/4 v6, -0x1

    .line 1740
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1745
    if-eqz v1, :cond_4

    .line 1746
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1747
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1748
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1750
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1753
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    move v0, v8

    .line 1754
    goto :goto_0

    .line 1757
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v8

    .line 1758
    goto :goto_0

    .line 1761
    :pswitch_5
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v0, :cond_2

    .line 1762
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_3
    move v0, v8

    .line 1765
    goto :goto_0

    .line 1764
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 1768
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v8

    .line 1769
    goto :goto_0

    .line 1772
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v8

    .line 1773
    goto/16 :goto_0

    .line 1777
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    .line 1778
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 1779
    goto/16 :goto_0

    .line 1782
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogsConfirmDlg()V

    move v0, v8

    .line 1783
    goto/16 :goto_0

    .line 1786
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteHistoryLogsConfirmDlg()V

    move v0, v8

    .line 1787
    goto/16 :goto_0

    .line 1791
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configWhitelistNumber(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v8

    .line 1792
    goto/16 :goto_0

    .line 1796
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->configBlacklistNumber(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v8

    .line 1797
    goto/16 :goto_0

    .line 1800
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeIntlRoamingCall(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v8

    .line 1801
    goto/16 :goto_0

    .line 1804
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->make133CallbackCall(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v8

    .line 1805
    goto/16 :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_2

    .line 1726
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 360
    const-string v2, "CallLogFragment"

    const-string v3, "========= onCreate ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 362
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    .line 364
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 365
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v3, "phone2"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 378
    :cond_0
    :goto_0
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$Listener;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    .line 379
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 380
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 382
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 383
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    .line 384
    const-string v2, "com.sec.feature.folder_type"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSupportFolderType:Z

    .line 390
    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    .line 391
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->loadPref()V

    .line 392
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    :cond_1
    iput v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 396
    :cond_2
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 397
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/DialtactsActivity;

    .line 398
    .local v1, mActivity:Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 399
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    .end local v1           #mActivity:Lcom/android/contacts/activities/DialtactsActivity;
    :cond_3
    return-void

    .line 367
    :cond_4
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 368
    const-string v2, "DSDS"

    invoke-static {v2}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    .line 369
    .local v0, dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, v4}, Landroid/plugin/dsds/PlugInDsdsService;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 371
    invoke-virtual {v0, v4}, Landroid/plugin/dsds/PlugInDsdsService;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber1:Ljava/lang/String;

    .line 372
    invoke-virtual {v0, v5}, Landroid/plugin/dsds/PlugInDsdsService;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber2:Ljava/lang/String;

    goto/16 :goto_0

    .line 375
    .end local v0           #dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0d0321

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1109
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1110
    const-string v0, "CallLogFragment"

    const-string v1, "========= onCreateContextMenu ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity;

    .line 1113
    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v0

    if-eq v0, v11, :cond_1

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    sput-boolean v10, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isFocusDetailView:Z

    .line 1121
    :try_start_0
    check-cast p3, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    const v0, 0x7f0900d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1129
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    .line 1131
    const v0, 0x7f0900d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1132
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    .line 1134
    const v0, 0x7f0900d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1135
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;

    .line 1137
    const v0, 0x7f0900d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1138
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1143
    const/16 v0, 0xa

    const v1, 0x7f0d0319

    invoke-interface {p1, v11, v0, v10, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .line 1147
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 1148
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1154
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    .line 1156
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1157
    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ur"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "iw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1158
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1159
    const-string v2, "\u200f\u202d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1170
    :cond_4
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1173
    const v0, 0x7f0900d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1174
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    move v0, v10

    .line 1179
    :goto_2
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dsds - simCardId :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    if-nez v0, :cond_c

    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber1:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 1185
    :goto_3
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dsds - mVoiceMailNumber :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1194
    const/4 v0, 0x3

    const v1, 0x7f0d0256

    invoke-interface {p1, v11, v0, v10, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1197
    :cond_6
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    .line 1203
    :cond_7
    sget v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    if-eqz v0, :cond_8

    sget v0, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    if-ne v0, v7, :cond_d

    .line 1205
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    move v0, v11

    .line 1215
    :goto_4
    if-eqz v1, :cond_f

    .line 1216
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 1217
    invoke-interface {p1, v11, v7, v10, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1218
    const/4 v0, 0x5

    const v2, 0x7f0d0322

    invoke-interface {p1, v11, v0, v10, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1223
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1232
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1234
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1235
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1236
    const-string v2, "reject_number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1237
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1239
    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1240
    const-string v0, " AND reject_match="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1241
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1242
    new-array v6, v11, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v6, v10

    .line 1246
    const-string v0, "ctc_vip_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1247
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v11, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v11, :cond_11

    .line 1249
    const/16 v0, 0xf

    const v1, 0x7f0d03b4

    invoke-interface {p1, v11, v0, v10, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1253
    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v11, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-ne v0, v11, :cond_12

    .line 1255
    const/16 v0, 0x10

    const v1, 0x7f0d03b3

    invoke-interface {p1, v11, v0, v10, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1284
    :cond_9
    :goto_8
    const/16 v0, 0xa

    const v1, 0x7f0d0319

    invoke-interface {p1, v11, v0, v10, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1286
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    const/16 v0, 0x11

    const v1, 0x7f0d031a

    invoke-interface {p1, v11, v0, v10, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1150
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1177
    :cond_b
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 1183
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber2:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    goto/16 :goto_3

    :cond_d
    move v0, v10

    move-object v1, v3

    .line 1212
    goto/16 :goto_4

    .line 1220
    :cond_e
    const/4 v0, 0x6

    const v2, 0x7f0d0323

    invoke-interface {p1, v11, v0, v10, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1221
    invoke-interface {p1, v11, v7, v10, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 1225
    :cond_f
    if-eqz v0, :cond_10

    .line 1226
    const/4 v0, 0x6

    const v1, 0x7f0d0323

    invoke-interface {p1, v11, v0, v10, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1228
    :cond_10
    invoke-interface {p1, v11, v7, v10, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1251
    :cond_11
    const/16 v0, 0xb

    const v1, 0x7f0d03b4

    invoke-interface {p1, v11, v0, v10, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_7

    .line 1257
    :cond_12
    const/16 v0, 0xc

    const v1, 0x7f0d03b3

    invoke-interface {p1, v11, v0, v10, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_8

    .line 1259
    :cond_13
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1260
    const/16 v0, 0x9

    const v1, 0x7f0d03be

    invoke-interface {p1, v11, v0, v10, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_8

    .line 1262
    :cond_14
    const-string v0, "feature_disable_call_rejection"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1264
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v0, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1268
    if-eqz v0, :cond_16

    .line 1269
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_15

    .line 1270
    const/4 v1, 0x7

    const v2, 0x7f0d0324

    invoke-interface {p1, v11, v1, v10, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1276
    :goto_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 1273
    :cond_15
    const/16 v1, 0x8

    const v2, 0x7f0d0329

    invoke-interface {p1, v11, v1, v10, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_9

    .line 1278
    :cond_16
    const-string v0, "CallLogFragment"

    const-string v1, "onCreateContextMenu - Cursor c is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1816
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1817
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    .line 1818
    const v0, 0x7f120004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1820
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const v10, 0x102000a

    const/4 v9, 0x1

    const/high16 v8, 0x41b0

    const/high16 v7, 0x4190

    const/4 v6, 0x0

    .line 546
    const-string v4, "CallLogFragment"

    const-string v5, "========= onCreateView ========="

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 552
    const v4, 0x7f040019

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    .line 555
    :cond_0
    const-string v4, "feature_spr"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "feature_cspire"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 557
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v5, 0x7f0900bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d032c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 558
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v5, 0x7f0900c0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d032c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 561
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 562
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 563
    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    .line 573
    :cond_2
    :goto_0
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 574
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/high16 v5, 0x3f00

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVelocityScale(F)V

    .line 577
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v9, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v4, :cond_8

    .line 578
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v5, 0x7f0900b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 580
    const-string v4, "feature_hvga"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 581
    const-string v4, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 582
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v5, 0x7f0900ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 583
    .local v0, mNoLogsText:Landroid/widget/TextView;
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 584
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v5, 0x7f0900bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 585
    .local v1, mNoLogsText1:Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 602
    .end local v0           #mNoLogsText:Landroid/widget/TextView;
    .end local v1           #mNoLogsText1:Landroid/widget/TextView;
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 604
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v5, 0x7f0900b7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logs_tab:Landroid/widget/LinearLayout;

    .line 606
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-nez v4, :cond_6

    .line 607
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 608
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->logs_tab:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 611
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    return-object v4

    .line 565
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 566
    invoke-virtual {p0, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    .line 567
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 568
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFocusable(Z)V

    goto/16 :goto_0

    .line 590
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v5, 0x7f0900bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 592
    const-string v4, "feature_hvga"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 593
    const-string v4, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 594
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v5, 0x7f0900bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 595
    .local v2, mNoLogsText2:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 596
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mFragmentView:Landroid/view/View;

    const v5, 0x7f0900c0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 597
    .local v3, mNoLogsText3:Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 961
    const-string v0, "CallLogFragment"

    const-string v1, "========= onDestroy ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onDestroy()V

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 969
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cleanupResouces()V

    .line 970
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 974
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onDestroyView()V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 979
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 982
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_1

    .line 986
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    if-eqz v0, :cond_2

    .line 989
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 992
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->cleanupResouces()V

    .line 993
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1870
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1901
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1872
    :pswitch_0
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1873
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openSelectSimDialog()V

    :goto_1
    move v0, v1

    .line 1877
    goto :goto_0

    .line 1875
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openViewByDialog()V

    goto :goto_1

    .line 1880
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1881
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1882
    const-string v2, "sim_id"

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1884
    :cond_1
    const-string v2, "view_by"

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1885
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->afterDeleteActivity:Z

    .line 1886
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 1887
    goto :goto_0

    .line 1891
    :pswitch_2
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1893
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1897
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 1898
    goto :goto_0

    .line 1895
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 1870
    nop

    :pswitch_data_0
    .packed-switch 0x7f090396
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 900
    const-string v0, "CallLogFragment"

    const-string v1, "========= onPause ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onPause()V

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z

    .line 907
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 911
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mBlockSettingDlgIsShowing:Z

    .line 913
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 915
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mBlockNumberFullErrorDlgIsShowing:Z

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    if-eqz v0, :cond_2

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 921
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 926
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 929
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 933
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 950
    :cond_5
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1824
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1825
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_4

    .line 1827
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1828
    const v0, 0x7f090397

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1829
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    if-eqz v0, :cond_0

    .line 1830
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAfterStartQuery:Z

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;->onUpdateEmptyView(Z)V

    .line 1841
    :cond_0
    :goto_0
    const-string v0, "disable_call_duration_information"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1842
    const v0, 0x7f090398

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1843
    if-eqz v0, :cond_1

    .line 1844
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1847
    :cond_1
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_3

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1848
    const v0, 0x7f090396

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1849
    const v1, 0x7f090398

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1851
    if-eqz v0, :cond_2

    .line 1852
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1854
    :cond_2
    if-eqz v1, :cond_3

    .line 1855
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAfterStartQuery:Z

    if-eqz v0, :cond_4

    .line 1863
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAfterStartQuery:Z

    .line 1866
    :cond_4
    return-void

    .line 1834
    :cond_5
    const v0, 0x7f090397

    :try_start_1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1835
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    if-eqz v0, :cond_0

    .line 1836
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAfterStartQuery:Z

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;->onUpdateEmptyView(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1858
    :catch_0
    move-exception v0

    .line 1859
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu called without inflate menu error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 1056
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    const-string v0, "WhichButton"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 1058
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    const-string v0, "SIMWhichButton"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    const-string v0, "SelectedPos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->selectedPosion:I

    .line 1065
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 757
    const-string v0, "CallLogFragment"

    const-string v1, "========= onResume ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onResume()V

    .line 759
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->loadPref()V

    .line 763
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSupportFolderType:Z

    if-eqz v0, :cond_1

    .line 764
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity;

    .line 765
    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 766
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    .line 773
    :cond_1
    const-string v0, "call_block_ui"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mBlockSettingDlgIsShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_2

    .line 776
    :try_start_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberSettingDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mBlockSettingDlgIsShowing:Z

    .line 785
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mBlockNumberFullErrorDlgIsShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_3

    .line 786
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockNumberFullErrorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 787
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mBlockNumberFullErrorDlgIsShowing:Z

    .line 792
    :cond_3
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 793
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity;

    .line 794
    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 795
    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V

    .line 810
    :cond_4
    :goto_1
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 811
    const-string v0, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 812
    const-string v0, "Home"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameCDMA:Ljava/lang/String;

    .line 813
    const-string v0, "Office"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->simNameGSM:Ljava/lang/String;

    .line 814
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    .line 815
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexGSM:I

    .line 817
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSimCardInfo()V

    .line 818
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 819
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getRegisterInfo()V

    .line 823
    :cond_6
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 838
    :cond_7
    :goto_2
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->keyPressed:Z

    .line 845
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 846
    const-string v1, "com.sec.android.app.action.changed_call_settings"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 847
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 878
    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 880
    :cond_8
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSupportFolderType:Z

    if-eqz v0, :cond_9

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    if-nez v0, :cond_e

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 883
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    .line 888
    :cond_9
    :goto_3
    return-void

    .line 778
    :catch_0
    move-exception v0

    .line 779
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 797
    :cond_a
    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V

    goto/16 :goto_1

    .line 801
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity;

    .line 802
    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 803
    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V

    .line 804
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->dataRefreshed:Z

    goto/16 :goto_1

    .line 826
    :cond_c
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 827
    const-string v0, "DSDS"

    invoke-static {v0}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    .line 828
    if-eqz v0, :cond_7

    .line 829
    invoke-virtual {v0, v3}, Landroid/plugin/dsds/PlugInDsdsService;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 830
    invoke-virtual {v0, v3}, Landroid/plugin/dsds/PlugInDsdsService;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber1:Ljava/lang/String;

    .line 831
    invoke-virtual {v0, v2}, Landroid/plugin/dsds/PlugInDsdsService;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber2:Ljava/lang/String;

    goto/16 :goto_2

    .line 834
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 885
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1043
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1045
    const-string v0, "WhichButton"

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1046
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    const-string v0, "SIMWhichButton"

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    const-string v0, "SelectedPos"

    sget v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->selectedPosion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1053
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/contacts/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 677
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onStart()V

    .line 678
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 954
    const-string v0, "CallLogFragment"

    const-string v1, "========= onStop ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onStop()V

    .line 956
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnExit()V

    .line 957
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 616
    const-string v0, "CallLogFragment"

    const-string v1, "========= onViewCreated ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 618
    const-string v0, "permanent_save_view_by_setting"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    if-eqz p2, :cond_0

    .line 620
    invoke-virtual {p0, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, currentCountryIso:Ljava/lang/String;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetDetailUpdate()V

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 626
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsCanFocus(Z)V

    .line 627
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    .line 629
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isUsingTwoPanel:Z

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPadding(Z)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 654
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2196
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========= onVisibilityChanged =========, visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2198
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2199
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTabChanged:Z

    .line 2204
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eq v0, p1, :cond_1

    .line 2205
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    .line 2207
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2208
    if-eqz v0, :cond_1

    .line 2209
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2213
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2214
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2215
    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnEntry(Z)V

    .line 2221
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 2222
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnExit()V

    .line 2223
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSupportFolderType:Z

    if-eqz v0, :cond_3

    .line 2224
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    if-nez v0, :cond_5

    .line 2225
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->resetSelectedPos()V

    .line 2226
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    .line 2240
    :cond_3
    :goto_1
    return-void

    .line 2217
    :cond_4
    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V

    goto :goto_0

    .line 2228
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    goto :goto_1
.end method

.method public openForList(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 896
    return-void
.end method

.method public reLoadDetail()V
    .locals 2

    .prologue
    .line 2465
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    if-eqz v0, :cond_0

    .line 2466
    const-string v0, "CallLogFragment"

    const-string v1, "reLoadDetail"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    if-eqz v0, :cond_1

    .line 2468
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    invoke-interface {v0, v1}, Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;->onViewContactAction(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V

    .line 2469
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 2470
    return-void
.end method

.method public registerForList(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 891
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 892
    return-void
.end method

.method public resetAfterDelete()V
    .locals 1

    .prologue
    .line 2478
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->afterDeleteActivity:Z

    if-eqz v0, :cond_0

    .line 2479
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;->onDetailClear()V

    .line 2480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 2481
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->afterDeleteActivity:Z

    .line 2483
    :cond_0
    return-void
.end method

.method public saveViewByPreference(I)V
    .locals 3
    .parameter

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "logslist_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1076
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1077
    const-string v1, "WhichButton"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1078
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1079
    return-void
.end method

.method public saveViewBySIMidPreference(I)V
    .locals 3
    .parameter

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "logslist_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1083
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1084
    const-string v1, "SIMWhichButton"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1085
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1086
    return-void
.end method

.method public saveViewStatusPreference()V
    .locals 3

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "logslist_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1069
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1070
    const-string v1, "reject_popup"

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1071
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1072
    return-void
.end method

.method public selectDetail(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V
    .locals 1
    .parameter "detailInfoData"

    .prologue
    .line 2458
    iget v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->pos:I

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->selectedPosion:I

    .line 2459
    iget v0, p1, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->prevPos:I

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevSelectedPosition:I

    .line 2460
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->prevDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    .line 2461
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;->onViewContactAction(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V

    .line 2462
    return-void
.end method

.method protected setCallLogAdapter(I)V
    .locals 1
    .parameter "selection"

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    .line 2117
    return-void
.end method

.method protected setCallLogAdapter(II)V
    .locals 1
    .parameter "selection"
    .parameter "simcardId"

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 2123
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2124
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSelectSimDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2127
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(II)V

    .line 2128
    return-void
.end method

.method public setLogsListActionListener(Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2454
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListener:Lcom/sec/android/app/dialertab/calllog/OnLogsListActionListener;

    .line 2455
    return-void
.end method

.method public setSplitBarEnabled(Z)V
    .locals 1
    .parameter "isSplitBarEnabled"

    .prologue
    .line 2486
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setSplitBarEnabled(Z)V

    .line 2487
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mIsSplitStatus:Z

    .line 2488
    return-void
.end method

.method protected final setSweepActionBarCallBack(Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;)V
    .locals 0
    .parameter "sweepActionBarCallBack"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 346
    return-void
.end method

.method public setSweepActionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2399
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    .line 2400
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateSweepActionFeasibility()V

    .line 2401
    return-void
.end method

.method protected final setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0
    .parameter "sweepActionListener"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 351
    return-void
.end method

.method public showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1484
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1485
    const v1, 0x7f040148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1487
    const v1, 0x7f090303

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1489
    const v2, 0x7f090304

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1492
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->requestFocus()Z

    .line 1493
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    .line 1494
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNumberForDialog:Ljava/lang/String;

    .line 1496
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1501
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0326

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0359

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02f8

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1518
    return-void
.end method

.method public showDeleteHistoryLogsConfirmDlg()V
    .locals 7

    .prologue
    const v6, 0x7f0d0358

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1673
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1674
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1676
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1677
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1682
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0319

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$14;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$14;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d02f8

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$13;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$13;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1710
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    .line 1712
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    const v1, 0x7f0d031a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1713
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1714
    return-void

    .line 1679
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showDeleteLogsConfirmDlg()V
    .locals 4

    .prologue
    .line 1522
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1523
    const v1, 0x7f0d0357

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0319

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d02f8

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1602
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    .line 1604
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    const v1, 0x7f0d0355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1605
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1607
    return-void
.end method

.method public showDeleteLogsConfirmDlg(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1610
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1611
    const v1, 0x7f0d0357

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0319

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;

    invoke-direct {v3, p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$12;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d02f8

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$11;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$11;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1664
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    const v1, 0x7f0d0355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1667
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mDeleteLogDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1669
    return-void
.end method

.method public startCallsQuery()V
    .locals 3

    .prologue
    .line 1015
    const-string v0, "CallLogFragment"

    const-string v1, "========= startCallsQuery ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setLoading(Z)V

    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1020
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    if-eqz v0, :cond_0

    .line 1021
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTabChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTabChanged:Z

    if-nez v0, :cond_3

    .line 1024
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->DBG:Z

    if-eqz v0, :cond_1

    .line 1025
    const-string v0, "CallLogFragment"

    const-string v1, "startCallsQuery call reLoadDetail() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->reLoadDetail()V

    .line 1034
    :cond_2
    :goto_0
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSimIdButton:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(II)V

    .line 1039
    :goto_1
    return-void

    .line 1028
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->reLoadDetail()V

    .line 1029
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mTabChanged:Z

    goto :goto_0

    .line 1037
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    goto :goto_1
.end method
