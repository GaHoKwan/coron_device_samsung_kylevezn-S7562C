.class public Lcom/android/mms/transaction/RetrieveTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "RetrieveTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final COLUMN_CONTENT_LOCATION:I = 0x0

.field static final COLUMN_LOCKED:I = 0x1

.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# instance fields
.field private final mContentLocation:Ljava/lang/String;

.field private mLocked:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/RetrieveTransaction;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 93
    const-string v1, "content://"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 95
    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v1}, Lcom/android/mms/transaction/RetrieveTransaction;->getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 97
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RetrieveTransaction] X-Mms-Content-Location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 105
    check-cast v0, Landroid/app/Service;

    .line 106
    .local v0, t:Landroid/app/Service;
    instance-of v1, v0, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v1, :cond_1

    .line 107
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance2(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 110
    :goto_0
    return-void

    .line 100
    .end local v0           #t:Landroid/app/Service;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Initializing from X-Mms-Content-Location is abandoned!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .restart local v0       #t:Landroid/app/Service;
    :cond_1
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    goto :goto_0
.end method

.method private getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/RetrieveTransaction;->PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 115
    .local v7, cursor:Landroid/database/Cursor;
    iput-boolean v9, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    .line 117
    if-eqz v7, :cond_4

    .line 119
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    .line 123
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 126
    if-eqz v7, :cond_0

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_0
    return-object v0

    :cond_1
    move v0, v9

    .line 122
    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_2
    throw v0

    :cond_3
    if-eqz v7, :cond_4

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_4
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get X-Mms-Content-Location from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 13
    .parameter "context"
    .parameter "rc"

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v10

    .line 352
    .local v10, rawMessageId:[B
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v11

    .line 353
    .local v11, rawTransactionID:[B
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v9

    .line 355
    .local v9, multiSimNum:I
    if-eqz v10, :cond_5

    .line 356
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    .line 359
    .local v8, messageId:Ljava/lang/String;
    const/4 v0, 0x1

    if-le v9, v0, :cond_0

    if-nez v11, :cond_2

    .line 361
    :cond_0
    const-string v4, "(m_id = ? AND m_type = ?)"

    .line 363
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v5, v0

    const/4 v0, 0x1

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 380
    .local v5, selectionArgs:[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 384
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 386
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    .line 388
    const/4 v0, 0x1

    .line 391
    if-eqz v7, :cond_1

    .line 392
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 396
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #messageId:Ljava/lang/String;
    :cond_1
    :goto_1
    return v0

    .line 368
    .restart local v8       #messageId:Ljava/lang/String;
    :cond_2
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>([B)V

    .line 370
    .local v12, transactionID:Ljava/lang/String;
    const-string v4, "(m_id = ? AND tr_id = ? AND m_type = ?)"

    .line 374
    .restart local v4       #selection:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v5, v0

    const/4 v0, 0x1

    aput-object v12, v5, v0

    const/4 v0, 0x2

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .restart local v5       #selectionArgs:[Ljava/lang/String;
    goto :goto_0

    .line 391
    .end local v12           #transactionID:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 392
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_3
    throw v0

    :cond_4
    if-eqz v7, :cond_5

    .line 392
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 396
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #messageId:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 6
    .parameter "rc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x12

    .line 403
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v3

    .line 404
    .local v3, tranId:[B
    if-eqz v3, :cond_0

    .line 407
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getMmsReportAllowed(Landroid/content/Context;)I

    move-result v0

    .line 409
    .local v0, ReportAlloed:I
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    invoke-direct {v1, v5, v3, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[BI)V

    .line 417
    .end local v0           #ReportAlloed:I
    .local v1, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, lineNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 419
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/GenericPdu;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 426
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 427
    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/transaction/Transaction;->sendPdu([BLjava/lang/String;)[B

    .line 432
    .end local v1           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    .end local v2           #lineNumber:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 412
    :cond_1
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    invoke-direct {v1, v5, v3}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    .restart local v1       #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    goto :goto_0

    .line 421
    .restart local v2       #lineNumber:Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v5, "insert-address-token"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/GenericPdu;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto :goto_1

    .line 429
    :cond_3
    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B

    goto :goto_2
.end method

.method private static updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "contentLocation"
    .parameter "locked"

    .prologue
    const/4 v4, 0x0

    .line 442
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 443
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "locked"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 446
    return-void
.end method


# virtual methods
.method public getContentLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    return-void
.end method

.method public run()V
    .locals 27

    .prologue
    .line 146
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/16 v6, 0x81

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/Transaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v21

    .line 152
    .local v21, resp:[B
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v23

    check-cast v23, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 153
    .local v23, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    if-nez v23, :cond_2

    .line 154
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v21           #resp:[B
    .end local v23           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :catch_0
    move-exception v25

    .line 328
    .local v25, t:Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 329
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Not Found"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    const-string v4, "Mms:transaction"

    const-string v5, "[RetrieveTransaction] 404 Not Found exception"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v11, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v11, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 332
    .local v11, values:Landroid/content/ContentValues;
    const-string v4, "resp_st"

    const/16 v5, 0xe4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 336
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_0
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v25 .. v25}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 341
    const-string v4, "Mms:transaction"

    const-string v5, "[RetrieveTransaction] Retrieval failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v25           #t:Ljava/lang/Throwable;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 345
    return-void

    .line 155
    .restart local v21       #resp:[B
    .restart local v23       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSavePduFiles()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    const-string v4, "RetrieveConf"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    .line 162
    :cond_3
    const/16 v26, -0x1

    .line 163
    .local v26, threadId:I
    const-wide/16 v15, -0x1

    .line 166
    .local v15, date:J
    const/16 v19, 0x0

    .line 167
    .local v19, msgUri:Landroid/net/Uri;
    const/16 v18, 0x0

    .line 169
    .local v18, isSpam:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 191
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 280
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/android/mms/transaction/Transaction;->updateMessageSize(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 286
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v6, v8, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 291
    const-wide/16 v4, -0x1

    cmp-long v4, v15, v4

    if-eqz v4, :cond_6

    .line 293
    const-string v4, "WAP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction]  update the date in thread"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .restart local v11       #values:Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v4, Landroid/provider/Telephony$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    move/from16 v0, v26

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_6
    if-eqz v19, :cond_8

    .line 305
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 307
    if-nez v18, :cond_7

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-static {v4, v0, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 313
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 314
    if-eqz v19, :cond_8

    if-eqz v18, :cond_8

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-static {v4, v0, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v22

    .line 316
    .local v22, result:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 338
    .end local v22           #result:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 341
    const-string v4, "Mms:transaction"

    const-string v5, "[RetrieveTransaction] Retrieval failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_9
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsAutoDownload4Spam()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "spammms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 178
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 181
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Z

    move-result v18

    .line 182
    if-nez v18, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)Z

    move-result v18

    goto/16 :goto_1

    .line 199
    :cond_b
    const/16 v24, -0x1

    .line 200
    .local v24, simSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/Service;

    .line 201
    .local v25, t:Landroid/app/Service;
    move-object/from16 v0, v25

    instance-of v4, v0, Lcom/android/mms/transaction/TransactionService2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v4, :cond_13

    .line 202
    const/16 v24, 0x1

    .line 211
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/RetrieveTransaction;->sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 216
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v20

    .line 217
    .local v20, persister:Lcom/google/android/mms/pdu/PduPersister;
    if-eqz v18, :cond_14

    .line 218
    sget-object v4, Landroid/provider/Telephony$SpamMms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v19

    .line 223
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 224
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_d

    :cond_c
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_11

    .line 226
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "thread_id"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v14

    .line 228
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_e

    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 229
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 230
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction] Thread Id is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 233
    :cond_e
    if-eqz v14, :cond_f

    .line 234
    :try_start_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_f
    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_11

    .line 239
    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v7, v4

    const/4 v4, 0x1

    const-string v5, "\'sms\' as type"

    aput-object v5, v7, v4

    const/4 v4, 0x2

    const-string v5, "date"

    aput-object v5, v7, v4

    .line 246
    .local v7, SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thread_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") UNION  select DISTINCT _id,\'mms\' as type, date * 1000 AS date from pdu where (thread_id= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "date DESC LIMIT 2"

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v14

    .line 253
    if-eqz v14, :cond_10

    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 254
    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 255
    const-string v4, "WAP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction]  date last is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v0, v15

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 257
    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 258
    const-string v4, "WAP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction]  date last is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v0, v15

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 261
    :cond_10
    if-eqz v14, :cond_11

    .line 262
    :try_start_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 270
    .end local v7           #SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    move-object/from16 v0, v19

    invoke-static {v4, v0, v5, v6}, Lcom/android/mms/transaction/RetrieveTransaction;->updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 338
    .end local v15           #date:J
    .end local v18           #isSpam:Z
    .end local v19           #msgUri:Landroid/net/Uri;
    .end local v20           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v21           #resp:[B
    .end local v23           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v24           #simSlot:I
    .end local v25           #t:Landroid/app/Service;
    .end local v26           #threadId:I
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_12

    .line 339
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 341
    const-string v5, "Mms:transaction"

    const-string v6, "[RetrieveTransaction] Retrieval failed."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 338
    throw v4

    .line 204
    .restart local v15       #date:J
    .restart local v18       #isSpam:Z
    .restart local v19       #msgUri:Landroid/net/Uri;
    .restart local v21       #resp:[B
    .restart local v23       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .restart local v24       #simSlot:I
    .restart local v25       #t:Landroid/app/Service;
    .restart local v26       #threadId:I
    :cond_13
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 212
    :catch_1
    move-exception v17

    .line 213
    .local v17, e:Ljava/io/IOException;
    :try_start_a
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 220
    .end local v17           #e:Ljava/io/IOException;
    .restart local v20       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_14
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_5

    .line 233
    .restart local v14       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    if-eqz v14, :cond_15

    .line 234
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_15
    throw v4

    .line 261
    .restart local v7       #SMS_MMS_MESSAGE_UNION_PROJECTION:[Ljava/lang/String;
    :catchall_2
    move-exception v4

    if-eqz v14, :cond_16

    .line 262
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_16
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
.end method
