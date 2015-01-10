.class public Lcom/android/mms/transaction/ReadRecTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "ReadRecTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# instance fields
.field private final mReadReportURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "transId"
    .parameter "connectionSettings"
    .parameter "uri"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 56
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    .line 57
    iput-object p4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    move-object v0, p1

    .line 60
    check-cast v0, Landroid/app/Service;

    .line 61
    .local v0, t:Landroid/app/Service;
    instance-of v1, v0, Lcom/android/mms/transaction/TransactionService2;

    if-eqz v1, :cond_0

    .line 62
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance2(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    goto :goto_0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x3

    return v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 79
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 83
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    check-cast v4, Lcom/google/android/mms/pdu/ReadRecInd;

    .line 86
    .local v4, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, lineNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 88
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/google/android/mms/pdu/GenericPdu;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 95
    :goto_0
    new-instance v6, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v4}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v3

    .line 96
    .local v3, postingData:[B
    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B

    .line 98
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 99
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 100
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 109
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 110
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 112
    .end local v1           #lineNumber:Ljava/lang/String;
    .end local v3           #postingData:[B
    .end local v4           #readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 114
    return-void

    .line 90
    .restart local v1       #lineNumber:Ljava/lang/String;
    .restart local v4       #readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    :cond_1
    :try_start_1
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v7, "insert-address-token"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v4, v6}, Lcom/google/android/mms/pdu/GenericPdu;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 101
    .end local v1           #lineNumber:Ljava/lang/String;
    .end local v4           #readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v6, "Mms:transaction"

    const-string v7, "[ReadRecTransaction] Failed to send M-Read-Rec.Ind."

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 109
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 110
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 103
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, e:Lcom/google/android/mms/MmsException;
    :try_start_3
    const-string v6, "Mms:transaction"

    const-string v7, "[ReadRecTransaction] Failed to load message from Outbox."

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 109
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 110
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 105
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v6, "Mms:transaction"

    const-string v7, "[ReadRecTransaction] Unexpected RuntimeException."

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 109
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 110
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 108
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v7}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v7

    if-eq v7, v8, :cond_2

    .line 109
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v7, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 110
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v8, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 108
    throw v6
.end method
