.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "NotificationTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final MANUAL_DOWNLOAD_TYPE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# instance fields
.field private mContentLocation:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mUri:Landroid/net/Uri;

.field private uriRetrieve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 5
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "ind"

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 145
    const/4 v1, -0x1

    .local v1, simSlot:I
    move-object v2, p1

    .line 146
    check-cast v2, Landroid/app/Service;

    .line 147
    .local v2, t:Landroid/app/Service;
    instance-of v3, v2, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v3, :cond_0

    .line 148
    const/4 v1, 0x1

    .line 154
    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, p4, v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    iput-object p4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 161
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 162
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms:transaction"

    const-string v4, "[NotificationTransaction] Failed to save NotificationInd in constructor."

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "uriString"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 112
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 114
    invoke-static {}, Lcom/android/mms/MmsConfig;->isMms2gAutodownloadAfterCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iput-object p4, p0, Lcom/android/mms/transaction/NotificationTransaction;->uriRetrieve:Ljava/lang/String;

    .line 118
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 125
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    move-object v1, p1

    .line 130
    check-cast v1, Landroid/app/Service;

    .line 131
    .local v1, t:Landroid/app/Service;
    instance-of v2, v1, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v2, :cond_1

    .line 132
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance2(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 135
    :goto_0
    return-void

    .line 119
    .end local v1           #t:Landroid/app/Service;
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NotificationTransaction] Failed to load NotificationInd from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 134
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .restart local v1       #t:Landroid/app/Service;
    :cond_1
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    goto :goto_0
.end method

