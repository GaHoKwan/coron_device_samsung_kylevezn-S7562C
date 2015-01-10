.class public Lcom/android/mms/transaction/SendTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "SendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EVENT_TRANSACTION_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# instance fields
.field private httpClient:Landroid/net/http/AndroidHttpClient;

.field private final mSendReqURI:Landroid/net/Uri;

.field private mThread:Ljava/lang/Thread;

.field private mTimeoutHandler:Landroid/os/Handler;

.field private post:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "transId"
    .parameter "connectionSettings"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 94
    new-instance v1, Lcom/android/mms/transaction/SendTransaction$1;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/SendTransaction$1;-><init>(Lcom/android/mms/transaction/SendTransaction;)V

    iput-object v1, p0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    .line 128
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    .line 129
    iput-object p4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 130
    iput-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 131
    iput-object v2, p0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object v0, p1

    .line 135
    check-cast v0, Landroid/app/Service;

    .line 136
    .local v0, t:Landroid/app/Service;
    instance-of v1, v0, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v1, :cond_0

    .line 137
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance2(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SendTransaction;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SendTransaction;)Landroid/net/http/AndroidHttpClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/transaction/SendTransaction;Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    return-object p1
.end method


# virtual methods
.method public getSendReqURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x2

    return v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    .line 149
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method

