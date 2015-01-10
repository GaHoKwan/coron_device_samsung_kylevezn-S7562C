.class public Lcom/android/mms/transaction/RetryScheduler;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms:transaction"

.field private static sInstance:Lcom/android/mms/transaction/RetryScheduler;

.field private static sInstance2:Lcom/android/mms/transaction/RetryScheduler;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiCall:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z

    .line 98
    new-instance v0, Lcom/android/mms/transaction/RetryScheduler$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler$1;-><init>(Lcom/android/mms/transaction/RetryScheduler;)V

    iput-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/RetryScheduler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/RetryScheduler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/mms/transaction/RetryScheduler;->mWifiCall:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/RetryScheduler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/mms/transaction/RetryScheduler;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    .line 94
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method public static getInstance2(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance2:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance2:Lcom/android/mms/transaction/RetryScheduler;

    .line 119
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance2:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method private getResponseStatus(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v3, 0x0

    .line 404
    const/4 v8, 0x0

    .line 405
    .local v8, respStatus:I
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 408
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 412
    :cond_0
    if-eqz v7, :cond_1

    .line 413
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 415
    :cond_1
    if-eqz v8, :cond_2

    .line 416
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RetryScheduler] Response status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_2
    return v8

    .line 412
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 413
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getRetrieveStatus(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v3, 0x0

    .line 423
    const/4 v8, 0x0

    .line 424
    .local v8, respStatus:I
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 427
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 431
    :cond_0
    if-eqz v7, :cond_1

    .line 432
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_1
    if-eqz v8, :cond_2

    .line 435
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RetryScheduler] Response status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_2
    return v8

    .line 431
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 432
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private isConnected()Z
    .locals 5

    .prologue
    .line 124
    iget-object v2, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 158
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 159
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 160
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RetryScheduler] isConnected() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method