.method private sendNotifyRespInd(I)V
    .locals 4
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x12

    .line 495
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getMmsReportAllowed(Landroid/content/Context;)I

    move-result v0

    .line 497
    .local v0, ReportAlloed:I
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v3, v2, p1, v0}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BII)V

    .line 505
    .end local v0           #ReportAlloed:I
    .local v1, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/transaction/Transaction;->sendPdu([BLjava/lang/String;)[B

    .line 510
    :goto_1
    return-void

    .line 500
    .end local v1           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v3, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .restart local v1       #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    goto :goto_0

    .line 508
    :cond_1
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B

    goto :goto_1
.end method


# virtual methods
.method public getContentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public get_Uri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->uriRetrieve:Ljava/lang/String;

    return-object v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method

.method public run()V
    .locals 40

    .prologue
    .line 174
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v22

    .line 175
    .local v22, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v17

    .line 176
    .local v17, autoDownload:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    const/16 v17, 0x0

    .line 180
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/MmsApp;->getMultiSimTelephonyManager()Landroid/telephony/MultiSimTelephonyManager;

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    const/16 v19, 0x1

    .line 183
    .local v19, dataSuspended:Z
    :goto_0
    const-string v4, "persist.sys.dataprefer.simid"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 184
    .local v26, mDataSimSlot:I
    const/16 v33, -0x1

    .line 185
    .local v33, simSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    check-cast v27, Landroid/app/Service;

    .line 187
    .local v27, mTS:Landroid/app/Service;
    move-object/from16 v0, v27

    instance-of v4, v0, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v4, :cond_a

    .line 188
    const/16 v33, 0x1

    .line 193
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v28

    .line 194
    .local v28, multiSimNum:I
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    const/4 v4, 0x1

    move/from16 v0, v28

    if-le v0, v4, :cond_1

    .line 196
    move/from16 v0, v33

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 198
    const/16 v17, 0x0

    .line 199
    const-string v4, "Mms:transaction"

    const-string v5, "autoDownload change to false"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 204
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 206
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/MmsApp;->getMultiSimTelephonyManager()Landroid/telephony/MultiSimTelephonyManager;

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    const/4 v4, 0x1

    :goto_2
    and-int v19, v19, v4

    .line 211
    :try_start_0
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NotificationTransaction] Notification transaction launched: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/16 v36, 0x83

    .line 218
    .local v36, status:I
    if-eqz v17, :cond_3

    if-eqz v19, :cond_c

    .line 220
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v28

    if-le v0, v4, :cond_4

    move/from16 v0, v33

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 221
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v5, 0x80

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 223
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    .line 477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 478
    if-eqz v17, :cond_6

    if-eqz v19, :cond_7

    .line 481
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 483
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 485
    const-string v4, "Mms:transaction"

    const-string v5, "[NotificationTransaction] NotificationTransaction failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .end local v36           #status:I
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 489
    return-void

    .line 180
    .end local v19           #dataSuspended:Z
    .end local v26           #mDataSimSlot:I
    .end local v27           #mTS:Landroid/app/Service;
    .end local v28           #multiSimNum:I
    .end local v33           #simSlot:I
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 190
    .restart local v19       #dataSuspended:Z
    .restart local v26       #mDataSimSlot:I
    .restart local v27       #mTS:Landroid/app/Service;
    .restart local v33       #simSlot:I
    :cond_a
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 206
    .restart local v28       #multiSimNum:I
    :cond_b
    const/4 v4, 0x0

    goto :goto_2

    .line 227
    .restart local v36       #status:I
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v5, 0x81

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 229
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 230
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NotificationTransaction] Content-Location: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4

    .line 233
    :cond_d
    const/16 v32, 0x0

    .line 237
    .local v32, retrieveConfData:[B
    :try_start_2
    const-string v4, "Mms:transaction"

    const-string v5, "[NotificationTransaction] start immediate retrieve"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/Transaction;->getPdu(Ljava/lang/String;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v32

    .line 244
    :goto_4
    if-eqz v32, :cond_f

    .line 246
    const/16 v30, 0x0

    .line 248
    .local v30, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :try_start_3
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v32

    invoke-direct {v4, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v30

    .line 255
    :goto_5
    if-eqz v30, :cond_e

    :try_start_4
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v4

    const/16 v5, 0x84

    if-eq v4, v5, :cond_18

    .line 256
    :cond_e
    const-string v4, "Mms:transaction"

    const-string v5, "[NotificationTransaction] Invalid M-RETRIEVE.CONF PDU."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 258
    const/16 v36, 0x84

    .line 437
    .end local v30           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_f
    :goto_6
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NotificationTransaction] status=0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4

    .line 440
    packed-switch v36, :pswitch_data_0

    .line 477
    :cond_10
    :goto_7
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 478
    if-eqz v17, :cond_11

    if-eqz v19, :cond_12

    .line 481
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 483
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 485
    const-string v4, "Mms:transaction"

    const-string v5, "[NotificationTransaction] NotificationTransaction failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 240
    :catch_0
    move-exception v23

    .line 241
    .local v23, e:Ljava/io/IOException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_4

    .line 461
    .end local v23           #e:Ljava/io/IOException;
    .end local v32           #retrieveConfData:[B
    .end local v36           #status:I
    :catch_1
    move-exception v23

    .line 462
    .restart local v23       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 463
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Not Found"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 464
    const-string v4, "Mms:transaction"

    const-string v5, "[NotificationTransaction] 404 Not Found exception"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 466
    .local v14, values:Landroid/content/ContentValues;
    const-string v4, "resp_st"

    const/16 v5, 0xe4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 470
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_13
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NotificationTransaction] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v23 .. v23}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 478
    if-eqz v17, :cond_14

    if-eqz v19, :cond_15

    .line 481
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 483
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 485
    const-string v4, "Mms:transaction"

    const-string v5, "[NotificationTransaction] NotificationTransaction failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 250
    .end local v23           #e:Ljava/io/IOException;
    .restart local v30       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v32       #retrieveConfData:[B
    .restart local v36       #status:I
    :catch_2
    move-exception v23

    .line 251
    .local v23, e:Ljava/lang/OutOfMemoryError;
    :try_start_7
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Out Of Memory Error while Parsing the pdu: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_5

    .line 471
    .end local v23           #e:Ljava/lang/OutOfMemoryError;
    .end local v30           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v32           #retrieveConfData:[B
    .end local v36           #status:I
    :catch_3
    move-exception v23

    .line 472
    .local v23, e:Lcom/google/android/mms/MmsException;
    :try_start_8
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NotificationTransaction] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v23 .. v23}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 478
    if-eqz v17, :cond_16

    if-eqz v19, :cond_17

    .line 481
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 483
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 485
    const-string v4, "Mms:transaction"

    const-string v5, "[NotificationTransaction] NotificationTransaction failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 261
    .end local v23           #e:Lcom/google/android/mms/MmsException;
    .restart local v30       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v32       #retrieveConfData:[B
    .restart local v36       #status:I
    :cond_18
    :try_start_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSavePduFiles()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 262
    const-string v4, "RetrieveConf"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    .line 265
    :cond_19
    const/16 v24, 0x0

    .line 267
    .local v24, isSpam:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    .line 268
    const/16 v37, 0x0

    .line 269
    .local v37, subject:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 270
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v37

    .line 272
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-static {v4, v5, v0}, Lcom/android/mms/ui/MessageUtils;->SpamMessageFilterForVIPMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4

    move-result v24

    .line 279
    .end local v37           #subject:Ljava/lang/String;
    :cond_1b
    :goto_8
    const/16 v36, 0x81

    .line 281
    :try_start_a
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_4

    .line 286
    :goto_9
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v29

    .line 287
    .local v29, p:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v6, 0x0

    .line 288
    .local v6, uri:Landroid/net/Uri;
    if-eqz v24, :cond_30

    .line 289
    sget-object v4, Landroid/provider/Telephony$SpamMms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v33

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v6

    .line 294
    :goto_a
    const/16 v38, -0x1

    .line 295
    .local v38, threadId:I
    const-wide/16 v20, -0x1

    .line 296
    .local v20, date:J
    const/16 v35, 0x0

    .line 299
    .local v35, snippet:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 301
    move-object/from16 v0, v30

    instance-of v4, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v4, :cond_25

    .line 302
    move-object/from16 v0, v30

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, v30

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1d

    :cond_1c
    move-object/from16 v0, v30

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-eqz v4, :cond_25

    check-cast v30, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v30           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    array-length v4, v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4

    const/4 v5, 0x1

    if-le v4, v5, :cond_25

    .line 306
    :cond_1d
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v25

    .line 307
    .local v25, m:Lcom/android/mms/model/SlideshowModel;
    if-eqz v25, :cond_1e

    .line 308
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v34

    .line 309
    .local v34, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v34, :cond_1e

    invoke-virtual/range {v34 .. v34}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 310
    invoke-virtual/range {v34 .. v34}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v39

    .line 311
    .local v39, tm:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v39 .. v39}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4

    move-result-object v35

    .line 323
    .end local v25           #m:Lcom/android/mms/model/SlideshowModel;
    .end local v34           #slide:Lcom/android/mms/model/SlideModel;
    .end local v39           #tm:Lcom/android/mms/model/TextModel;
    :cond_1e
    :goto_b
    if-eqz v35, :cond_21

    .line 325
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "thread_id"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_4

    move-result-object v18

    .line 327
    .local v18, c:Landroid/database/Cursor;
    if-eqz v18, :cond_1f

    :try_start_e
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 328
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v38

    .line 331
    :cond_1f
    if-eqz v18, :cond_20

    .line 332
    :try_start_f
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_20
    const/4 v4, -0x1

    move/from16 v0, v38

    if-eq v0, v4, :cond_21

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move/from16 v0, v38

    move-object/from16 v1, v35

    invoke-static {v4, v0, v6, v1}, Lcom/android/mms/transaction/TransactionService;->updateThreadSnippet(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 340
    .end local v18           #c:Landroid/database/Cursor;
    :cond_21
    const/16 v38, -0x1

    .line 341
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "thread_id"

    aput-object v5, v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_4

    move-result-object v18

    .line 343
    .restart local v18       #c:Landroid/database/Cursor;
    if-eqz v18, :cond_22

    :try_start_10
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 344
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result v38

    .line 347
    :cond_22
    if-eqz v18, :cond_23

    .line 348
    :try_start_11
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_23
    const/4 v4, -0x1

    move/from16 v0, v38

    if-eq v0, v4, :cond_25

    .line 353
    const/4 v4, 0x3

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v10, v4

    const/4 v4, 0x1

    const-string v5, "\'sms\' as type"

    aput-object v5, v10, v4

    const/4 v4, 0x2

    const-string v5, "date"

    aput-object v5, v10, v4

    .line 360
    .local v10, SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") UNION  select DISTINCT _id,\'mms\' as type, date * 1000 AS date from pdu where (thread_id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "date DESC LIMIT 2"

    invoke-static/range {v7 .. v13}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_4

    move-result-object v18

    .line 368
    if-eqz v18, :cond_24

    :try_start_12
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24

    .line 369
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 370
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result-wide v20

    .line 373
    :cond_24
    if-eqz v18, :cond_25

    .line 374
    :try_start_13
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 383
    .end local v10           #SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    .end local v18           #c:Landroid/database/Cursor;
    :cond_25
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/mms/transaction/Transaction;->updateMessageSize(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 391
    :cond_26
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_4

    move-result v4

    if-eqz v4, :cond_35

    .line 393
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v7, v8, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_4

    .line 402
    :goto_c
    :try_start_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 405
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-eqz v4, :cond_27

    .line 407
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 408
    .restart local v14       #values:Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v4, Landroid/provider/Telephony$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    move/from16 v0, v38

    int-to-long v7, v0

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 416
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_27
    if-nez v24, :cond_28

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v4, v6, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 423
    :cond_28
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    .line 424
    if-eqz v6, :cond_29

    if-eqz v24, :cond_29

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v4, v6, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v31

    .line 426
    .local v31, result:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 432
    .end local v31           #result:Z
    :cond_29
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_4

    goto/16 :goto_6

    .line 473
    .end local v6           #uri:Landroid/net/Uri;
    .end local v20           #date:J
    .end local v24           #isSpam:Z
    .end local v29           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v32           #retrieveConfData:[B
    .end local v35           #snippet:Ljava/lang/String;
    .end local v36           #status:I
    .end local v38           #threadId:I
    :catch_4
    move-exception v23

    .line 474
    .local v23, e:Ljava/lang/OutOfMemoryError;
    :try_start_16
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NotificationTransaction] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v23 .. v23}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 478
    if-eqz v17, :cond_2a

    if-eqz v19, :cond_2b

    .line 481
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 483
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 485
    const-string v4, "Mms:transaction"

    const-string v5, "[NotificationTransaction] NotificationTransaction failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 274
    .end local v23           #e:Ljava/lang/OutOfMemoryError;
    .restart local v24       #isSpam:Z
    .restart local v30       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v32       #retrieveConfData:[B
    .restart local v36       #status:I
    :cond_2c
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Z

    move-result v24

    .line 275
    if-nez v24, :cond_1b

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)Z

    move-result v24

    goto/16 :goto_8

    .line 282
    :catch_5
    move-exception v23

    .line 283
    .local v23, e:Ljava/io/IOException;
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NotificationTransaction] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v23 .. v23}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_4

    goto/16 :goto_9

    .line 477
    .end local v23           #e:Ljava/io/IOException;
    .end local v24           #isSpam:Z
    .end local v30           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v32           #retrieveConfData:[B
    .end local v36           #status:I
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 478
    if-eqz v17, :cond_2d

    if-eqz v19, :cond_2e

    .line 481
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 483
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2f

    .line 484
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 485
    const-string v5, "Mms:transaction"

    const-string v7, "[NotificationTransaction] NotificationTransaction failed."

    invoke-static {v5, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 477
    throw v4

    .line 291
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v24       #isSpam:Z
    .restart local v29       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v30       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v32       #retrieveConfData:[B
    .restart local v36       #status:I
    :cond_30
    :try_start_18
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_4

    move-result-object v6

    goto/16 :goto_a

    .line 314
    .end local v30           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v20       #date:J
    .restart local v25       #m:Lcom/android/mms/model/SlideshowModel;
    .restart local v34       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v35       #snippet:Ljava/lang/String;
    .restart local v38       #threadId:I
    .restart local v39       #tm:Lcom/android/mms/model/TextModel;
    :cond_31
    :try_start_19
    invoke-virtual/range {v39 .. v39}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_4

    move-result-object v35

    goto/16 :goto_b

    .line 319
    .end local v25           #m:Lcom/android/mms/model/SlideshowModel;
    .end local v34           #slide:Lcom/android/mms/model/SlideModel;
    .end local v39           #tm:Lcom/android/mms/model/TextModel;
    :catch_6
    move-exception v23

    .line 321
    .local v23, e:Ljava/lang/Exception;
    :try_start_1a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    .line 331
    .end local v23           #e:Ljava/lang/Exception;
    .restart local v18       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    if-eqz v18, :cond_32

    .line 332
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_32
    throw v4

    .line 347
    :catchall_2
    move-exception v4

    if-eqz v18, :cond_33

    .line 348
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_33
    throw v4

    .line 373
    .restart local v10       #SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    :catchall_3
    move-exception v4

    if-eqz v18, :cond_34

    .line 374
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_34
    throw v4

    .line 394
    .end local v10           #SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    .end local v18           #c:Landroid/database/Cursor;
    :catch_7
    move-exception v23

    .line 395
    .local v23, e:Ljava/lang/IllegalStateException;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_c

    .line 399
    .end local v23           #e:Ljava/lang/IllegalStateException;
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v7, v8, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_c

    .line 442
    .end local v6           #uri:Landroid/net/Uri;
    .end local v20           #date:J
    .end local v24           #isSpam:Z
    .end local v29           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v35           #snippet:Ljava/lang/String;
    .end local v38           #threadId:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_7

    .line 446
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    if-nez v4, :cond_10

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_4

    goto/16 :goto_7

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
