.class public Lcom/android/mms/transaction/MmsSystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsSystemEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;
    }
.end annotation


# static fields
.field private static final EVENT_WAKE_UP_SERVICE:I = 0x1

.field private static final OP_BOOT_COMPLETED:I = 0x1

.field private static final OP_DEFAULT_SIM_CHANGED:I = 0x3

.field private static final OP_SMS_RECEIVED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"

.field private static final WAKE_UP_TIMES:I = 0x5

.field private static final WAKE_UP_WAIT:I = 0x3e8

.field private static bFilterAttached:Z

.field private static hasStartedIMEITrackerService:Z

.field private static mConnMgr:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mServiceLooper:Landroid/os/Looper;

.field private static mUsbRegexs:[Ljava/lang/String;

.field private static mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

.field private static sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

.field private static waitCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    .line 79
    sput-boolean v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasStartedIMEITrackerService:Z

    .line 94
    sput v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 96
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput-object p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    return p0
.end method

.method static synthetic access$208()I
    .locals 2

    .prologue
    .line 70
    sget v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;I)V

    return-void
.end method

.method public static registerForConnectionStateChanges(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 356
    sget-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    if-nez v2, :cond_1

    .line 357
    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 360
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v2, "Mms:transaction"

    const-string v3, "[MmsSystemEventReceiver] registerForConnectionStateChanges"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-nez v2, :cond_0

    .line 363
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MmsSystemEventReceiver"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 365
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sput-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mServiceLooper:Landroid/os/Looper;

    .line 366
    new-instance v2, Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    sget-object v3, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    .line 368
    new-instance v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v2}, Lcom/android/mms/transaction/MmsSystemEventReceiver;-><init>()V

    sput-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    .line 371
    .end local v1           #thread:Landroid/os/HandlerThread;
    :cond_0
    sget-object v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    .line 376
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 374
    :cond_1
    const-string v2, "Mms:transaction"

    const-string v3, "[MmsSystemEventReceiver] Filter attached"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restorePduNotificationStatus(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 344
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 346
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "st"

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "m_type = 130 AND st = 129"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 352
    .local v6, count:I
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MmsSystemEventReceiver] restorePduNotificationStatus count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public static unRegisterForConnectionStateChanges(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 379
    const-string v0, "Mms:transaction"

    const-string v1, "[MmsSystemEventReceiver] unRegisterForConnectionStateChanges"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-eqz v0, :cond_0

    .line 382
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    .line 388
    return-void

    .line 383
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static wakeUpService(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 153
    const-string v0, "Mms:transaction"

    const-string v1, "[MmsSystemEventReceiver] wakeUpService: start transaction service ..."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public isTestSimCard(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x3

    const/4 v9, 0x1

    .line 305
    const/16 v0, 0x1c2

    .line 306
    .local v0, TEST_SIM_MCC:I
    const/4 v2, 0x1

    .line 307
    .local v2, TEST_SIM_MNC:I
    const/16 v1, 0x3e7

    .line 308
    .local v1, TEST_SIM_MCC_SIENE:I
    const/16 v3, 0x63

    .line 309
    .local v3, TEST_SIM_MNC_SIENE:I
    const/4 v5, 0x0

    .local v5, mcc:I
    const/4 v6, 0x0

    .line 311
    .local v6, mnc:I
    const-string v11, "phone"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 312
    .local v8, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, networkOperator:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v12, :cond_0

    .line 316
    const/4 v11, 0x0

    const/4 v12, 0x3

    :try_start_0
    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 317
    const-string v11, "ITS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[MmsSystemEventReceiver]  isTestSimCard MCC : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v11, 0x3

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 319
    const-string v11, "ITS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[MmsSystemEventReceiver]  isTestSimCard MNC : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    const/16 v11, 0x3e7

    if-ne v11, v5, :cond_1

    .line 326
    const/16 v11, 0x63

    if-ne v11, v6, :cond_1

    .line 327
    const-string v10, "ITS"

    const-string v11, "[MmsSystemEventReceiver]  isTestSimCard return TRUE"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_1
    return v9

    .line 320
    :catch_0
    move-exception v4

    .line 321
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v11, "ITS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[MmsSystemEventReceiver] Exception occured! : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const/16 v11, 0x1c2

    if-ne v11, v5, :cond_2

    .line 333
    if-ne v9, v6, :cond_2

    .line 334
    const-string v10, "ITS"

    const-string v11, "[MmsSystemEventReceiver]  isTestSimCard return TRUE"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v9, v10

    .line 338
    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 160
    const-string v22, "Mms:transaction"

    const-string v23, "[MmsSystemEventReceiver] Intent received "

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[MmsSystemEventReceiver] "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sput-object p1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, action:Ljava/lang/String;
    const-string v22, "android.intent.action.CONTENT_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 167
    const-string v22, "deleted_contents"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 168
    .local v8, changed:Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 169
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[MmsSystemEventReceiver] CONTENT_CHANGED_ACTION changed uri: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 256
    .end local v8           #changed:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v22, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 173
    const-string v22, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 175
    .local v20, state:Ljava/lang/String;
    const-string v22, "simSlot"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 177
    .local v19, simSlot:I
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[MmsSystemEventReceiver] ANY_DATA_STATE event received: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v22, "CONNECTED"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 180
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;I)V

    .line 181
    const/16 v22, 0x0

    sput v22, Lcom/android/mms/transaction/MmsSystemEventReceiver;->waitCount:I

    .line 182
    sget-object v22, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    sget-object v23, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mWakeUpHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$WakeUpHandler;

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 184
    .end local v19           #simSlot:I
    .end local v20           #state:Ljava/lang/String;
    :cond_2
    const-string v22, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 185
    const-string v22, "Mms:transaction"

    const-string v23, "[MmsSystemEventReceiver] ACTION_TETHER_STATE_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v22, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 187
    .local v5, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v22, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 188
    .local v13, mCm:Landroid/net/ConnectivityManager;
    const/16 v21, 0x0

    .line 189
    .local v21, usbTethered:Z
    if-eqz v13, :cond_5

    .line 190
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mUsbRegexs:[Ljava/lang/String;

    .line 191
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/Object;
    array-length v11, v6

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v6           #arr$:[Ljava/lang/Object;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_5

    aget-object v14, v6, v10

    .local v14, o:Ljava/lang/Object;
    move-object/from16 v17, v14

    .line 192
    check-cast v17, Ljava/lang/String;

    .line 193
    .local v17, s:Ljava/lang/String;
    sget-object v7, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mUsbRegexs:[Ljava/lang/String;

    .local v7, arr$:[Ljava/lang/String;
    array-length v12, v7

    .local v12, len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    :goto_2
    if-ge v9, v12, :cond_4

    aget-object v15, v7, v9

    .line 194
    .local v15, regex:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v21, 0x1

    .line 193
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 191
    .end local v15           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto :goto_1

    .line 198
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v14           #o:Ljava/lang/Object;
    .end local v17           #s:Ljava/lang/String;
    :cond_5
    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsConfig;->setTetheringMode(Z)V

    goto/16 :goto_0

    .line 199
    .end local v5           #activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #mCm:Landroid/net/ConnectivityManager;
    .end local v21           #usbTethered:Z
    :cond_6
    const-string v22, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 203
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->restorePduNotificationStatus(Landroid/content/Context;)V

    .line 204
    const-wide/16 v22, -0x2

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 218
    invoke-static/range {p1 .. p1}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v16

    .line 219
    .local v16, reservationManager:Lcom/android/mms/transaction/ReservationManager;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/ReservationManager;->resetAfterConnected()V

    goto/16 :goto_0

    .line 221
    .end local v16           #reservationManager:Lcom/android/mms/transaction/ReservationManager;
    :cond_7
    const-string v22, "android.provider.Telephony.GET_SMSC"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 222
    const-string v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 223
    .local v18, sales_code:Ljava/lang/String;
    if-eqz v18, :cond_0

    const-string v22, "INU"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "INS"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 224
    :cond_8
    const-string v22, "ITS"

    const-string v23, "[MmsSystemEventReceiver] Intent ::GET_SMSC_ACTION"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-boolean v22, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasStartedIMEITrackerService:Z

    if-nez v22, :cond_0

    .line 226
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 227
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/mms/transaction/MmsSystemEventReceiver;->hasStartedIMEITrackerService:Z

    goto/16 :goto_0

    .line 234
    .end local v18           #sales_code:Ljava/lang/String;
    :cond_9
    const-string v22, "android.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 236
    const-string v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 237
    .restart local v18       #sales_code:Ljava/lang/String;
    if-eqz v18, :cond_0

    const-string v22, "INU"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    const-string v22, "INS"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 238
    :cond_a
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 241
    .end local v18           #sales_code:Ljava/lang/String;
    :cond_b
    const-string v22, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 243
    const-string v22, "ITS"

    const-string v23, "[MmsSystemEventReceiver] DEFAULT_CS_SIM_CHANGED... "

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v22, "ITS"

    const-string v23, "[MmsSystemEventReceiver] Intent ::DEFAULT_CS_SIM_CHANGED"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 249
    .restart local v18       #sales_code:Ljava/lang/String;
    if-eqz v18, :cond_0

    const-string v22, "INU"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    const-string v22, "INS"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 252
    :cond_c
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public startIMEITracker(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 12
    .parameter "context"
    .parameter "intent"
    .parameter "value"

    .prologue
    const/4 v8, 0x1

    .line 260
    invoke-static {}, Lcom/android/mms/transaction/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, CSC_FILE:Ljava/lang/String;
    const/4 v7, 0x0

    .line 263
    .local v7, valueStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/transaction/CscParser;->getInstance(Ljava/lang/String;)Lcom/android/mms/transaction/CscParser;

    move-result-object v3

    .line 264
    .local v3, mParser:Lcom/android/mms/transaction/CscParser;
    const-string v9, "Settings.Messages.SMS.ImeiTracker"

    invoke-virtual {v3, v9}, Lcom/android/mms/transaction/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 266
    if-eqz v7, :cond_5

    const-string v9, "on"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 267
    const-string v9, "ITS"

    const-string v10, "[MmsSystemEventReceiver] startITS... "

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->isTestSimCard(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    move v5, v8

    .line 271
    .local v5, sendSms:Z
    :goto_0
    const-string v9, "ITS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[MmsSystemEventReceiver] sendSms : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-ne v5, v8, :cond_4

    .line 274
    const-string v9, "ITS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[MmsSystemEventReceiver] Starting ITS Context : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v2, iTracker:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v6

    .line 277
    .local v6, simSlotCount:I
    if-ne v6, v8, :cond_2

    .line 278
    const-string v8, "com.android.mms.transaction.IMEITracker.IMEITrackerService"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    :goto_1
    const-string v8, "ITS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 284
    .local v1, args:Landroid/os/Bundle;
    const-string v8, "op"

    invoke-virtual {v1, v8, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const/4 v8, 0x2

    if-ne p3, v8, :cond_0

    .line 287
    const-string v9, "pduslocal"

    const-string v8, "pdus"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 289
    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    .line 291
    .local v4, obj:Landroid/content/ComponentName;
    if-eqz v4, :cond_3

    .line 292
    const-string v8, "ITS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[MmsSystemEventReceiver] ITS :: Service Started Successfully..... Obj = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .end local v1           #args:Landroid/os/Bundle;
    .end local v2           #iTracker:Landroid/content/Intent;
    .end local v4           #obj:Landroid/content/ComponentName;
    .end local v5           #sendSms:Z
    .end local v6           #simSlotCount:I
    :goto_2
    return-void

    .line 269
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 281
    .restart local v2       #iTracker:Landroid/content/Intent;
    .restart local v5       #sendSms:Z
    .restart local v6       #simSlotCount:I
    :cond_2
    const-string v8, "com.android.mms.transaction.IMEITracker.IMEITrackerService_DS"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 294
    .restart local v1       #args:Landroid/os/Bundle;
    .restart local v4       #obj:Landroid/content/ComponentName;
    :cond_3
    const-string v8, "ITS"

    const-string v9, "[MmsSystemEventReceiver] ITS :: Service object is NULL"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 296
    .end local v1           #args:Landroid/os/Bundle;
    .end local v2           #iTracker:Landroid/content/Intent;
    .end local v4           #obj:Landroid/content/ComponentName;
    .end local v6           #simSlotCount:I
    :cond_4
    const-string v8, "ITS"

    const-string v9, "[MmsSystemEventReceiver] ITS :: sendSms is FALSE, It is TEST SIM..."

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 299
    .end local v5           #sendSms:Z
    :cond_5
    const-string v8, "ITS"

    const-string v9, "[MmsSystemEventReceiver] IITS :: CSC Failed !!!!"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
