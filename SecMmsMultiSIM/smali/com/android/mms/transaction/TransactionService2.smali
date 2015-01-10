.class public Lcom/android/mms/transaction/TransactionService2;
.super Landroid/app/Service;
.source "TransactionService2.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;,
        Lcom/android/mms/transaction/TransactionService2$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ONALARM:Ljava/lang/String; = "android.intent.action.ACTION_ONALARM"

.field private static final ACTION_RELEASE:Ljava/lang/String; = "com.android.mms.intent.action.WAKE_LOCK_RELEASE"

.field private static final APN_EXTENSION_WAIT:I = 0x7530

.field private static final DELAY_AFTER_SWITCHED_NETWORK_AVAILABLE:I = 0x3e8

.field private static final DELAY_TO_SEND_PENDING_TRANSACTION_TIME:I = 0xbb8

.field private static final DURATION_WAIT_DATA_NETWORK_TO_SWTICH:I = 0xea60

.field private static final EVENT_APN_CHANGE_WAITING_TIME_OUT:I = 0x6

.field private static final EVENT_CONTINUE_MMS_CONNECTIVITY:I = 0x3

.field private static final EVENT_DATA_STATE_CHANGED:I = 0x2

.field private static final EVENT_DELAY_TO_HANDLE_PENDING_TRANSACTION:I = 0x5

.field private static final EVENT_HANDLE_NEXT_PENDING_TRANSACTION:I = 0x4

.field private static final EVENT_QUIT:I = 0x64

.field private static final EVENT_TRANSACTION_REQUEST:I = 0x1

.field private static final MSG_SWITCHED_NETWORK_CHECK:I = 0x1

.field private static final MSG_WAITING_NETWORK_SWITCH_TIME_OUT:I = 0x2

.field private static final NETWORK_AVAILABLE:I = 0x1

.field private static final NETWORK_NOT_AVAILABLE:I = 0x0

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "Mms:transaction2"

.field private static final TOAST_DOWNLOAD_LATER:I = 0x2

.field private static final TOAST_MSG_QUEUED:I = 0x1

.field private static final TOAST_NONE:I = -0x1

.field public static final TRANSACTION_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.TRANSACTION_COMPLETED_ACTION"

.field private static mSwitching:Z


# instance fields
.field private FdnEnabled:Z

.field private ForceConnectMms:Z

.field private mApnChanged:Z

.field private mConnMgr:Landroid/net/MultiSimConnectivityManager;

.field private mOriginAPN:I

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;

.field private mSavedFlags:I

.field private mSavedIntent:Landroid/content/Intent;

.field private mSavedStartId:I

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mSwitchedHandler:Landroid/os/Handler;

.field private mToast:Landroid/widget/Toast;

.field public mToastHandler:Landroid/os/Handler;

.field private mToastType:I