.method public run()V
    .locals 34

    .prologue
    .line 154
    const/4 v13, 0x0

    .line 155
    .local v13, app_id:I
    const/16 v21, -0x1

    .line 158
    .local v21, msg_id:I
    :try_start_0
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Start sending"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v23

    .line 160
    .local v23, rateCtlr:Lcom/android/mms/util/RateController;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v3

    if-nez v3, :cond_4

    .line 161
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Sending rate limit surpassed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 303
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    if-lez v13, :cond_1

    .line 308
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v14, broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_23

    .line 310
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    :goto_0
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v14, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move/from16 v0, v21

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    .end local v14           #broadintent:Landroid/content/Intent;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_2

    .line 325
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 329
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 331
    .end local v23           #rateCtlr:Lcom/android/mms/util/RateController;
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 334
    :cond_3
    return-void

    .line 166
    .restart local v23       #rateCtlr:Lcom/android/mms/util/RateController;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v22

    .line 167
    .local v22, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v28

    check-cast v28, Lcom/google/android/mms/pdu/SendReq;

    .line 170
    .local v28, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long v18, v3, v7

    .line 171
    .local v18, date:J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getOptionalFieldAttendance()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    move-object/from16 v0, v28

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 176
    :cond_5
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 177
    .local v6, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v4, "insert-address-token"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/GenericPdu;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 196
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] setFrom by proxy: insert-address-token"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 200
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    .line 213
    .local v31, tokenKey:J
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v8

    new-instance v3, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v3, v4, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B

    move-result-object v27

    .line 215
    .local v27, response:[B
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    .line 217
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSavePduFiles()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 218
    const-string v3, "SendReq"

    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v4, v5, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    .line 219
    const-string v3, "SendConf"

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    .line 222
    :cond_6
    new-instance v26, Ljava/lang/String;

    invoke-direct/range {v26 .. v27}, Ljava/lang/String;-><init>([B)V

    .line 223
    .local v26, respStr:Ljava/lang/String;
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SendTransaction] run: send mms msg ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), resp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v3, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v27

    invoke-direct {v3, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v15

    check-cast v15, Lcom/google/android/mms/pdu/SendConf;

    .line 226
    .local v15, conf:Lcom/google/android/mms/pdu/SendConf;
    if-nez v15, :cond_a

    .line 227
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] No M-Send.conf received. Return here!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 303
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_7
    if-lez v13, :cond_8

    .line 308
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v14       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_24

    .line 310
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    :goto_2
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v14, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move/from16 v0, v21

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    .end local v14           #broadintent:Landroid/content/Intent;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_9

    .line 325
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 329
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 233
    :cond_a
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v24

    .line 234
    .local v24, reqId:[B
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v16

    .line 235
    .local v16, confId:[B
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_e

    .line 236
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SendTransaction] Inconsistent Transaction-ID: req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", conf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 303
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_b
    if-lez v13, :cond_c

    .line 308
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v14       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_25

    .line 310
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    :goto_3
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v14, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move/from16 v0, v21

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    .end local v14           #broadintent:Landroid/content/Intent;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_d

    .line 325
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 329
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 244
    :cond_e
    :try_start_3
    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #values:Landroid/content/ContentValues;
    const/4 v3, 0x2

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 245
    .restart local v6       #values:Landroid/content/ContentValues;
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v25

    .line 246
    .local v25, respStatus:I
    const-string v3, "resp_st"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const/16 v3, 0x80

    move/from16 v0, v25

    if-eq v0, v3, :cond_12

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 251
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SendTransaction] Server returned an error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_f

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 303
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_f
    if-lez v13, :cond_10

    .line 308
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v14       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_26

    .line 310
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    :goto_4
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v14, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move/from16 v0, v21

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    .end local v14           #broadintent:Landroid/content/Intent;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_11

    .line 325
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 329
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 256
    :cond_12
    const/16 v29, -0x1

    .line 257
    .local v29, simSlot:I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    check-cast v30, Landroid/app/Service;

    .line 258
    .local v30, t:Landroid/app/Service;
    move-object/from16 v0, v30

    instance-of v3, v0, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v3, :cond_19

    .line 259
    const/16 v29, 0x1

    .line 263
    :goto_5
    const-string v3, "sim_slot"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v20

    .line 267
    .local v20, messageId:Ljava/lang/String;
    const-string v3, "m_id"

    move-object/from16 v0, v20

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v33

    .line 274
    .local v33, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_id"

    aput-object v4, v9, v3

    const/4 v3, 0x1

    const-string v4, "msg_id"

    aput-object v4, v9, v3

    const-string v10, "app_id>0"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v17

    .line 278
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_14

    .line 280
    :try_start_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 281
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 282
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v21

    .line 285
    :cond_13
    :try_start_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_14
    if-nez v13, :cond_15

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-static {v3, v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 295
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_16

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 303
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_16
    if-lez v13, :cond_17

    .line 308
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v14       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    .line 310
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    :goto_6
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v14, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move/from16 v0, v21

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    .end local v14           #broadintent:Landroid/content/Intent;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_18

    .line 325
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 329
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 261
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v20           #messageId:Ljava/lang/String;
    .end local v33           #uri:Landroid/net/Uri;
    :cond_19
    const/16 v29, 0x0

    goto/16 :goto_5

    .line 285
    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v20       #messageId:Ljava/lang/String;
    .restart local v33       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 297
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v15           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v16           #confId:[B
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v18           #date:J
    .end local v20           #messageId:Ljava/lang/String;
    .end local v22           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v23           #rateCtlr:Lcom/android/mms/util/RateController;
    .end local v24           #reqId:[B
    .end local v25           #respStatus:I
    .end local v26           #respStr:Ljava/lang/String;
    .end local v27           #response:[B
    .end local v28           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v29           #simSlot:I
    .end local v30           #t:Landroid/app/Service;
    .end local v31           #tokenKey:J
    .end local v33           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v30

    .line 298
    .local v30, t:Ljava/lang/Throwable;
    :try_start_8
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SendTransaction] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 303
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] Delivery failed."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_1a
    if-lez v13, :cond_1b

    .line 308
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v14       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_22

    .line 310
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x2

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    :goto_7
    const-string v3, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v3, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v14, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v3, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move/from16 v0, v21

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    .end local v14           #broadintent:Landroid/content/Intent;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_1c

    .line 325
    const-string v3, "Mms:transaction"

    const-string v4, "[SendTransaction] abort post"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 329
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v3, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 300
    .end local v30           #t:Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1d

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 303
    const-string v4, "Mms:transaction"

    const-string v5, "[SendTransaction] Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_1d
    if-lez v13, :cond_1e

    .line 308
    new-instance v14, Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v14       #broadintent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_21

    .line 310
    const-string v4, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v5, 0x2

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    :goto_8
    const-string v4, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v4, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v14, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v4, "com.android.mms.transaction.MESSAGE_MSG_ID"

    move/from16 v0, v21

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    .end local v14           #broadintent:Landroid/content/Intent;
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v4, :cond_1f

    .line 325
    const-string v4, "Mms:transaction"

    const-string v5, "[SendTransaction] abort post"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->post:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 329
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v4, :cond_20

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 331
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/transaction/SendTransaction;->httpClient:Landroid/net/http/AndroidHttpClient;

    .line 300
    :cond_20
    throw v3

    .line 312
    .restart local v14       #broadintent:Landroid/content/Intent;
    :cond_21
    const-string v4, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8

    .restart local v30       #t:Ljava/lang/Throwable;
    :cond_22
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_7

    .end local v30           #t:Ljava/lang/Throwable;
    .restart local v23       #rateCtlr:Lcom/android/mms/util/RateController;
    :cond_23
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .restart local v6       #values:Landroid/content/ContentValues;
    .restart local v15       #conf:Lcom/google/android/mms/pdu/SendConf;
    .restart local v18       #date:J
    .restart local v22       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v26       #respStr:Ljava/lang/String;
    .restart local v27       #response:[B
    .restart local v28       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .restart local v31       #tokenKey:J
    :cond_24
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .restart local v16       #confId:[B
    .restart local v24       #reqId:[B
    :cond_25
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .restart local v25       #respStatus:I
    :cond_26
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_4

    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v20       #messageId:Ljava/lang/String;
    .restart local v29       #simSlot:I
    .local v30, t:Landroid/app/Service;
    .restart local v33       #uri:Landroid/net/Uri;
    :cond_27
    const-string v3, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6
.end method