.method private isConnected(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x2

    .line 166
    iget-object v3, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    move-object v2, p1

    .line 169
    check-cast v2, Landroid/app/Service;

    .line 170
    .local v2, t:Landroid/app/Service;
    instance-of v3, v2, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v3, :cond_0

    .line 171
    const/4 v3, 0x1

    invoke-static {v5, v3}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 175
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    return v3

    .line 173
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    goto :goto_0
.end method

.method private scheduleRetry(Landroid/net/Uri;)V
    .locals 39
    .parameter "uri"

    .prologue
    .line 208
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 210
    .local v24, msgId:J
    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v38

    .line 211
    .local v38, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "protocol"

    const-string v4, "mms"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    const-string v3, "message"

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v38 .. v38}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 217
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_4

    .line 219
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 220
    const-string v3, "msg_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 222
    .local v26, msgType:I
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v3, "retry_index"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v32, v3, 0x1

    .line 228
    .local v32, retryIndex:I
    const/16 v19, 0x1

    .line 230
    .local v19, errorType:I
    new-instance v33, Lcom/android/mms/transaction/DefaultRetryScheme;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-direct {v0, v3, v1}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;I)V

    .line 232
    .local v33, scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    new-instance v10, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v10, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 233
    .local v10, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 234
    .local v15, current:J
    const/16 v3, 0x82

    move/from16 v0, v26

    if-ne v0, v3, :cond_5

    const/16 v22, 0x1

    .line 236
    .local v22, isRetryDownloading:Z
    :goto_0
    const/16 v29, 0x1

    .line 237
    .local v29, retry:Z
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->getResponseStatus(J)I

    move-result v28

    .line 238
    .local v28, respStatus:I
    const/16 v18, 0x0

    .line 239
    .local v18, errorString:I
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] respStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-nez v22, :cond_8

    .line 242
    sparse-switch v28, :sswitch_data_0

    .line 272
    :goto_1
    if-eqz v18, :cond_0

    .line 273
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 274
    const/16 v29, 0x0

    .line 291
    :cond_0
    const/16 v3, 0xe0

    move/from16 v0, v28

    if-lt v0, v3, :cond_1

    const/16 v3, 0xff

    move/from16 v0, v28

    if-gt v0, v3, :cond_1

    .line 293
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f0a0189

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 294
    const/16 v29, 0x0

    .line 301
    :cond_1
    const/4 v3, 0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_2

    .line 302
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v27

    .line 304
    .local v27, multiSimNum:I
    const/4 v3, 0x1

    move/from16 v0, v27

    if-le v0, v3, :cond_2

    .line 305
    const-string v3, "persist.sys.dataprefer.simid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 306
    .local v23, mDataSimSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    check-cast v35, Landroid/app/Service;

    .line 309
    .local v35, t:Landroid/app/Service;
    move-object/from16 v0, v35

    instance-of v3, v0, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v3, :cond_9

    .line 310
    const/16 v34, 0x1

    .line 315
    .local v34, simSlot:I
    :goto_2
    move/from16 v0, v34

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 316
    const-string v3, "Mms:transaction"

    const-string v4, "scheduleRetry retry change to false"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/16 v29, 0x0

    .line 323
    .end local v23           #mDataSimSlot:I
    .end local v27           #multiSimNum:I
    .end local v34           #simSlot:I
    .end local v35           #t:Landroid/app/Service;
    :cond_2
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v3

    move/from16 v0, v32

    if-ge v0, v3, :cond_a

    if-eqz v29, :cond_a

    .line 324
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v3

    add-long v30, v15, v3

    .line 326
    .local v30, retryAt:J
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] scheduleRetry: retry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is scheduled at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v30, v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms from now"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v3, "due_time"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    if-eqz v22, :cond_3

    .line 333
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x82

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 383
    .end local v30           #retryAt:J
    :cond_3
    :goto_3
    const-string v3, "err_type"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    const-string v3, "retry_index"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    const-string v3, "last_try"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 389
    .local v14, columnIndex:I
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 390
    .local v20, id:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v14           #columnIndex:I
    .end local v15           #current:J
    .end local v18           #errorString:I
    .end local v19           #errorType:I
    .end local v20           #id:J
    .end local v22           #isRetryDownloading:Z
    .end local v26           #msgType:I
    .end local v28           #respStatus:I
    .end local v29           #retry:Z
    .end local v32           #retryIndex:I
    .end local v33           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    :goto_4
    if-eqz v17, :cond_4

    .line 398
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_4
    :goto_5
    return-void

    .line 234
    .restart local v10       #values:Landroid/content/ContentValues;
    .restart local v15       #current:J
    .restart local v19       #errorType:I
    .restart local v26       #msgType:I
    .restart local v32       #retryIndex:I
    .restart local v33       #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 244
    .restart local v18       #errorString:I
    .restart local v22       #isRetryDownloading:Z
    .restart local v28       #respStatus:I
    .restart local v29       #retry:Z
    :sswitch_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 245
    const v18, 0x7f0a0474

    goto/16 :goto_1

    .line 247
    :cond_6
    const v18, 0x7f0a004e

    .line 249
    goto/16 :goto_1

    .line 253
    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 254
    const v18, 0x7f0a027a

    goto/16 :goto_1

    .line 256
    :cond_7
    const v18, 0x7f0a0279

    .line 257
    goto/16 :goto_1

    .line 260
    :sswitch_2
    const v18, 0x7f0a027c

    .line 261
    goto/16 :goto_1

    .line 265
    :sswitch_3
    const v18, 0x7f0a027b

    .line 266
    goto/16 :goto_1

    .line 268
    :sswitch_4
    const v18, 0x7f0a0189

    goto/16 :goto_1

    .line 279
    :cond_8
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->getRetrieveStatus(J)I

    move-result v28

    .line 280
    const/16 v3, 0xe4

    move/from16 v0, v28

    if-ne v0, v3, :cond_0

    .line 281
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f0a027b

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    const/16 v29, 0x0

    .line 397
    if-eqz v17, :cond_4

    .line 398
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 312
    .restart local v23       #mDataSimSlot:I
    .restart local v27       #multiSimNum:I
    .restart local v35       #t:Landroid/app/Service;
    :cond_9
    const/16 v34, 0x0

    .restart local v34       #simSlot:I
    goto/16 :goto_2

    .line 339
    .end local v23           #mDataSimSlot:I
    .end local v27           #multiSimNum:I
    .end local v34           #simSlot:I
    .end local v35           #t:Landroid/app/Service;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    check-cast v35, Landroid/app/Service;

    .line 342
    .restart local v35       #t:Landroid/app/Service;
    move-object/from16 v0, v35

    instance-of v3, v0, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v3, :cond_f

    .line 343
    const/16 v34, 0x1

    .line 349
    .restart local v34       #simSlot:I
    :goto_6
    const/16 v19, 0xa

    .line 350
    if-eqz v22, :cond_11

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "thread_id"

    aput-object v7, v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 354
    .local v13, c:Landroid/database/Cursor;
    const-wide/16 v36, -0x1

    .line 355
    .local v36, threadId:J
    if-eqz v13, :cond_c

    .line 357
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 358
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v36

    .line 361
    :cond_b
    if-eqz v13, :cond_c

    .line 362
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_c
    const-wide/16 v3, -0x1

    cmp-long v3, v36, v3

    if-eqz v3, :cond_d

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v36

    move/from16 v2, v34

    invoke-static {v3, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;JI)V

    .line 371
    :cond_d
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x87

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 397
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v13           #c:Landroid/database/Cursor;
    .end local v15           #current:J
    .end local v18           #errorString:I
    .end local v19           #errorType:I
    .end local v22           #isRetryDownloading:Z
    .end local v26           #msgType:I
    .end local v28           #respStatus:I
    .end local v29           #retry:Z
    .end local v32           #retryIndex:I
    .end local v33           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v34           #simSlot:I
    .end local v35           #t:Landroid/app/Service;
    .end local v36           #threadId:J
    :catchall_0
    move-exception v3

    if-eqz v17, :cond_e

    .line 398
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v3

    .line 345
    .restart local v10       #values:Landroid/content/ContentValues;
    .restart local v15       #current:J
    .restart local v18       #errorString:I
    .restart local v19       #errorType:I
    .restart local v22       #isRetryDownloading:Z
    .restart local v26       #msgType:I
    .restart local v28       #respStatus:I
    .restart local v29       #retry:Z
    .restart local v32       #retryIndex:I
    .restart local v33       #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .restart local v35       #t:Landroid/app/Service;
    :cond_f
    const/16 v34, 0x0

    .restart local v34       #simSlot:I
    goto :goto_6

    .line 361
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v36       #threadId:J
    :catchall_1
    move-exception v3

    if-eqz v13, :cond_10

    .line 362
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v3

    .line 375
    .end local v13           #c:Landroid/database/Cursor;
    .end local v36           #threadId:J
    :cond_11
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 376
    .local v6, readValues:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move/from16 v0, v34

    invoke-static {v3, v4, v0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZI)V

    goto/16 :goto_3

    .line 394
    .end local v6           #readValues:Landroid/content/ContentValues;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v15           #current:J
    .end local v18           #errorString:I
    .end local v19           #errorType:I
    .end local v22           #isRetryDownloading:Z
    .end local v26           #msgType:I
    .end local v28           #respStatus:I
    .end local v29           #retry:Z
    .end local v32           #retryIndex:I
    .end local v33           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v34           #simSlot:I
    .end local v35           #t:Landroid/app/Service;
    :cond_12
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RetryScheduler] Cannot found correct pending status for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 242
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x84 -> :sswitch_0
        0x86 -> :sswitch_2
        0xc2 -> :sswitch_3
        0xe0 -> :sswitch_4
        0xe1 -> :sswitch_1
        0xe4 -> :sswitch_3
    .end sparse-switch