.field private mWaitingMobileMmsConnected:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private noServiceNeedtoSend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 184
    iput v1, p0, Lcom/android/mms/transaction/TransactionService2;->mOriginAPN:I

    .line 185
    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService2;->mApnChanged:Z

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mProcessing:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mPending:Ljava/util/ArrayList;

    .line 210
    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService2;->noServiceNeedtoSend:Z

    .line 211
    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService2;->mWaitingMobileMmsConnected:Z

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService2;->mToastType:I

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mToast:Landroid/widget/Toast;

    .line 216
    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService2;->ForceConnectMms:Z

    .line 218
    new-instance v0, Lcom/android/mms/transaction/TransactionService2$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService2$1;-><init>(Lcom/android/mms/transaction/TransactionService2;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mToastHandler:Landroid/os/Handler;

    .line 268
    new-instance v0, Lcom/android/mms/transaction/TransactionService2$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService2$2;-><init>(Lcom/android/mms/transaction/TransactionService2;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mSwitchedHandler:Landroid/os/Handler;

    .line 294
    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService2;->FdnEnabled:Z

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/TransactionService2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lcom/android/mms/transaction/TransactionService2;->mToastType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/TransactionService2;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput p1, p0, Lcom/android/mms/transaction/TransactionService2;->mToastType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/TransactionService2;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/TransactionService2;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/transaction/TransactionService2;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService2;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/TransactionService2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService2;->renewMmsConnectivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/TransactionService2;)Lcom/android/mms/transaction/TransactionService2$ServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/TransactionService2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService2;->FdnEnabled:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/transaction/TransactionService2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService2;->FdnEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/TransactionService2;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService2;->getFdnList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/TransactionService2;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService2;->isGprsCodeInFdnList([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/TransactionService2;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mSwitchedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/transaction/TransactionService2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService2;->mWaitingMobileMmsConnected:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/transaction/TransactionService2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService2;->mWaitingMobileMmsConnected:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/TransactionService2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService2;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 140
    sput-boolean p0, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/TransactionService2;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mSavedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/TransactionService2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lcom/android/mms/transaction/TransactionService2;->mSavedFlags:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/TransactionService2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget v0, p0, Lcom/android/mms/transaction/TransactionService2;->mSavedStartId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/TransactionService2;Landroid/content/Intent;IIZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/TransactionService2;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/TransactionService2;)Landroid/net/MultiSimConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/TransactionService2;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 9

    .prologue
    .line 941
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 944
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/android/mms/transaction/TransactionService2;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 945
    .local v1, i:Landroid/content/Intent;
    const-string v7, "com.android.mms.intent.action.WAKE_LOCK_RELEASE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const/4 v7, 0x0

    const/high16 v8, 0x800

    invoke-static {p0, v7, v1, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 948
    .local v4, pi:Landroid/app/PendingIntent;
    const-string v7, "alarm"

    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 949
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 950
    .local v5, timeNow:J
    const-wide/32 v7, 0xea60

    add-long v2, v5, v7

    .line 951
    .local v2, nextCheckTime:J
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 952
    return-void
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    .prologue
    .line 931
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 932
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 933
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 934
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 931
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getFdnList()[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 1807
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://icc2/fdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1809
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1830
    :cond_0
    :goto_0
    return-object v2

    .line 1812
    :cond_1
    const/4 v10, 0x0

    .line 1814
    .local v10, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1815
    .end local v10           #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1816
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1818
    .local v6, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v6, :cond_2

    .line 1819
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1820
    .local v9, number:Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1818
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1824
    .end local v9           #number:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1827
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1828
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    goto :goto_0

    .line 1824
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v11           #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v10           #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11           #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method private getTransactionType(I)I
    .locals 3
    .parameter "msgType"

    .prologue
    .line 662
    sparse-switch p1, :sswitch_data_0

    .line 670
    const-string v0, "Mms:transaction2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService2] Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 664
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 666
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 668
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 662
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private isDataNetworkAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 649
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    const-string v1, "Mms:transaction2"

    const-string v2, "TAG_CSCFEATURE_RIL_FORCE_CONNECT_MMS is enabled"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    :goto_0
    return v0

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 658
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGprsCodeInFdnList([Ljava/lang/String;)Z
    .locals 4
    .parameter "fdnList"

    .prologue
    .line 1834
    if-nez p1, :cond_1

    .line 1835
    const/4 v0, 0x0

    .line 1845
    :cond_0
    :goto_0
    return v0

    .line 1837
    :cond_1
    const/4 v0, 0x0

    .line 1839
    .local v0, exist:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1840
    const-string v2, "*99#"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "*"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1841
    :cond_2
    const/4 v0, 0x1

    .line 1842
    goto :goto_0

    .line 1839
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 643
    .local v0, ni:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    goto :goto_0
.end method

.method private static isTransientFailure(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 618
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    .locals 19
    .parameter "serviceId"
    .parameter "txnBundle"
    .parameter "noNetwork"

    .prologue
    .line 678
    const-string v3, "persist.sys.dataprefer.simid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 679
    .local v12, mDataNetwork:I
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v18

    .line 681
    .local v18, multiSimNum:I
    if-eqz p3, :cond_3

    const/4 v3, 0x1

    move/from16 v0, v18

    if-le v0, v3, :cond_0

    const/4 v3, 0x1

    if-ne v12, v3, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/transaction/TransactionService2;->FdnEnabled:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 685
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/4 v8, 0x1

    .line 686
    .local v8, dataSuspended:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v13

    .line 687
    .local v13, mTransactionType:I
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v9

    .line 688
    .local v9, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v9}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v10

    .line 690
    .local v10, isAutoDownload:Z
    const-string v3, "Mms:transaction2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] launchTransaction: dataSuspended : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    if-eqz v8, :cond_1

    if-nez v13, :cond_1

    if-eqz v10, :cond_1

    .line 693
    const-string v3, "Mms:transaction2"

    const-string v4, "[TransactionService] mark error type to ERROR_TYPE_GENERIC"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 695
    .local v2, mContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 696
    .local v11, mContentResolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 698
    .local v14, mUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v5, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 699
    .local v5, values:Landroid/content/ContentValues;
    const-string v3, "err_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 701
    .local v16, msgId:J
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 705
    .end local v2           #mContext:Landroid/content/Context;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v11           #mContentResolver:Landroid/content/ContentResolver;
    .end local v14           #mUri:Landroid/net/Uri;
    .end local v16           #msgId:J
    :cond_1
    const-string v3, "Mms:transaction2"

    const-string v4, "[TransactionService2] launchTransaction: no network error!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/TransactionService2;->onNetworkUnavailable(II)V

    .line 707
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->registerForConnectionStateChanges(Landroid/content/Context;)V

    .line 726
    .end local v8           #dataSuspended:Z
    .end local v9           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v10           #isAutoDownload:Z
    .end local v13           #mTransactionType:I
    :goto_1
    return-void

    .line 685
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 714
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 715
    .local v15, msg:Landroid/os/Message;
    move/from16 v0, p1

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 717
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 718
    const/4 v3, 0x0

    iput v3, v15, Landroid/os/Message;->arg2:I

    .line 722
    :goto_2
    move-object/from16 v0, p2

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 724
    const-string v3, "Mms:transaction2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService2] launchTransaction: sending message "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    invoke-virtual {v3, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 720
    :cond_4
    const/4 v3, 0x1

    iput v3, v15, Landroid/os/Message;->arg2:I

    goto :goto_2
.end method

.method private onNetworkUnavailable(I)V
    .locals 2
    .parameter "serviceId"

    .prologue
    .line 745
    const/4 v0, 0x1

    .line 747
    .local v0, toastType:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 751
    :cond_0
    return-void
.end method

.method private onNetworkUnavailable(II)V
    .locals 5
    .parameter "serviceId"
    .parameter "transactionType"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 729
    const-string v0, "Mms:transaction2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService2] onNetworkUnavailable: sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    if-ne p2, v3, :cond_3

    .line 732
    iput v4, p0, Lcom/android/mms/transaction/TransactionService2;->mToastType:I

    .line 736
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/mms/transaction/TransactionService2;->mToastType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 737
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mToastHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/mms/transaction/TransactionService2;->mToastType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 740
    :cond_1
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    if-nez v0, :cond_2

    .line 741
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    .line 742
    :cond_2
    return-void

    .line 733
    :cond_3
    if-ne p2, v4, :cond_0

    .line 734
    iput v3, p0, Lcom/android/mms/transaction/TransactionService2;->mToastType:I

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 5

    .prologue
    .line 956
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 957
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 960
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/TransactionService2;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 961
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.android.mms.intent.action.WAKE_LOCK_RELEASE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 964
    .local v2, pi:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 965
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 966
    return-void
.end method

.method private renewMmsConnectivity()V
    .locals 4

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1608
    return-void
.end method

.method private startCommand(Landroid/content/Intent;IIZ)I
    .locals 22
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"
    .parameter "noNetwork"

    .prologue
    .line 468
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService2;->isDataNetworkAvailable()Z

    move-result v18

    if-nez v18, :cond_0

    const/4 v14, 0x1

    .line 470
    .local v14, noDataNetwork:Z
    :goto_0
    const-string v18, "Mms:transaction2"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService2] onStart: #"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v18, "Mms:transaction2"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService2]     : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " intent="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v19, "Mms:transaction2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService2]     networkAvailable="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez p4, :cond_1

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v19, "Mms:transaction2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService2]     DatanetworkAvailable="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v14, :cond_2

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v18, "Mms:transaction2"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService2]     PROPERTY_DATA_MMS_BUSY:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "persist.data.mms.busy"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v18, "Mms:transaction2"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService2]     PROPERTY_DATA_PREFER_SIM_ID:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "persist.sys.dataprefer.simid"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, action:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v18, "com.android.mms.intent.action.WAKE_LOCK_RELEASE"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 481
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService2;->releaseWakeLock()V

    .line 482
    const/16 v18, 0x2

    .line 599
    :goto_3
    return v18

    .line 468
    .end local v3           #action:Ljava/lang/String;
    .end local v14           #noDataNetwork:Z
    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 472
    .restart local v14       #noDataNetwork:Z
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 473
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .line 487
    .restart local v3       #action:Ljava/lang/String;
    :cond_3
    :try_start_0
    const-string v18, "phoneext2"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v15

    .line 488
    .local v15, phone:Lcom/android/internal/telephony/ITelephonyExt;
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/transaction/TransactionService2;->FdnEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 495
    .end local v15           #phone:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v13

    .line 497
    .local v13, multiSimNum:I
    const-string v18, "persist.sys.dataprefer.simid"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 499
    .local v11, mDataNetwork:I
    const-string v18, "android.intent.action.ACTION_ONALARM"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    if-nez v18, :cond_d

    .line 501
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(IJ)Landroid/database/Cursor;

    move-result-object v8

    .line 503
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_c

    .line 505
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 507
    .local v7, count:I
    const-string v18, "Mms:transaction2"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService2] onStart: cursor.count="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    if-nez v7, :cond_5

    .line 510
    const-string v18, "Mms:transaction2"

    const-string v19, "[TransactionService2] onStart: no pending messages. Stopping service."

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 513
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService2;->stopSelfIfIdle(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    const/16 v18, 0x2

    .line 576
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 489
    .end local v7           #count:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #mDataNetwork:I
    .end local v13           #multiSimNum:I
    :catch_0
    move-exception v9

    .line 490
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 491
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 492
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 517
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v7       #count:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #mDataNetwork:I
    .restart local v13       #multiSimNum:I
    :cond_5
    :try_start_2
    const-string v18, "msg_id"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 518
    .local v5, columnIndexOfMsgId:I
    const-string v18, "msg_type"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 520
    .local v6, columnIndexOfMsgType:I
    if-eqz p4, :cond_7

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_7

    .line 522
    :cond_6
    const-string v18, "Mms:transaction2"

    const-string v19, "[TransactionService2] onStart: registerForConnectionStateChanges"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 525
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 526
    .local v12, msgType:I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/transaction/TransactionService2;->getTransactionType(I)I

    move-result v16

    .line 527
    .local v16, transactionType:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->registerForConnectionStateChanges(Landroid/content/Context;)V

    .line 529
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService2;->onNetworkUnavailable(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 530
    const/16 v18, 0x2

    .line 576
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 552
    :pswitch_0
    :try_start_3
    const-string v18, "err_type"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 555
    .local v10, failureType:I
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService2;->isTransientFailure(I)Z

    move-result v18

    if-nez v18, :cond_a

    .line 556
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 557
    const-string v18, "Mms:transaction2"

    const-string v19, "[TransactionService2 State change to unstart."

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    sget-object v18, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 559
    .local v17, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v18

    const/16 v19, 0x80

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 533
    .end local v10           #failureType:I
    .end local v12           #msgType:I
    .end local v16           #transactionType:I
    .end local v17           #uri:Landroid/net/Uri;
    :cond_7
    :goto_5
    :pswitch_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 534
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 535
    .restart local v12       #msgType:I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/transaction/TransactionService2;->getTransactionType(I)I

    move-result v16

    .line 536
    .restart local v16       #transactionType:I
    const-string v18, "Mms:transaction2"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[TransactionService2] transactionType : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    if-eqz p4, :cond_9

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_8

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/transaction/TransactionService2;->FdnEnabled:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 541
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->registerForConnectionStateChanges(Landroid/content/Context;)V

    .line 542
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService2;->onNetworkUnavailable(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 543
    const/16 v18, 0x2

    .line 576
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 545
    :cond_9
    packed-switch v16, :pswitch_data_0

    .line 565
    :cond_a
    :pswitch_2
    :try_start_4
    sget-object v18, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 568
    .restart local v17       #uri:Landroid/net/Uri;
    new-instance v4, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 571
    .local v4, args:Lcom/android/mms/transaction/TransactionBundle;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v4, v2}, Lcom/android/mms/transaction/TransactionService2;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 576
    .end local v4           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v5           #columnIndexOfMsgId:I
    .end local v6           #columnIndexOfMsgType:I
    .end local v7           #count:I
    .end local v12           #msgType:I
    .end local v16           #transactionType:I
    .end local v17           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v18

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v18

    .restart local v5       #columnIndexOfMsgId:I
    .restart local v6       #columnIndexOfMsgType:I
    .restart local v7       #count:I
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 599
    .end local v5           #columnIndexOfMsgId:I
    .end local v6           #columnIndexOfMsgType:I
    .end local v7           #count:I
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_6
    const/16 v18, 0x2

    goto/16 :goto_3

    .line 579
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_c
    const-string v18, "Mms:transaction2"

    const-string v19, "[TransactionService2] onStart: no pending messages. Stopping service."

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 581
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService2;->stopSelfIfIdle(I)V

    goto :goto_6

    .line 584
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_d
    const-string v18, "Mms:transaction2"

    const-string v19, "[TransactionService2] onStart: launch transaction..."

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    if-eqz p4, :cond_10

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_e

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_10

    .line 588
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 589
    const-string v18, "Mms:transaction2"

    const-string v19, "onStart: registerForConnectionStateChanges"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->registerForConnectionStateChanges(Landroid/content/Context;)V

    .line 596
    :cond_10
    new-instance v4, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 597
    .restart local v4       #args:Lcom/android/mms/transaction/TransactionBundle;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v4, v2}, Lcom/android/mms/transaction/TransactionService2;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V

    goto :goto_6

    .line 545
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private stopSelfIfIdle(I)V
    .locals 3
    .parameter "startId"

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    const-string v0, "Mms:transaction2"

    const-string v2, "[TransactionService2] stopSelfIfIdle: STOP!"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v0, "Mms:transaction2"

    const-string v2, "[TransactionService2] stopSelfIfIdle: unRegisterForConnectionStateChanges"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 611
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    if-nez v0, :cond_0

    .line 612
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    .line 614
    :cond_0
    monitor-exit v1

    .line 615
    return-void

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized updateThreadSnippet(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 18
    .parameter "context"
    .parameter "threadId"
    .parameter "messageUri"
    .parameter "snippet"

    .prologue
    .line 1766
    const-class v17, Lcom/android/mms/transaction/TransactionService2;

    monitor-enter v17

    const-wide/16 v12, -0x1

    .line 1767
    .local v12, latestmsgId:J
    const-wide/16 v14, -0x1

    .line 1768
    .local v14, receivedmsgId:J
    const/4 v1, 0x3

    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "\'sms\' as type"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v4, v1

    .line 1774
    .local v4, SMS_MMS_LAST_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") UNION  select DISTINCT _id,\'mms\' as type, date * 1000 AS date from pdu where (thread_id= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC "

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 1781
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1782
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1784
    .local v16, type:Ljava/lang/String;
    const-string v1, "mms"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1785
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1786
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 1787
    const-string v1, "Mms:transaction2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TransactionService2] latest msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Received msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1791
    .end local v16           #type:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 1792
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1795
    :cond_1
    cmp-long v1, v12, v14

    if-nez v1, :cond_2

    .line 1796
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1797
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "group_snippet"

    move-object/from16 v0, p3

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v1, Landroid/provider/Telephony$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1802
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_2
    monitor-exit v17

    return-void

    .line 1791
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    .line 1792
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1766
    .end local v4           #SMS_MMS_LAST_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit v17

    throw v1
.end method


# virtual methods
.method protected beginMmsConnectivity()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 970
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService2;->createWakeLock()V

    .line 997
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-static {v4, v5}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v2

    const-string v3, "enableMMS"

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 1001
    .local v0, result:I
    const-string v1, "Mms:transaction2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TransactionService2] beginMmsConnectivity: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    packed-switch v0, :pswitch_data_0

    .line 1013
    const-string v1, "Mms:transaction2"

    const-string v2, "[TransactionService2] StartUsingNetworkFeature Error!"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :goto_0
    return v0

    .line 1005
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/mms/transaction/TransactionService2;->mWaitingMobileMmsConnected:Z

    .line 1006
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService2;->acquireWakeLock()V

    goto :goto_0

    .line 1009
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/mms/transaction/TransactionService2;->mWaitingMobileMmsConnected:Z

    .line 1010
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService2;->acquireWakeLock()V

    goto :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected endMmsConnectivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1020
    :try_start_0
    const-string v0, "Mms:transaction2"

    const-string v1, "[TransactionService2] endMmsConnectivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v0, "Mms:transaction2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService2]     mProcessing queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService2;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v0, "Mms:transaction2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService2]     mPending queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService2;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v1

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1033
    :cond_0
    const-string v0, "Mms:transaction2"

    const-string v1, "ForceConnectMms : "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService2;->ForceConnectMms:Z

    if-ne v0, v3, :cond_1

    .line 1035
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MultiSimConnectivityManager;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    .line 1036
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1037
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService2;->ForceConnectMms:Z

    .line 1042
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    if-le v0, v3, :cond_3

    sget-boolean v0, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "persist.sys.dataprefer.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "persist.data.mms.busy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1047
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    if-nez v0, :cond_2

    .line 1048
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MultiSimConnectivityManager;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    .line 1050
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->switchToSim1DataNetwork()V

    .line 1051
    const-string v0, "Mms:transaction2"

    const-string v1, "[TransactionService2]  Data switch to SIM1"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService2;->releaseWakeLock()V

    .line 1057
    return-void

    .line 1055
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService2;->releaseWakeLock()V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 784
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 299
    const-string v2, "Mms:transaction2"

    const-string v3, "[TransactionService2] Creating TransactionService"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TransactionService2"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 316
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService2;->mServiceLooper:Landroid/os/Looper;

    .line 317
    new-instance v2, Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService2;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/TransactionService2$ServiceHandler;-><init>(Lcom/android/mms/transaction/TransactionService2;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    .line 319
    new-instance v2, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/transaction/TransactionService2;Lcom/android/mms/transaction/TransactionService2$1;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService2;->mReceiver:Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;

    .line 320
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 321
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService2;->mReceiver:Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 755
    const-string v0, "Mms:transaction2"

    const-string v1, "[TransactionService2] Destroying TransactionService"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    const-string v0, "Mms:transaction2"

    const-string v1, "[TransactionService2] exiting with transaction still pending"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService2;->releaseWakeLock()V

    .line 778
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mReceiver:Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 779
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 780
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    const/4 v7, 0x2

    .line 460
    :goto_0
    return v7

    .line 342
    :cond_0
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/MultiSimConnectivityManager;

    iput-object v7, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    .line 344
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService2;->isNetworkAvailable()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v5, 0x1

    .line 345
    .local v5, noNetwork:Z
    :goto_1
    const-string v7, "persist.sys.dataprefer.simid"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 349
    .local v2, mDataNetwork:I
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v7

    iget-boolean v1, v7, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    .line 350
    .local v1, mDataDialog:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v7

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    .line 353
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 354
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 356
    .local v0, args:Lcom/android/mms/transaction/TransactionBundle;
    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v6

    .line 359
    .local v6, transactionType:I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 360
    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, mStringUri:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 363
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 365
    .local v4, mUri:Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 366
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v7

    const/16 v8, 0x81

    invoke-virtual {v7, v4, v8}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 373
    .end local v0           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v3           #mStringUri:Ljava/lang/String;
    .end local v4           #mUri:Landroid/net/Uri;
    .end local v6           #transactionType:I
    :cond_1
    if-nez v5, :cond_6

    .line 381
    const-string v7, "persist.data.mms.busy"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    if-ne v1, v7, :cond_4

    sget-boolean v7, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    if-nez v7, :cond_4

    const/4 v7, 0x1

    if-eq v2, v7, :cond_4

    .line 383
    const-string v7, "TransactionService2"

    const-string v8, "====>TransactionService2 onStartCommand(), case 5"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v7, "persist.data.mms.busy"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    .line 388
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 390
    const-string v7, "Mms:transaction2"

    const-string v8, "FORCE_CONNECT_MMS is called"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v7, "Mms:transaction2"

    const-string v8, "setMobileDataEnabled(true) is called"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v7, "Mms:transaction2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ForceConnectMms : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/mms/transaction/TransactionService2;->ForceConnectMms:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 395
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/mms/transaction/TransactionService2;->ForceConnectMms:Z

    .line 399
    :cond_2
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v7}, Landroid/net/MultiSimConnectivityManager;->switchToSim2DataNetwork()V

    .line 400
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService2;->mSwitchedHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    const-wide/32 v9, 0xea60

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 403
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService2;->mSavedIntent:Landroid/content/Intent;

    .line 404
    iput p2, p0, Lcom/android/mms/transaction/TransactionService2;->mSavedFlags:I

    .line 405
    iput p3, p0, Lcom/android/mms/transaction/TransactionService2;->mSavedStartId:I

    .line 407
    const-string v7, "TransactionService2"

    const-string v8, "====>TransactionService2 onStartCommand()---> switch net to 1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 344
    .end local v1           #mDataDialog:Z
    .end local v2           #mDataNetwork:I
    .end local v5           #noNetwork:Z
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 412
    .restart local v1       #mDataDialog:Z
    .restart local v2       #mDataNetwork:I
    .restart local v5       #noNetwork:Z
    :cond_4
    const/4 v7, 0x1

    if-eq v2, v7, :cond_5

    const/4 v7, 0x1

    if-eq v1, v7, :cond_5

    const-string v7, "persist.data.mms.busy"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_5

    .line 415
    const-string v7, "TransactionService2"

    const-string v8, "====>TransactionService2 onStartCommand(), case 6"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v7, 0x1

    invoke-direct {p0, p1, p2, p3, v7}, Lcom/android/mms/transaction/TransactionService2;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v7

    goto/16 :goto_0

    .line 419
    :cond_5
    const-string v7, "TransactionService2"

    const-string v8, "====>TransactionService2 onStartCommand(), case 1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/mms/transaction/TransactionService2;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v7

    goto/16 :goto_0

    .line 423
    :cond_6
    const/4 v7, 0x1

    if-ne v2, v7, :cond_7

    .line 424
    const-string v7, "TransactionService2"

    const-string v8, "====>TransactionService2 onStartCommand(), case 2"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/mms/transaction/TransactionService2;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v7

    goto/16 :goto_0

    .line 428
    :cond_7
    const-string v7, "persist.data.mms.busy"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x1

    if-ne v1, v7, :cond_8

    sget-boolean v7, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 430
    :cond_8
    const-string v7, "TransactionService2"

    const-string v8, "====>TransactionService2 onStartCommand(), case 3"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3, v7}, Lcom/android/mms/transaction/TransactionService2;->startCommand(Landroid/content/Intent;IIZ)I

    move-result v7

    goto/16 :goto_0

    .line 435
    :cond_9
    const-string v7, "TransactionService2"

    const-string v8, "====>TransactionService2 onStartCommand(), case 4"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v7, "persist.data.mms.busy"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    .line 441
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    if-nez v7, :cond_a

    .line 443
    const-string v7, "Mms:transaction2"

    const-string v8, "FORCE_CONNECT_MMS is called"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v7, "Mms:transaction2"

    const-string v8, "setMobileDataEnabled(true) is called"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v7, "Mms:transaction2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ForceConnectMms : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/mms/transaction/TransactionService2;->ForceConnectMms:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 448
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/mms/transaction/TransactionService2;->ForceConnectMms:Z

    .line 452
    :cond_a
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;

    invoke-virtual {v7}, Landroid/net/MultiSimConnectivityManager;->switchToSim2DataNetwork()V

    .line 453
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService2;->mSwitchedHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    const-wide/32 v9, 0xea60

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 455
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService2;->mSavedIntent:Landroid/content/Intent;

    .line 456
    iput p2, p0, Lcom/android/mms/transaction/TransactionService2;->mSavedFlags:I

    .line 457
    iput p3, p0, Lcom/android/mms/transaction/TransactionService2;->mSavedStartId:I

    .line 459
    const-string v7, "TransactionService2"

    const-string v8, "====>TransactionService2 onStartCommand()---> switch net to 1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v7, 0x2

    goto/16 :goto_0
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 21
    .parameter "observable"

    .prologue
    .line 791
    move-object/from16 v16, p1

    check-cast v16, Lcom/android/mms/transaction/Transaction;

    .line 792
    .local v16, transaction:Lcom/android/mms/transaction/Transaction;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v12

    .line 793
    .local v12, serviceId:I
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService2;->isNetworkAvailable()Z

    move-result v17

    if-nez v17, :cond_3

    const/4 v10, 0x1

    .line 794
    .local v10, noNetwork:Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService2;->isDataNetworkAvailable()Z

    move-result v17

    if-nez v17, :cond_4

    const/4 v9, 0x1

    .line 796
    .local v9, noDataNetwork:Z
    :goto_1
    const-string v17, "Mms:transaction2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService2] update transaction "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v17, "Mms:transaction2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService2] noNetwork "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v17, "Mms:transaction2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService2] noDataNetwork "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService2;->mProcessing:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 802
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService2;->mProcessing:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService2;->mPending:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_5

    .line 804
    const-string v17, "Mms:transaction2"

    const-string v19, "[TransactionService2] update: handle next pending transaction..."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    move-object/from16 v17, v0

    const/16 v19, 0x4

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 808
    .local v7, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 814
    .end local v7           #msg:Landroid/os/Message;
    :cond_0
    :goto_2
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    const-string v17, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 817
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v13

    .line 818
    .local v13, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v13}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v11

    .line 819
    .local v11, result:I
    const-string v17, "state"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 821
    packed-switch v11, :pswitch_data_0

    .line 909
    const-string v17, "Mms:transaction2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService2] Transaction state unknown: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_1
    :goto_3
    const-string v17, "Mms:transaction2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService2] update: broadcast transaction result "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 918
    if-nez v10, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/transaction/TransactionService2;->noServiceNeedtoSend:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    if-nez v9, :cond_2

    .line 920
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 921
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 923
    sget-boolean v17, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    if-nez v17, :cond_2

    .line 924
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Service;->stopSelf(I)V

    .line 927
    :cond_2
    return-void

    .line 793
    .end local v5           #intent:Landroid/content/Intent;
    .end local v9           #noDataNetwork:Z
    .end local v10           #noNetwork:Z
    .end local v11           #result:I
    .end local v13           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 794
    .restart local v10       #noNetwork:Z
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 810
    .restart local v9       #noDataNetwork:Z
    :cond_5
    :try_start_3
    const-string v17, "Mms:transaction2"

    const-string v19, "[TransactionService2] update: endMmsConnectivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    sget-boolean v17, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    if-nez v17, :cond_0

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService2;->endMmsConnectivity()V

    goto/16 :goto_2

    .line 814
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 918
    :catchall_1
    move-exception v17

    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/transaction/TransactionService2;->noServiceNeedtoSend:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    if-nez v9, :cond_6

    .line 920
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 921
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 923
    sget-boolean v18, Lcom/android/mms/transaction/TransactionService2;->mSwitching:Z

    if-nez v18, :cond_6

    .line 924
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Service;->stopSelf(I)V

    :cond_6
    throw v17

    .line 823
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v11       #result:I
    .restart local v13       #state:Lcom/android/mms/transaction/TransactionState;
    :pswitch_0
    :try_start_5
    const-string v17, "Mms:transaction2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService2] Transaction complete: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v17, "uri"

    invoke-virtual {v13}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 828
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v17

    packed-switch v17, :pswitch_data_1

    goto/16 :goto_3

    .line 830
    :pswitch_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    .line 831
    .local v4, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v4}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v3

    .line 832
    .local v3, autoDownload:Z
    const-string v17, "Mms:transaction2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService2] autoDownload : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 836
    const-string v17, "GATE"

    const-string v18, "[TransactionService2] <GATE-M>MMS_MSG_RCVD</GATE-M>"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v8

    .line 841
    .local v8, multiSimNum:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_8

    const-string v17, "persist.sys.dataprefer.simid"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 843
    const/4 v3, 0x0

    .line 844
    const-string v17, "Mms:transaction2"

    const-string v18, "autoDownload change to false"

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_8
    if-eqz v3, :cond_a

    .line 851
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 852
    const-string v17, "GATE"

    const-string v18, "[TransactionService2] <GATE-M>MMS_MSG_RETRIEVED</GATE-M>"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_9
    invoke-virtual {v13}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 855
    invoke-virtual {v13}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v14

    .line 856
    .local v14, threadId:J
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v14, v15, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual {v13}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const-string v20, "mms"

    invoke-static/range {v17 .. v20}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    .end local v14           #threadId:J
    :cond_a
    :goto_4
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 859
    :cond_b
    const-string v17, "Mms:transaction2"

    const-string v18, "[TransactionService2] state.getContentUri() is null."

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 866
    .end local v3           #autoDownload:Z
    .end local v4           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v8           #multiSimNum:I
    :pswitch_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 867
    const-string v17, "GATE"

    const-string v18, "[TransactionService2] <GATE-M>MMS_MSG_RETRIEVED</GATE-M>"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_c
    invoke-virtual {v13}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_d

    .line 873
    invoke-virtual {v13}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v14

    .line 874
    .restart local v14       #threadId:J
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v14, v15, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    .line 878
    .end local v14           #threadId:J
    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 876
    :cond_d
    const-string v17, "Mms:transaction2"

    const-string v18, "[TransactionService2] state.getContentUri() is null."

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 882
    :pswitch_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 883
    const-string v17, "GATE"

    const-string v18, "[TransactionService2] <GATE-M>MMS_MSG_SENT</GATE-M>"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_e
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/util/RateController;->update()V

    .line 887
    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 892
    :pswitch_4
    const-string v17, "Mms:transaction2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[TransactionService2] Transaction failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    if-nez v10, :cond_f

    if-eqz v9, :cond_1

    .line 896
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v8

    .line 897
    .restart local v8       #multiSimNum:I
    const-string v17, "persist.sys.dataprefer.simid"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 899
    .local v6, mDataNetwork:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_10

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_10

    const/16 v17, 0x1

    :goto_6
    if-nez v17, :cond_1

    .line 900
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/transaction/TransactionService2;->onNetworkUnavailable(I)V

    .line 901
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/transaction/TransactionService2;->noServiceNeedtoSend:Z

    .line 902
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->registerForConnectionStateChanges(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 899
    :cond_10
    const/16 v17, 0x0

    goto :goto_6

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 828
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
