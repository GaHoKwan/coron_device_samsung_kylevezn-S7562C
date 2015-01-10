.class public Lcom/samsung/mms/util/SaveRestoreOperation;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;,
        Lcom/samsung/mms/util/SaveRestoreOperation$DialogSearchMenuBlockKeyListener;,
        Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;,
        Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;,
        Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
    }
.end annotation


# static fields
.field private static final ALL_SMS_TO_SAVE:I = 0x1

.field private static final ANY_MMS_IN_SELECTION:I = 0x2

.field private static final ANY_SMS_PRESENT:I = 0x7

.field private static final CHECK_FOR_DUPLICATES:I = 0x3

.field private static final INVALID_CHAR:[Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x32

.field public static final MAX_PATH_LENGTH:I = 0xfa

.field private static final RESTORE_ERROR:I = 0x5

.field private static final RESTORE_SUCCESS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Mms/SaveRestoreOperation"

.field private static final USER_CANCELLED:I = 0x6


# instance fields
.field private MAX_MESSAGES_PER_FILE:I

.field private SaveRestoreDestroyed:Z

.field private mActivity:Landroid/app/Activity;

.field mAltDialog:Landroid/app/AlertDialog;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFileCount:I

.field private mHandler:Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

.field private mIsThreadId:Z

.field mNoSdCard:Z

.field private mOkSaveBtn:Landroid/widget/Button;

.field private mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

.field mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

.field private mRestoreThread:Ljava/lang/Thread;

.field private mSDcardFolderName:Ljava/lang/String;

.field private mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

.field private mSdCardReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mToast:Landroid/widget/Toast;

.field mfileNameTextView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/mms/util/SaveRestoreOperation;->INVALID_CHAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z

    .line 77
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    .line 79
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    .line 80
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mNoSdCard:Z

    .line 81
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    .line 82
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreThread:Ljava/lang/Thread;

    .line 83
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    .line 84
    const-string v1, "/Messaging/"

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    .line 85
    iput v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I

    .line 86
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    .line 87
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    .line 482
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$DialogSearchMenuBlockKeyListener;

    invoke-direct {v1, p0, v3}, Lcom/samsung/mms/util/SaveRestoreOperation$DialogSearchMenuBlockKeyListener;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Lcom/samsung/mms/util/SaveRestoreOperation$1;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 489
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$11;

    invoke-direct {v1, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$11;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    .line 507
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$12;

    invoke-direct {v1, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$12;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    .line 96
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    .line 98
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .parameter "activity"
    .parameter "dialogListener"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z

    .line 77
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    .line 79
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    .line 80
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mNoSdCard:Z

    .line 81
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    .line 82
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreThread:Ljava/lang/Thread;

    .line 83
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    .line 84
    const-string v1, "/Messaging/"

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    .line 85
    iput v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I

    .line 86
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    .line 87
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    .line 482
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$DialogSearchMenuBlockKeyListener;

    invoke-direct {v1, p0, v3}, Lcom/samsung/mms/util/SaveRestoreOperation$DialogSearchMenuBlockKeyListener;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Lcom/samsung/mms/util/SaveRestoreOperation$1;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 489
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$11;

    invoke-direct {v1, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$11;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    .line 507
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$12;

    invoke-direct {v1, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$12;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    .line 111
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    .line 112
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    .line 113
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    .line 114
    iput-object p2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

    invoke-direct {v1, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mHandler:Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/util/SaveRestoreOperation;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/mms/util/SaveRestoreOperation;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/mms/util/SaveRestoreOperation;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/util/SaveRestoreOperation;->showErrorSuccessRestoreDialog(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/mms/util/SaveRestoreOperation;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation;->fileAlreadyExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/mms/util/SaveRestoreOperation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mHandler:Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/mms/util/SaveRestoreOperation;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/mms/util/SaveRestoreOperation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/mms/util/SaveRestoreOperation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/mms/util/SaveRestoreOperation;[JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/util/SaveRestoreOperation;->checkIfMmsInSelection([JZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/mms/util/SaveRestoreOperation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/mms/util/SaveRestoreOperation;->showNoSmsSelectedDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/mms/util/SaveRestoreOperation;[J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation;->showMmsSelectedDialog([J)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/mms/util/SaveRestoreOperation;[JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/util/SaveRestoreOperation;->showSavedMsgsListDialog([JZ)V

    return-void
.end method

.method private checkIfAnySmsPresent([JZ)V
    .locals 2
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1, p2}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    .line 295
    return-void
.end method

.method private checkIfMmsInSelection([JZ)V
    .locals 2
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2}, Lcom/android/mms/data/Conversation;->startQueryHaveMmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    .line 303
    return-void
.end method

.method private checkIfSmsSelected([JZ)V
    .locals 2
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    .line 299
    return-void
.end method

.method private constructDefaultName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 527
    const-string v1, "yyyyMMddHHmmss"

    .line 528
    .local v1, format:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 529
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private fileAlreadyExists(Ljava/lang/String;)Z
    .locals 5
    .parameter "filename"

    .prologue
    .line 485
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 486
    .local v0, sdCard:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private showErrorSuccessRestoreDialog(II)V
    .locals 3
    .parameter "dlgTitle"
    .parameter "dlgMessage"

    .prologue
    .line 354
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 355
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 357
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 358
    const v1, 0x7f0a011d

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$4;

    invoke-direct {v2, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$4;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 366
    return-void
.end method

.method private showMmsSelectedDialog([J)V
    .locals 3
    .parameter "ids"

    .prologue
    .line 327
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a041f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a04ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a011d

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$3;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;[J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a006b

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$2;

    invoke-direct {v2, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$2;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 343
    return-void
.end method

.method private showNoSmsSelectedDialog()V
    .locals 3

    .prologue
    .line 310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a04ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a04f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a011d

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$1;

    invoke-direct {v2, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$1;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 324
    return-void
.end method

.method private showSavedMsgsListDialog([JZ)V
    .locals 6
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    const/4 v3, 0x1

    .line 370
    iget v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I

    if-le v1, v3, :cond_0

    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a041f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 373
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0505

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 374
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 375
    const v1, 0x7f0a011d

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$5;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;[J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    const v1, 0x7f0a006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 386
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z

    invoke-virtual {p0, p1, v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->showSaveFileNameDialog([JZ)V

    goto :goto_0
.end method

.method private writeFile(Ljava/io/File;[BI)Z
    .locals 5
    .parameter "file"
    .parameter "input"
    .parameter "encryptedFlag"

    .prologue
    .line 780
    const/4 v3, 0x0

    .line 781
    .local v3, ok:Z
    const/4 v1, 0x0

    .line 783
    .local v1, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 785
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .local v2, fOut:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 787
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    .line 788
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 789
    const/4 v3, 0x1

    .line 795
    if-eqz v2, :cond_0

    .line 796
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 804
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return v3

    .line 798
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 799
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    .line 802
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 790
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 791
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 795
    if-eqz v1, :cond_1

    .line 796
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 798
    :catch_2
    move-exception v0

    .line 799
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 794
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 795
    :goto_2
    if-eqz v1, :cond_2

    .line 796
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 800
    :cond_2
    :goto_3
    throw v4

    .line 798
    :catch_3
    move-exception v0

    .line 799
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 794
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 790
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public OnDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 127
    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    .line 129
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    if-eqz v0, :cond_2

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 146
    :cond_3
    return-void
.end method

.method public declared-synchronized SetOnSaveCompleteListener(Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkForDuplicates([J)V
    .locals 3
    .parameter "ids"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    .line 307
    return-void
.end method

.method public getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
    .locals 3
    .parameter "ctx"
    .parameter "maxSize"

    .prologue
    .line 810
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 811
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$13;

    invoke-direct {v2, p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$13;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 852
    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$14;

    invoke-direct {v2, p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$14;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 868
    return-object v0
.end method

.method public restoreSmsFromSdCard()V
    .locals 2

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    if-nez v0, :cond_0

    .line 703
    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "starting DownloadFilesTask"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    new-instance v0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Lcom/samsung/mms/util/SaveRestoreOperation$1;)V

    iput-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    .line 705
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 707
    :cond_0
    return-void
.end method

.method public saveSmsToSdCard(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 13
    .parameter "cursor"
    .parameter "fileName"

    .prologue
    .line 533
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 534
    .local v9, state:Ljava/lang/String;
    const/4 v6, 0x0

    .line 536
    .local v6, ok:Z
    const/4 v5, 0x1

    .line 537
    .local v5, mFileCount:I
    const/4 v2, 0x0

    .line 539
    .local v2, file:Ljava/io/File;
    :try_start_0
    const-string v11, "unmounted"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "removed"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "mounted_ro"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 540
    :cond_0
    const-string v11, "Mms/SaveRestoreOperation"

    const-string v12, "SDcard not present, cannot proceed with save"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 580
    .end local v6           #ok:Z
    .local v7, ok:I
    :goto_0
    return v7

    .line 544
    .end local v7           #ok:I
    .restart local v6       #ok:Z
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 545
    .local v8, sdCard:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 546
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_2

    .line 547
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 552
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    iget v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    div-int v5, v11, v12

    .line 553
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 555
    const/4 v11, 0x1

    if-ne v5, v11, :cond_3

    .line 556
    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 557
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 558
    const/4 v11, 0x0

    invoke-virtual {p0, p1, v3, v11}, Lcom/samsung/mms/util/SaveRestoreOperation;->writeToFile(Landroid/database/Cursor;Ljava/io/File;Z)V

    .line 559
    const/4 v6, 0x1

    move-object v2, v3

    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v8           #sdCard:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :goto_1
    move v7, v6

    .line 580
    .restart local v7       #ok:I
    goto :goto_0

    .line 562
    .end local v7           #ok:I
    .restart local v0       #dir:Ljava/io/File;
    .restart local v8       #sdCard:Ljava/io/File;
    :cond_3
    const/4 v4, 0x0

    .local v4, i:I
    move-object v3, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :goto_2
    if-ge v4, v5, :cond_6

    .line 563
    const/4 v10, 0x1

    .line 564
    .local v10, success:Z
    new-instance v2, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 565
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 566
    if-eqz v4, :cond_4

    .line 568
    iget v11, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    mul-int/2addr v11, v4

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    .line 570
    :cond_4
    if-eqz v10, :cond_5

    .line 571
    const/4 v11, 0x1

    invoke-virtual {p0, p1, v2, v11}, Lcom/samsung/mms/util/SaveRestoreOperation;->writeToFile(Landroid/database/Cursor;Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 562
    :cond_5
    add-int/lit8 v4, v4, 0x1

    move-object v3, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_2

    .line 573
    .end local v10           #success:Z
    :cond_6
    const/4 v6, 0x1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1

    .line 575
    .end local v0           #dir:Ljava/io/File;
    .end local v4           #i:I
    .end local v8           #sdCard:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 576
    .local v1, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 577
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 578
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 577
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v8       #sdCard:Ljava/io/File;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_4

    .line 575
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3
.end method

.method public showSaveFileNameDialog([JZ)V
    .locals 10
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    const/4 v9, 0x1

    .line 389
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a04ff

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 391
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 392
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03006e

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 394
    .local v1, filenameView:Landroid/view/View;
    const v5, 0x7f0e01bf

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 395
    .local v3, messageTextView:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 396
    const v5, 0x7f0a050e

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 398
    :cond_0
    const v5, 0x7f0e01c0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    .line 399
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    if-eqz v5, :cond_1

    .line 400
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/samsung/mms/util/SaveRestoreOperation;->constructDefaultName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 402
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 403
    .local v4, sdCardPathLength:I
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v6, v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 404
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 405
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 406
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    const v6, 0x84001

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 407
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/samsung/mms/util/SaveRestoreOperation$6;

    invoke-direct {v6, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$6;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    const-wide/16 v7, 0x12c

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 415
    .end local v4           #sdCardPathLength:I
    :cond_1
    const v5, 0x7f0a006a

    new-instance v6, Lcom/samsung/mms/util/SaveRestoreOperation$7;

    invoke-direct {v6, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$7;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    const v5, 0x7f0a006b

    new-instance v6, Lcom/samsung/mms/util/SaveRestoreOperation$8;

    invoke-direct {v6, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$8;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    .line 432
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/samsung/mms/util/SaveRestoreOperation$9;

    invoke-direct {v6, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$9;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 440
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 441
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 443
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mOkSaveBtn:Landroid/widget/Button;

    .line 444
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mOkSaveBtn:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/mms/util/SaveRestoreOperation$10;

    invoke-direct {v6, p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$10;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;[J)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    return-void
.end method

.method public startRestoreOperation(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    .line 291
    return-void
.end method

.method public startSaveOperation([JZ)V
    .locals 1
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    .line 277
    iput-boolean p2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z

    .line 278
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/util/SaveRestoreOperation;->checkIfAnySmsPresent([JZ)V

    .line 287
    :cond_0
    return-void
.end method

.method public writeToFile(Landroid/database/Cursor;Ljava/io/File;Z)V
    .locals 15
    .parameter "cursor"
    .parameter "file"
    .parameter "isMultiple"

    .prologue
    .line 584
    const/4 v5, 0x0

    .line 585
    .local v5, messageCount:I
    const-wide/16 v10, 0x1

    .line 586
    .local v10, threadId:J
    const-wide/16 v6, 0x1

    .line 589
    .local v6, newthreadId:J
    const/4 v3, 0x0

    .line 591
    .local v3, fileos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 594
    .end local v3           #fileos:Ljava/io/FileOutputStream;
    .local v4, fileos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    .line 597
    .local v8, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const/4 v12, 0x0

    invoke-interface {v8, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 600
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 602
    const-string v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 605
    const/4 v12, 0x0

    const-string v13, "file"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 606
    const/4 v12, 0x0

    const-string v13, "ver"

    const-string v14, "2"

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 609
    :cond_0
    const-string v12, "thread_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 610
    const-string v12, "Mms/SaveRestoreOperation"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "***Starting new ThreadId value is:***"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v12, 0x0

    const-string v13, "thread"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 613
    const/4 v12, 0x0

    const-string v13, "n"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 615
    :cond_1
    const-string v12, "thread_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 617
    cmp-long v12, v6, v10

    if-eqz v12, :cond_4

    .line 618
    const-string v12, "Mms/SaveRestoreOperation"

    const-string v13, "***break, create a new thread layout***"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 669
    const/4 v12, 0x0

    const-string v13, "thread"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 672
    if-eqz p3, :cond_8

    iget v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    if-lt v5, v12, :cond_8

    .line 673
    const-string v12, "Mms/SaveRestoreOperation"

    const-string v13, "***break, for the outer while loop***"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_1
    const/4 v12, 0x0

    const-string v13, "file"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 680
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 682
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 691
    if-eqz v4, :cond_2

    .line 692
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    move-object v3, v4

    .line 699
    .end local v4           #fileos:Ljava/io/FileOutputStream;
    .end local v8           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3       #fileos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return-void

    .line 622
    .end local v3           #fileos:Ljava/io/FileOutputStream;
    .restart local v4       #fileos:Ljava/io/FileOutputStream;
    .restart local v8       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    const/4 v12, 0x0

    :try_start_3
    const-string v13, "message"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    const/4 v12, 0x0

    const-string v13, "type"

    const-string v14, "SMS"

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    const/4 v12, 0x0

    const-string v13, "address"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    const-string v12, "address"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a000f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, address:Ljava/lang/String;
    :goto_3
    invoke-interface {v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    const/4 v12, 0x0

    const-string v13, "address"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    const/4 v12, 0x0

    const-string v13, "body"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    const-string v12, "body"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 635
    .local v9, str1:Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 636
    const-string v12, "UTF-8"

    invoke-static {v9, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 640
    :goto_4
    const/4 v12, 0x0

    const-string v13, "body"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    const/4 v12, 0x0

    const-string v13, "date"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 643
    const-string v12, "date"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 644
    const/4 v12, 0x0

    const-string v13, "date"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    const/4 v12, 0x0

    const-string v13, "read"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    const-string v12, "read"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    const/4 v12, 0x0

    const-string v13, "read"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    const/4 v12, 0x0

    const-string v13, "type"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 651
    const-string v12, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    const/4 v12, 0x0

    const-string v13, "type"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 654
    const/4 v12, 0x0

    const-string v13, "locked"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    const-string v12, "locked"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 656
    const/4 v12, 0x0

    const-string v13, "locked"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 658
    const/4 v12, 0x0

    const-string v13, "message"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 660
    add-int/lit8 v5, v5, 0x1

    .line 662
    if-eqz p3, :cond_7

    iget v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    if-lt v5, v12, :cond_7

    .line 663
    const-string v12, "Mms/SaveRestoreOperation"

    const-string v13, "***break, for the inner while loop****"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 684
    .end local v1           #address:Ljava/lang/String;
    .end local v8           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v9           #str1:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 685
    .end local v4           #fileos:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v3       #fileos:Ljava/io/FileOutputStream;
    :goto_5
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 691
    if-eqz v3, :cond_3

    .line 692
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 694
    :catch_1
    move-exception v2

    .line 695
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 626
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileos:Ljava/io/FileOutputStream;
    .restart local v4       #fileos:Ljava/io/FileOutputStream;
    .restart local v8       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_5
    :try_start_6
    const-string v12, "address"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "-"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 638
    .restart local v1       #address:Ljava/lang/String;
    .restart local v9       #str1:Ljava/lang/String;
    :cond_6
    const-string v12, ""

    invoke-interface {v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 686
    .end local v1           #address:Ljava/lang/String;
    .end local v8           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v9           #str1:Ljava/lang/String;
    :catch_2
    move-exception v2

    move-object v3, v4

    .line 687
    .end local v4           #fileos:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #fileos:Ljava/io/FileOutputStream;
    :goto_6
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 691
    if-eqz v3, :cond_3

    .line 692
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 694
    :catch_3
    move-exception v2

    .line 695
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 666
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileos:Ljava/io/FileOutputStream;
    .restart local v1       #address:Ljava/lang/String;
    .restart local v4       #fileos:Ljava/io/FileOutputStream;
    .restart local v8       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v9       #str1:Ljava/lang/String;
    :cond_7
    :try_start_9
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_0

    .line 677
    .end local v1           #address:Ljava/lang/String;
    .end local v9           #str1:Ljava/lang/String;
    :cond_8
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_1

    .line 694
    :catch_4
    move-exception v2

    .line 695
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v4

    .line 698
    .end local v4           #fileos:Ljava/io/FileOutputStream;
    .restart local v3       #fileos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 690
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v12

    .line 691
    :goto_7
    if-eqz v3, :cond_9

    .line 692
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 696
    :cond_9
    :goto_8
    throw v12

    .line 694
    :catch_5
    move-exception v2

    .line 695
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 690
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileos:Ljava/io/FileOutputStream;
    .restart local v4       #fileos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v3, v4

    .end local v4           #fileos:Ljava/io/FileOutputStream;
    .restart local v3       #fileos:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 686
    :catch_6
    move-exception v2

    goto :goto_6

    .line 684
    :catch_7
    move-exception v2

    goto :goto_5
.end method