.end method

.method public static setRetryAlarm(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const-wide v11, 0x7fffffffffffffffL

    const/4 v10, 0x1

    .line 444
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v2

    .local v2, multiSimNum:I
    move-object v7, p0

    .line 446
    check-cast v7, Landroid/app/Service;

    .line 448
    .local v7, t:Landroid/app/Service;
    if-le v2, v10, :cond_4

    .line 449
    instance-of v8, v7, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v8, :cond_3

    .line 450
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    invoke-virtual {v8, v10, v11, v12}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(IJ)Landroid/database/Cursor;

    move-result-object v1

    .line 459
    .local v1, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v1, :cond_2

    .line 461
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 462
    const-string v8, "due_time"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 465
    .local v4, retryAt:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 468
    if-le v2, v10, :cond_5

    instance-of v8, v7, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v8, :cond_5

    .line 469
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_ONALARM"

    const/4 v9, 0x0

    const-class v10, Lcom/android/mms/transaction/TransactionService2;

    invoke-direct {v6, v8, v9, p0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .local v6, service:Landroid/content/Intent;
    :goto_1
    const/4 v8, 0x0

    const/high16 v9, 0x4000

    invoke-static {p0, v8, v6, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 477
    .local v3, operation:Landroid/app/PendingIntent;
    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 478
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 480
    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[RetryScheduler] Next retry is scheduled at"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v4, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms from now"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v3           #operation:Landroid/app/PendingIntent;
    .end local v4           #retryAt:J
    .end local v6           #service:Landroid/content/Intent;
    :cond_1
    if-eqz v1, :cond_2

    .line 487
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_2
    return-void

    .line 452
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    invoke-virtual {v8, v9, v11, v12}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(IJ)Landroid/database/Cursor;

    move-result-object v1

    .restart local v1       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 455
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v1

    .restart local v1       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 471
    .restart local v4       #retryAt:J
    :cond_5
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_ONALARM"

    const/4 v9, 0x0

    const-class v10, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v6, v8, v9, p0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v6       #service:Landroid/content/Intent;
    goto :goto_1

    .line 486
    .end local v4           #retryAt:J
    .end local v6           #service:Landroid/content/Intent;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_6

    .line 487
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v8
.end method


# virtual methods
.method public unregisterReceiver()V
    .locals 3

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/transaction/RetryScheduler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms:transaction"

    const-string v2, "Reciever is not registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 7
    .parameter "observable"

    .prologue
    .line 181
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v2, v0

    .line 182
    .local v2, t:Lcom/android/mms/transaction/Transaction;
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetryScheduler] update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    instance-of v4, v2, Lcom/android/mms/transaction/NotificationTransaction;

    if-nez v4, :cond_0

    instance-of v4, v2, Lcom/android/mms/transaction/RetrieveTransaction;

    if-nez v4, :cond_0

    instance-of v4, v2, Lcom/android/mms/transaction/ReadRecTransaction;

    if-nez v4, :cond_0

    instance-of v4, v2, Lcom/android/mms/transaction/SendTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    .line 191
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v1

    .line 192
    .local v1, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 193
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 194
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 195
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/RetryScheduler;->scheduleRetry(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    :try_start_2
    invoke-virtual {v2, p0}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    .end local v1           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 205
    return-void

    .line 199
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v2, p0}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    .end local v2           #t:Lcom/android/mms/transaction/Transaction;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    throw v4
.end method
