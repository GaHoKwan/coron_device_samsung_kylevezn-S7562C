.class public Lcom/orange/authentication/simcard/SimCardAuthenticationService;
.super Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;
.source "SimCardAuthenticationService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;,
        Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    }
.end annotation


# static fields
.field private static final AKA_ARRAYS_LENGTHS_SIZE:I = 0x2

.field private static final AKA_AUTH_HEADER_SIZE:I = 0x4

.field private static final AKA_AUTN_ARR_SIZE:I = 0x10

.field private static final AKA_RAND_ARR_SIZE:I = 0x10

.field private static final BRCM_AKA_AUTH_HEADER_SIZE:I = 0x8

.field private static final BRCM_GSM_AUTH_HEADER_SIZE:I = 0x6

.field private static final DBG:Z = true

.field private static final GSM_AUTH_HEADER_SIZE:I = 0x4

.field private static final GSM_RAND_ARR_SIZE:I = 0x10

.field private static final IPC_SEC_IMS_AUTH_CANNOT_PERFORM:I = 0x1

.field private static final IPC_SEC_IMS_AUTH_MAK_CODE_FAILURE:I = 0x3

.field private static final IPC_SEC_IMS_AUTH_NO_ERR:I = 0x0

.field private static final IPC_SEC_IMS_AUTH_SKIP_RESPONSE:I = 0x2

.field private static final IPC_SEC_IMS_AUTH_SQN_FAIL:I = 0x4

.field private static final IPC_SEC_IMS_AUTH_SYNCH_FAIL:I = 0x5

.field private static final IPC_SEC_IMS_AUTH_TYPE_3G:I = 0x2

.field private static final IPC_SEC_IMS_AUTH_TYPE_GSM:I = 0x1

.field private static final IPC_SEC_IMS_AUTH_UNSUPPORTED_CONTEX:I = 0x6

.field private static final REQUEST_AKA_AUTH:I = 0x1

.field private static final REQUEST_GET_SIM_CARD_TYPE:I = 0x0

.field private static final REQUEST_GSM_AUTH:I = 0x2

.field private static final REQUEST_THREAD_NAME:Ljava/lang/String; = "SimCardAuhtServRequestThread"

.field private static final TAG:Ljava/lang/String; = "SERVICE_TEST"

.field private static final WAIT_TIMEOUT:I = 0x1f40


# instance fields
.field private mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mRILrequestsHandler:Landroid/os/Handler;

.field private mRequestOriginatorArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Landroid/os/HandlerThread;

.field private mSequenceNumber:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V
    .locals 3
    .parameter "commandsInterface"
    .parameter "context"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;-><init>()V

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mSequenceNumber:I

    .line 158
    iput-object p1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 159
    iput-object p2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mContext:Landroid/content/Context;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    .line 164
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SimCardAuhtServRequestThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestThread:Landroid/os/HandlerThread;

    .line 165
    iget-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 167
    iget-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 168
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 170
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    .line 172
    :cond_0
    return-void
.end method

.method private Loge(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1569
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SERVICE_TEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return-void
.end method

.method private Logi(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1558
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    :catch_0
    move-exception v0

    .line 1560
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SERVICE_TEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    return-void
.end method

.method private afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "requester"
    .parameter "reqInfoHead"

    .prologue
    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, isWaitException:Z
    const/4 v3, 0x0

    .local v3, waitExceptionString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 442
    .local v1, error:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " afterRILrequest invocation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 448
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :try_start_1
    iget-boolean v4, p1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    if-nez v4, :cond_0

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " - going into WAIT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 454
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-wide/16 v6, 0x1f40

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 456
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    :goto_0
    iget-object v5, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    monitor-enter v5

    .line 467
    :try_start_2
    iget-object v4, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 468
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 471
    iget-boolean v4, p1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    if-eqz v4, :cond_1

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "response is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 474
    const/4 v4, 0x0

    .line 480
    :goto_1
    return-object v4

    .line 456
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    const/4 v2, 0x1

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Thread.currentThread().wait(WAIT_TIMEOUT): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 475
    :cond_1
    if-eqz v2, :cond_2

    .line 476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - wait exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    move-object v4, v1

    .line 477
    goto :goto_1

    .line 479
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - wait timeout - invalid response"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    move-object v4, v1

    .line 480
    goto :goto_1
.end method

.method private beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    .locals 5
    .parameter "msg"
    .parameter "reqInfoHead"

    .prologue
    const/4 v1, 0x0

    .line 407
    if-nez p1, :cond_0

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - can not obtain message from mRILrequestsHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    move-object v0, v1

    .line 430
    :goto_0
    return-object v0

    .line 412
    :cond_0
    new-instance v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    invoke-direct {v0, p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationService;Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;)V

    .line 413
    .local v0, requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    .line 414
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    .line 415
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->obtainSequenceNumber()I

    move-result v2

    iput v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    .line 416
    #setter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$102(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beforeRILrequest with allocated seq number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    monitor-enter v2

    .line 424
    :try_start_0
    iget-object v3, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - no memory to add requester to pull"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 427
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 429
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private byteArrayToInt(Ljava/nio/ByteBuffer;)I
    .locals 9
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x4

    .line 1495
    if-nez p1, :cond_0

    .line 1496
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1498
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    .line 1500
    .local v3, bufferLength:I
    const/4 v1, 0x4

    .line 1501
    .local v1, INT_BYTE_SIZE:I
    if-le v3, v6, :cond_1

    move v0, v6

    .line 1504
    .local v0, CORRECT_VALUE_SIZE:I
    :goto_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1505
    .local v2, bb:Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1509
    move v4, v0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 1510
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1509
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #CORRECT_VALUE_SIZE:I
    .end local v2           #bb:Ljava/nio/ByteBuffer;
    .end local v4           #i:I
    :cond_1
    move v0, v3

    .line 1501
    goto :goto_0

    .line 1515
    .restart local v0       #CORRECT_VALUE_SIZE:I
    .restart local v2       #bb:Ljava/nio/ByteBuffer;
    .restart local v4       #i:I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 1516
    .local v5, startPosition:I
    sub-int v4, v3, v0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 1517
    add-int v6, v5, v4

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1516
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1520
    :cond_3
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    return v6
.end method

.method private byteArrayToLong(Ljava/nio/ByteBuffer;)J
    .locals 9
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v6, 0x8

    .line 1525
    if-nez p1, :cond_0

    .line 1526
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1528
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    .line 1530
    .local v3, bufferLength:I
    const/16 v1, 0x8

    .line 1531
    .local v1, LONG_BYTE_SIZE:I
    if-le v3, v6, :cond_1

    move v0, v6

    .line 1534
    .local v0, CORRECT_VALUE_SIZE:I
    :goto_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1535
    .local v2, bb:Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1539
    move v4, v0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 1540
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1539
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #CORRECT_VALUE_SIZE:I
    .end local v2           #bb:Ljava/nio/ByteBuffer;
    .end local v4           #i:I
    :cond_1
    move v0, v3

    .line 1531
    goto :goto_0

    .line 1545
    .restart local v0       #CORRECT_VALUE_SIZE:I
    .restart local v2       #bb:Ljava/nio/ByteBuffer;
    .restart local v4       #i:I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 1546
    .local v5, startPosition:I
    sub-int v4, v3, v0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 1547
    add-int v6, v5, v4

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1546
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1550
    :cond_3
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    return-wide v6
.end method

.method private byteArrayToString([B)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 1584
    if-nez p1, :cond_0

    .line 1585
    const-string v3, "null"

    .line 1593
    :goto_0
    return-object v3

    .line 1586
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1587
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1588
    const/4 v2, 0x0

    .line 1589
    .local v2, val:I
    aget-byte v3, p1, v0

    and-int/lit16 v2, v3, 0xff

    .line 1590
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1591
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1593
    .end local v2           #val:I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private checkPermission()Z
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mContext:Landroid/content/Context;

    const-string v1, "com.orange.permission.SIMCARD_AUTHENTICATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMethodName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1576
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 1577
    .local v0, methodName:Ljava/lang/String;
    const-string v1, "access"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1580
    .end local v0           #methodName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #methodName:Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleAkaAuthResponse(Landroid/os/Message;)Ljava/lang/Object;
    .locals 20
    .parameter "response"

    .prologue
    .line 926
    const/4 v7, 0x0

    .line 927
    .local v7, error:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 928
    const-string v7, "response == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 929
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    .line 1147
    :cond_0
    :goto_0
    return-object v10

    .line 931
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 932
    const-string v7, "response.obj == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 933
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 936
    :cond_2
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v19, "invalid aka response"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    .line 938
    .local v10, invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 939
    .local v3, ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 941
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ar.exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 943
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 946
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :cond_3
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 947
    const-string v7, "ar.result == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 948
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 951
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :cond_4
    new-instance v17, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    invoke-direct/range {v17 .. v17}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>()V

    .line 954
    .local v17, result:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [B

    move-object/from16 v2, v18

    check-cast v2, [B

    .line 955
    .local v2, akaResponse:[B
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "akaResponse="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 966
    const/4 v9, 0x0

    .line 968
    .local v9, index:I
    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 971
    aget-byte v18, v2, v9

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 975
    add-int/lit8 v9, v9, 0x1

    .line 976
    aget-byte v16, v2, v9

    .line 977
    .local v16, response_error_type:I
    packed-switch v16, :pswitch_data_0

    .line 1000
    :pswitch_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "response type - Unexpected error type = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 980
    :pswitch_1
    const-string v18, "response type - IPC_SEC_IMS_AUTH_NO_ERR"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1009
    :goto_1
    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 1012
    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1013
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>([B)V

    goto/16 :goto_0

    .line 984
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :pswitch_2
    const-string v18, "response type - IPC_SEC_IMS_AUTH_UNSUPPORTED_CONTEX"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 985
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NO_SUCH_AUTH_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v19, "unsupported context"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 991
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :pswitch_3
    const-string v18, "response type - IPC_SEC_IMS_AUTH_CANNOT_PERFORM"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 992
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v19, "cannot perform"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 995
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :pswitch_4
    const-string v18, "response type - IPC_SEC_IMS_AUTH_SQN_FAIL"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1018
    :cond_5
    const/4 v4, 0x0

    .line 1019
    .local v4, auts_len:I
    const/4 v5, 0x0

    .line 1020
    .local v5, ck_len:I
    const/4 v8, 0x0

    .line 1021
    .local v8, ik_len:I
    const/4 v11, 0x0

    .line 1022
    .local v11, kc_len:I
    const/4 v12, 0x0

    .line 1023
    .local v12, res_auts:[B
    const/4 v13, 0x0

    .line 1024
    .local v13, res_ck:[B
    const/4 v14, 0x0

    .line 1025
    .local v14, res_ik:[B
    const/4 v15, 0x0

    .line 1027
    .local v15, res_kc:[B
    add-int/lit8 v9, v9, 0x1

    .line 1028
    aget-byte v4, v2, v9

    .line 1029
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "auts_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1030
    add-int/lit8 v9, v9, 0x1

    .line 1033
    if-lez v4, :cond_6

    .line 1035
    new-array v12, v4, [B

    .line 1037
    const/16 v18, 0x0

    :try_start_0
    move/from16 v0, v18

    invoke-static {v2, v9, v12, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    add-int/lit8 v9, v4, 0x3

    .line 1046
    :cond_6
    if-eqz v12, :cond_7

    .line 1047
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AUTS="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1049
    :cond_7
    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1051
    if-nez v12, :cond_8

    .line 1052
    const-string v18, "Since error type is SQN_FAIL we are retunring synch error with auts NULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1056
    :goto_2
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    invoke-direct {v10, v12}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>([B)V

    goto/16 :goto_0

    .line 1039
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :catch_0
    move-exception v6

    .line 1040
    .local v6, e:Ljava/lang/Throwable;
    const-string v18, "cannot copy auts "

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1054
    .end local v6           #e:Ljava/lang/Throwable;
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Since error type is SQN_FAIL we are retunring synch error with auts = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1059
    :cond_9
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    .line 1063
    aget-byte v5, v2, v9

    .line 1064
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ck_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1065
    array-length v0, v2

    move/from16 v18, v0

    add-int v19, v9, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1068
    add-int/lit8 v9, v9, 0x1

    .line 1070
    if-lez v5, :cond_a

    .line 1072
    new-array v13, v5, [B

    .line 1074
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    invoke-static {v2, v9, v13, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1078
    add-int/2addr v9, v5

    .line 1081
    :cond_a
    if-eqz v13, :cond_b

    .line 1082
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CK="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1086
    :cond_b
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    .line 1090
    aget-byte v8, v2, v9

    .line 1091
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ik_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1092
    array-length v0, v2

    move/from16 v18, v0

    add-int v19, v9, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1095
    add-int/lit8 v9, v9, 0x1

    .line 1097
    if-lez v8, :cond_c

    .line 1099
    new-array v14, v8, [B

    .line 1101
    const/16 v18, 0x0

    :try_start_2
    move/from16 v0, v18

    invoke-static {v2, v9, v14, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1105
    add-int/2addr v9, v8

    .line 1108
    :cond_c
    if-eqz v14, :cond_d

    .line 1109
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IK="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1112
    :cond_d
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    .line 1116
    aget-byte v11, v2, v9

    .line 1117
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "kc_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1118
    array-length v0, v2

    move/from16 v18, v0

    add-int v19, v9, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1121
    add-int/lit8 v9, v9, 0x1

    .line 1123
    if-lez v11, :cond_e

    .line 1125
    new-array v15, v11, [B

    .line 1127
    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    invoke-static {v2, v9, v15, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1131
    add-int/2addr v9, v11

    .line 1134
    :cond_e
    if-eqz v15, :cond_f

    .line 1135
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KC="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1138
    :cond_f
    if-eqz v13, :cond_0

    if-eqz v14, :cond_0

    if-eqz v12, :cond_0

    .line 1141
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setCk([B)V

    .line 1142
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setIk([B)V

    .line 1143
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setRes([B)V

    .line 1145
    const-string v18, "successfully parsed response"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    move-object/from16 v10, v17

    .line 1147
    goto/16 :goto_0

    .line 1075
    :catch_1
    move-exception v6

    .line 1076
    .restart local v6       #e:Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 1102
    .end local v6           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v6

    .line 1103
    .restart local v6       #e:Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 1128
    .end local v6           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v6

    .line 1129
    .restart local v6       #e:Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 977
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleAkaAuthResponse_brcm(Landroid/os/Message;)Ljava/lang/Object;
    .locals 22
    .parameter "response"

    .prologue
    .line 1270
    const/4 v8, 0x0

    .line 1271
    .local v8, error:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1272
    const-string v8, "response == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1273
    new-instance v11, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v20, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v20

    invoke-direct {v11, v0, v8}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    .line 1478
    :cond_0
    :goto_0
    return-object v11

    .line 1275
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 1276
    const-string v8, "response.obj == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1277
    new-instance v11, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v20, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v20

    invoke-direct {v11, v0, v8}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 1280
    :cond_2
    new-instance v11, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v20, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v21, "invalid aka response"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    .line 1282
    .local v11, invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1283
    .local v4, ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1285
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ar.exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1287
    new-instance v11, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v11           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v20, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v20

    invoke-direct {v11, v0, v8}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    .restart local v11       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :cond_3
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 1291
    const-string v8, "ar.result == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1292
    new-instance v11, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v11           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v20, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v20

    invoke-direct {v11, v0, v8}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 1295
    .restart local v11       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :cond_4
    new-instance v17, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    invoke-direct/range {v17 .. v17}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>()V

    .line 1298
    .local v17, result:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v2, v20

    check-cast v2, [B

    .line 1299
    .local v2, akaResponse:[B
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "akaResponse="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 1327
    array-length v0, v2

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 1330
    const/16 v20, 0x4

    aget-byte v20, v2, v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1333
    const/16 v20, 0x5

    aget-byte v18, v2, v20

    .line 1334
    .local v18, resultCode:I
    if-eqz v18, :cond_5

    .line 1335
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Rejection error type : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 1336
    new-instance v11, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v11           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v20, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v21, "cannot perform"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1340
    .restart local v11       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :cond_5
    array-length v0, v2

    move/from16 v20, v0

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 1343
    const/16 v10, 0xb

    .line 1344
    .local v10, index:I
    const/16 v20, 0x9

    aget-byte v3, v2, v20

    .line 1345
    .local v3, apdu_len:I
    if-lez v3, :cond_6

    add-int v20, v10, v3

    array-length v0, v2

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 1346
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid apdu_len : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1350
    :cond_7
    const/16 v19, 0x0

    .line 1351
    .local v19, result_tag:I
    const/4 v5, 0x0

    .line 1352
    .local v5, auts_len:I
    const/4 v6, 0x0

    .line 1353
    .local v6, ck_len:I
    const/4 v9, 0x0

    .line 1354
    .local v9, ik_len:I
    const/4 v12, 0x0

    .line 1355
    .local v12, kc_len:I
    const/4 v13, 0x0

    .line 1356
    .local v13, res_auts:[B
    const/4 v14, 0x0

    .line 1357
    .local v14, res_ck:[B
    const/4 v15, 0x0

    .line 1358
    .local v15, res_ik:[B
    const/16 v16, 0x0

    .line 1360
    .local v16, res_kc:[B
    aget-byte v19, v2, v10

    .line 1361
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "result tag : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 1362
    const/16 v20, 0xdb

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v20, 0xdc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 1365
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 1366
    aget-byte v5, v2, v10

    .line 1367
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "auts_len = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1368
    array-length v0, v2

    move/from16 v20, v0

    add-int/lit8 v21, v5, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 1371
    add-int/lit8 v10, v10, 0x1

    .line 1372
    if-lez v5, :cond_9

    .line 1374
    new-array v13, v5, [B

    .line 1376
    const/16 v20, 0x0

    :try_start_0
    move/from16 v0, v20

    invoke-static {v2, v10, v13, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    add-int/lit8 v10, v5, 0xd

    .line 1384
    :cond_9
    if-eqz v13, :cond_a

    .line 1385
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "AUTS="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1387
    :cond_a
    const/16 v20, 0xdc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1389
    if-nez v13, :cond_b

    .line 1390
    const-string v20, "Since error type is SQN_FAIL we are retunring synch error with auts NULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1394
    :goto_1
    new-instance v11, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v11           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    invoke-direct {v11, v13}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>([B)V

    goto/16 :goto_0

    .line 1377
    .restart local v11       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :catch_0
    move-exception v7

    .line 1378
    .local v7, e:Ljava/lang/Throwable;
    const-string v20, "cannot copy auts "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1392
    .end local v7           #e:Ljava/lang/Throwable;
    :cond_b
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Since error type is SQN_FAIL we are retunring synch error with auts = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1397
    :cond_c
    array-length v0, v2

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v10, :cond_0

    .line 1401
    aget-byte v6, v2, v10

    .line 1402
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ck_len = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1403
    array-length v0, v2

    move/from16 v20, v0

    add-int v21, v10, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 1406
    add-int/lit8 v10, v10, 0x1

    .line 1407
    if-lez v6, :cond_d

    .line 1409
    new-array v14, v6, [B

    .line 1411
    const/16 v20, 0x0

    :try_start_1
    move/from16 v0, v20

    invoke-static {v2, v10, v14, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1415
    add-int/2addr v10, v6

    .line 1418
    :cond_d
    if-eqz v14, :cond_e

    .line 1419
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CK="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1421
    :cond_e
    array-length v0, v2

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v10, :cond_0

    .line 1425
    aget-byte v9, v2, v10

    .line 1426
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ik_len = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1427
    array-length v0, v2

    move/from16 v20, v0

    add-int v21, v10, v9

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 1430
    add-int/lit8 v10, v10, 0x1

    .line 1431
    if-lez v9, :cond_f

    .line 1433
    new-array v15, v9, [B

    .line 1435
    const/16 v20, 0x0

    :try_start_2
    move/from16 v0, v20

    invoke-static {v2, v10, v15, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1439
    add-int/2addr v10, v9

    .line 1442
    :cond_f
    if-eqz v15, :cond_10

    .line 1443
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IK="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1445
    :cond_10
    array-length v0, v2

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v10, :cond_0

    .line 1449
    aget-byte v12, v2, v10

    .line 1450
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "kc_len = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1451
    array-length v0, v2

    move/from16 v20, v0

    add-int v21, v10, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 1454
    add-int/lit8 v10, v10, 0x1

    .line 1455
    if-lez v12, :cond_11

    .line 1457
    new-array v0, v12, [B

    move-object/from16 v16, v0

    .line 1459
    const/16 v20, 0x0

    :try_start_3
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v2, v10, v0, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1463
    add-int/2addr v10, v12

    .line 1466
    :cond_11
    if-eqz v16, :cond_12

    .line 1467
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KC="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1469
    :cond_12
    if-eqz v14, :cond_0

    if-eqz v15, :cond_0

    if-eqz v13, :cond_0

    .line 1472
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setCk([B)V

    .line 1473
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setIk([B)V

    .line 1474
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setRes([B)V

    .line 1476
    const-string v20, "successfully parsed response"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    move-object/from16 v11, v17

    .line 1478
    goto/16 :goto_0

    .line 1412
    :catch_1
    move-exception v7

    .line 1413
    .restart local v7       #e:Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 1436
    .end local v7           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v7

    .line 1437
    .restart local v7       #e:Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 1460
    .end local v7           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v7

    .line 1461
    .restart local v7       #e:Ljava/lang/Throwable;
    goto/16 :goto_0
.end method

.method private handleGsmAuthResponse(Landroid/os/Message;)Ljava/lang/Object;
    .locals 14
    .parameter "response"

    .prologue
    .line 795
    const/4 v5, 0x0

    .line 796
    .local v5, error:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 797
    const-string v5, "response == null"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 798
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    .line 918
    :cond_0
    :goto_0
    return-object v8

    .line 800
    :cond_1
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v12, :cond_2

    .line 801
    const-string v5, "response.obj == null"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 802
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 806
    .local v3, ar:Landroid/os/AsyncResult;
    iget-object v12, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_4

    .line 807
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ar.exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 808
    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v12, :cond_3

    .line 809
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "gsmResponse="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    check-cast v12, [B

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 813
    :goto_1
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :cond_3
    const-string v12, "gsmResponse is null"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto :goto_1

    .line 816
    :cond_4
    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v12, :cond_5

    .line 817
    const-string v5, "ar.result == null"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 818
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_5
    new-instance v10, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    invoke-direct {v10}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>()V

    .line 822
    .local v10, result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v13, "invalid gsm response"

    invoke-direct {v8, v12, v13}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    .line 824
    .local v8, invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v6, v12

    check-cast v6, [B

    .line 825
    .local v6, gsmResponse:[B
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "gsmResponse="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v6}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 836
    const/4 v7, 0x0

    .line 838
    .local v7, index:I
    array-length v12, v6

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    .line 841
    aget-byte v12, v6, v7

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 845
    add-int/lit8 v7, v7, 0x1

    .line 846
    aget-byte v12, v6, v7

    packed-switch v12, :pswitch_data_0

    .line 859
    :pswitch_0
    const-string v12, "Unexpected error type"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 849
    :pswitch_1
    const-string v12, "No error reported"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 866
    array-length v12, v6

    const/4 v13, 0x4

    if-lt v12, v13, :cond_0

    .line 869
    add-int/lit8 v7, v7, 0x1

    .line 870
    aget-byte v11, v6, v7

    .line 872
    .local v11, sres_len:I
    add-int/lit8 v12, v11, 0x4

    array-length v13, v6

    if-le v12, v13, :cond_6

    .line 874
    const-string v12, "buffer length is not valid"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 855
    .end local v11           #sres_len:I
    :pswitch_2
    const-string v12, "Rejection error type"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 856
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v8           #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v13, "cannot perform"

    invoke-direct {v8, v12, v13}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 878
    .restart local v8       #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    .restart local v11       #sres_len:I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 879
    const/4 v12, 0x2

    aget-byte v12, v6, v12

    add-int/lit8 v12, v12, 0x3

    aget-byte v9, v6, v12

    .line 881
    .local v9, kc_len:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "len sres "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 882
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "len kc "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 884
    if-eqz v11, :cond_7

    if-nez v9, :cond_8

    .line 885
    :cond_7
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v8           #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v13, "No Data returned"

    invoke-direct {v8, v12, v13}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 887
    .restart local v8       #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :cond_8
    add-int/lit8 v12, v11, 0x4

    add-int/2addr v12, v9

    array-length v13, v6

    if-le v12, v13, :cond_9

    .line 889
    const-string v12, "buffer length is not valid"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 893
    :cond_9
    const/4 v2, 0x0

    .line 895
    .local v2, Sres:I
    :try_start_0
    invoke-static {v6, v7, v11}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToInt(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 901
    add-int/lit8 v7, v11, 0x3

    .line 902
    add-int/lit8 v7, v7, 0x1

    .line 904
    const-wide/16 v0, 0x0

    .line 906
    .local v0, Kc:J
    :try_start_1
    invoke-static {v6, v7, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToLong(Ljava/nio/ByteBuffer;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 913
    invoke-virtual {v10, v2}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->setSres(I)V

    .line 914
    invoke-virtual {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->setKc(J)V

    .line 916
    const-string v12, "successfully parsed response"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    move-object v8, v10

    .line 918
    goto/16 :goto_0

    .line 896
    .end local v0           #Kc:J
    :catch_0
    move-exception v4

    .line 897
    .local v4, e:Ljava/lang/Throwable;
    const-string v12, "Cannot convert sres to int"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 907
    .end local v4           #e:Ljava/lang/Throwable;
    .restart local v0       #Kc:J
    :catch_1
    move-exception v4

    .line 908
    .restart local v4       #e:Ljava/lang/Throwable;
    const-string v12, "Cannot convert kc to long"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 846
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handleGsmAuthResponse_brcm(Landroid/os/Message;)Ljava/lang/Object;
    .locals 17
    .parameter "response"

    .prologue
    .line 1155
    const/4 v7, 0x0

    .line 1156
    .local v7, error:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1157
    const-string v7, "response == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1158
    new-instance v10, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v15, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v10, v15, v7}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    .line 1263
    :cond_0
    :goto_0
    return-object v10

    .line 1160
    :cond_1
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v15, :cond_2

    .line 1161
    const-string v7, "response.obj == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1162
    new-instance v10, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v15, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v10, v15, v7}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 1165
    :cond_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1166
    .local v5, ar:Landroid/os/AsyncResult;
    iget-object v15, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v15, :cond_4

    .line 1167
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ar.exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1168
    iget-object v15, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v15, :cond_3

    .line 1169
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gsmResponse="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v15, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, [B

    check-cast v15, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 1173
    :goto_1
    new-instance v10, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v15, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v10, v15, v7}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 1171
    :cond_3
    const-string v15, "gsmResponse is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto :goto_1

    .line 1176
    :cond_4
    iget-object v15, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v15, :cond_5

    .line 1177
    const-string v7, "ar.result == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1178
    new-instance v10, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v15, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v10, v15, v7}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1181
    :cond_5
    new-instance v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    invoke-direct {v12}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>()V

    .line 1182
    .local v12, result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    new-instance v10, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v15, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v16, "invalid gsm response"

    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    .line 1184
    .local v10, invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    iget-object v15, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, [B

    move-object v8, v15

    check-cast v8, [B

    .line 1185
    .local v8, gsmResponse:[B
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gsmResponse="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 1203
    array-length v15, v8

    const/16 v16, 0x9

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 1206
    const/4 v15, 0x4

    aget-byte v15, v8, v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1209
    const/4 v15, 0x5

    aget-byte v13, v8, v15

    .line 1210
    .local v13, resultCode:I
    if-eqz v13, :cond_6

    .line 1211
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Rejection error type : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 1212
    new-instance v10, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v10           #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    sget-object v15, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v16, "cannot perform"

    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1216
    .restart local v10       #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :cond_6
    array-length v15, v8

    const/16 v16, 0xb

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 1219
    const/16 v9, 0xb

    .line 1220
    .local v9, index:I
    const/16 v15, 0x9

    aget-byte v4, v8, v15

    .line 1221
    .local v4, apdu_len:I
    if-lez v4, :cond_7

    add-int v15, v9, v4

    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    .line 1222
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid apdu_len : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1226
    :cond_8
    aget-byte v14, v8, v9

    .line 1227
    .local v14, sres_len:I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "len sres : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 1228
    if-nez v14, :cond_9

    .line 1229
    new-instance v10, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v10           #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    sget-object v15, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v16, "No Data returned"

    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1231
    .restart local v10       #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 1232
    const/4 v3, 0x0

    .line 1234
    .local v3, Sres:I
    :try_start_0
    invoke-static {v8, v9, v14}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToInt(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1239
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Sres : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 1241
    add-int/lit8 v9, v14, 0xc

    .line 1242
    aget-byte v11, v8, v9

    .line 1243
    .local v11, kc_len:I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "len kc "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 1244
    if-nez v11, :cond_a

    .line 1245
    new-instance v10, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v10           #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    sget-object v15, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v16, "No Data returned"

    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1235
    .end local v11           #kc_len:I
    .restart local v10       #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :catch_0
    move-exception v6

    .line 1236
    .local v6, e:Ljava/lang/Throwable;
    const-string v15, "Cannot convert sres to int"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1247
    .end local v6           #e:Ljava/lang/Throwable;
    .restart local v11       #kc_len:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 1248
    const-wide/16 v1, 0x0

    .line 1250
    .local v1, Kc:J
    :try_start_1
    invoke-static {v8, v9, v11}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToLong(Ljava/nio/ByteBuffer;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    .line 1256
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Kc : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v12, v3}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->setSres(I)V

    .line 1259
    invoke-virtual {v12, v1, v2}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->setKc(J)V

    .line 1261
    const-string v15, "successfully parsed response"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    move-object v10, v12

    .line 1263
    goto/16 :goto_0

    .line 1251
    :catch_1
    move-exception v6

    .line 1252
    .restart local v6       #e:Ljava/lang/Throwable;
    const-string v15, "Cannot convert kc to long"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private hanleGetCardState(Landroid/os/Message;)Ljava/lang/Object;
    .locals 7
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    .line 702
    const/4 v1, 0x0

    .line 703
    .local v1, error:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 704
    const-string v1, "response == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 705
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    .line 788
    :goto_0
    return-object v3

    .line 707
    :cond_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 708
    const-string v1, "response.obj == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 709
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 713
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 716
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_2
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 720
    const-string v1, "ar.result == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 721
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccCardStatus;

    .line 725
    .local v2, iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v3, 0x0

    .line 727
    .local v3, result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    if-nez v4, :cond_4

    .line 728
    const-string v1, "iccCardStatus.getCardState() == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 729
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 732
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_4
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;->$SwitchMap$com$android$internal$telephony$IccCardStatus$CardState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 782
    const-string v1, "switch(iccCardStatus.getCardState()) - default"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 783
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 734
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :pswitch_0
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 786
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :goto_1
    const-string v4, "successfully parsed response"

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    :pswitch_1
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 739
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 742
    :pswitch_2
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    if-nez v4, :cond_5

    .line 743
    const-string v1, "iccCardStatus.getApplication(0) == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 744
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 747
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_5
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-nez v4, :cond_6

    .line 748
    const-string v1, "iccCardStatus.getApplication(0).app_type == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 749
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 752
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_6
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 775
    const-string v1, "switch(iccCardStatus.getApplication(0).app_type) - default"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 776
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :pswitch_3
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->CSIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 755
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 758
    :pswitch_4
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->RUIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 759
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 762
    :pswitch_5
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 763
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 766
    :pswitch_6
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 767
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 770
    :pswitch_7
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 771
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 752
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private declared-synchronized obtainSequenceNumber()I
    .locals 2

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mSequenceNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mSequenceNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)Ljava/lang/Object;
    .locals 11
    .parameter "message"

    .prologue
    .line 495
    monitor-enter p0

    const/4 v3, 0x0

    .line 496
    .local v3, msg:Landroid/os/Message;
    const/4 v0, 0x0

    .line 497
    .local v0, error:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message.what="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 500
    const/4 v1, 0x0

    .local v1, is3G:Z
    const/4 v2, 0x0

    .line 501
    .local v2, isSimReady:Z
    const/4 v5, 0x0

    .line 502
    .local v5, serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 503
    const/4 v6, 0x0

    .line 505
    .local v6, simTypeError:Ljava/lang/String;
    const-string v8, "Get sim type"

    invoke-direct {p0, v3, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    move-result-object v7

    .line 508
    .local v7, sim_requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    if-eqz v7, :cond_0

    .line 510
    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 511
    const-string v8, "Get sim type"

    invoke-direct {p0, v7, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 512
    if-nez v6, :cond_0

    .line 513
    #getter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$100(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    check-cast v5, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .line 514
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    if-nez v5, :cond_3

    .line 515
    const-string v6, "Get sim type - response is null"

    .line 545
    :cond_0
    :goto_0
    if-eqz v6, :cond_6

    .line 546
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GET sim card type error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 552
    :cond_1
    :goto_1
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 610
    const-string v8, "message.what - default"

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    const/4 v5, 0x0

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v5

    .line 516
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getError()Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    move-result-object v8

    sget-object v9, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->OK:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    if-eq v8, v9, :cond_4

    .line 517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get sim type mResponse.error = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 518
    :cond_4
    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v8

    if-nez v8, :cond_5

    .line 519
    const-string v6, "serviceSimCardType.getSimCardType() == null"

    goto :goto_0

    .line 521
    :cond_5
    sget-object v8, Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;->$SwitchMap$com$orange$authentication$simcard$SimCardAuthenticationManager$SimCardType:[I

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 538
    const/4 v1, 0x0

    .line 539
    const/4 v2, 0x0

    goto :goto_0

    .line 525
    :pswitch_0
    const/4 v1, 0x1

    .line 526
    const/4 v2, 0x1

    .line 527
    goto :goto_0

    .line 530
    :pswitch_1
    const/4 v1, 0x0

    .line 531
    const/4 v2, 0x1

    .line 532
    goto :goto_0

    .line 548
    :cond_6
    if-eqz v5, :cond_1

    .line 549
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM card type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 495
    .end local v1           #is3G:Z
    .end local v2           #isSimReady:Z
    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    .end local v6           #simTypeError:Ljava/lang/String;
    .end local v7           #sim_requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 554
    .restart local v1       #is3G:Z
    .restart local v2       #isSimReady:Z
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    .restart local v6       #simTypeError:Ljava/lang/String;
    .restart local v7       #sim_requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :pswitch_2
    if-nez v5, :cond_2

    .line 557
    :try_start_2
    new-instance v5, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v5, v8, v6}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_2

    .line 561
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :pswitch_3
    if-eqz v6, :cond_7

    .line 562
    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_2

    .line 563
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_7
    if-nez v2, :cond_8

    .line 564
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GSM AUTH, sim not ready: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 565
    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 569
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_8
    const-string v8, "Sending GSM"

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 570
    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 571
    const-string v8, "GSM Auth"

    invoke-direct {p0, v3, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    move-result-object v4

    .line 572
    .local v4, requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    if-nez v4, :cond_9

    .line 573
    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v9, "Cannot initiate"

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 574
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_9
    iget-object v9, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-interface {v9, v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 575
    const-string v8, "GSM Auth"

    invoke-direct {p0, v4, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 576
    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v5, v8, v0}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 578
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_a
    #getter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$100(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_2

    .line 583
    .end local v4           #requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :pswitch_4
    if-eqz v6, :cond_b

    .line 584
    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 585
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_b
    if-nez v2, :cond_c

    .line 586
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AKA AUTH, sim not ready: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 587
    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 590
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_c
    if-nez v1, :cond_d

    .line 591
    const-string v0, "modem or SIM card do not handle AKA authentication"

    invoke-direct {p0, v0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 592
    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NO_SUCH_AUTH_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v5, v8, v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 596
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_d
    const-string v8, "Sending AKA"

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 597
    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 598
    const-string v8, "AKA Auth"

    invoke-direct {p0, v3, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    move-result-object v4

    .line 599
    .restart local v4       #requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    if-nez v4, :cond_e

    .line 600
    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v9, "Cannot initiate"

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 601
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_e
    iget-object v9, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-interface {v9, v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 602
    const-string v8, "AKA Auth"

    invoke-direct {p0, v4, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 603
    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v5, v8, v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 605
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_f
    #getter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$100(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto/16 :goto_2

    .line 552
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 521
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public akaAuthentication([B[B)Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    .locals 8
    .parameter "rand"
    .parameter "autn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    .line 280
    const/4 v2, 0x0

    .line 285
    .local v2, error:Ljava/lang/String;
    :try_start_0
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->checkPermission()Z

    move-result v6

    if-nez v6, :cond_0

    .line 287
    const-string v2, "Permission denied"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 288
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    .line 377
    :goto_0
    return-object v6

    .line 292
    :cond_0
    if-nez p1, :cond_1

    .line 293
    const-string v2, "rand is null"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 294
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Throwable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 377
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_1
    if-nez p2, :cond_2

    .line 297
    :try_start_1
    const-string v2, "autn is null"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 298
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_2
    array-length v6, p1

    if-eq v6, v7, :cond_3

    .line 302
    const-string v2, "size of the rand array is not valid"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 303
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_3
    array-length v6, p2

    if-eq v6, v7, :cond_4

    .line 306
    const-string v2, "size of the autn array is not valid"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 307
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_4
    const/16 v6, 0x28

    new-array v0, v6, [B

    .line 344
    .local v0, akaRequestData:[B
    const/4 v3, 0x0

    .line 345
    .local v3, index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    const/16 v6, 0x42

    aput-byte v6, v0, v3

    .line 346
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v6, 0x52

    aput-byte v6, v0, v4

    .line 347
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/16 v6, 0x43

    aput-byte v6, v0, v3

    .line 348
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v6, 0x4d

    aput-byte v6, v0, v4

    .line 349
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/4 v6, 0x6

    aput-byte v6, v0, v3

    .line 350
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/4 v6, 0x1

    aput-byte v6, v0, v4

    .line 351
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/16 v6, 0x10

    aput-byte v6, v0, v3

    .line 352
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v6, 0x10

    aput-byte v6, v0, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    const/4 v6, 0x0

    const/16 v7, 0x10

    :try_start_2
    invoke-static {p1, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 359
    add-int/lit8 v3, v3, 0x10

    .line 361
    const/4 v6, 0x0

    const/16 v7, 0x10

    :try_start_3
    invoke-static {p2, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 367
    :try_start_4
    iget-object v6, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 368
    .local v5, message:Landroid/os/Message;
    if-nez v5, :cond_5

    .line 369
    const-string v2, "Can not obtain message from mRILrequestsHandler"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 370
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    .end local v5           #message:Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 356
    .restart local v1       #e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System.arraycopy exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 357
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    .end local v1           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 363
    .restart local v1       #e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System.arraycopy exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 364
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    .end local v1           #e:Ljava/lang/Throwable;
    .restart local v5       #message:Landroid/os/Message;
    :cond_5
    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->sendMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/ServiceSimCardType;
    .locals 5

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 184
    .local v1, error:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->checkPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    const-string v1, "Permission denied"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 188
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-object v3

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 193
    .local v2, message:Landroid/os/Message;
    if-nez v2, :cond_1

    .line 194
    const-string v1, "Can not obtain message from mRILrequestsHandler"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 195
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v2           #message:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throwable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 202
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v2       #message:Landroid/os/Message;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->sendMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/orange/authentication/simcard/ServiceSimCardType;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    .locals 8
    .parameter "rand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    .line 212
    const/4 v1, 0x0

    .line 216
    .local v1, error:Ljava/lang/String;
    :try_start_0
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->checkPermission()Z

    move-result v6

    if-nez v6, :cond_0

    .line 219
    const-string v1, "Permission denied"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 220
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-object v6

    .line 224
    :cond_0
    if-nez p1, :cond_1

    .line 225
    const-string v1, "rand is null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 226
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Throwable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 270
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    array-length v6, p1

    if-eq v6, v7, :cond_2

    .line 229
    const-string v1, "size of the rand array is not valid"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 230
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_2
    const/16 v6, 0x16

    new-array v2, v6, [B

    .line 245
    .local v2, gsmRequestData:[B
    const/4 v3, 0x0

    .line 246
    .local v3, index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    const/16 v6, 0x42

    aput-byte v6, v2, v3

    .line 247
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v6, 0x52

    aput-byte v6, v2, v4

    .line 248
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/16 v6, 0x43

    aput-byte v6, v2, v3

    .line 249
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v6, 0x4d

    aput-byte v6, v2, v4

    .line 250
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/4 v6, 0x5

    aput-byte v6, v2, v3

    .line 251
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v6, 0x10

    aput-byte v6, v2, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    const/4 v6, 0x0

    const/16 v7, 0x10

    :try_start_2
    invoke-static {p1, v6, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    :try_start_3
    iget-object v6, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 261
    .local v5, message:Landroid/os/Message;
    if-nez v5, :cond_3

    .line 262
    const-string v1, "Can not obtain message from mRILrequestsHandler"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 263
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    .end local v5           #message:Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 255
    .restart local v0       #e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System.arraycopy exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 256
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v5       #message:Landroid/os/Message;
    :cond_3
    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->sendMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 622
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage with seq number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 626
    const/4 v3, 0x0

    .line 628
    .local v3, result:Ljava/lang/Object;
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 648
    const-string v5, "respons.what default"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 649
    const/4 v4, 0x0

    .line 695
    .end local v3           #result:Ljava/lang/Object;
    :goto_0
    return v4

    .line 630
    .restart local v3       #result:Ljava/lang/Object;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->hanleGetCardState(Landroid/os/Message;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 659
    .end local v3           #result:Ljava/lang/Object;
    :goto_1
    iget-object v6, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    monitor-enter v6

    .line 663
    :try_start_1
    iget-object v5, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 664
    .local v2, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 665
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    .line 667
    .local v1, element:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    iget v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    iget v7, p1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v7, :cond_0

    .line 673
    :try_start_2
    const-string v5, "notify"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 674
    iget-object v7, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 676
    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    .line 677
    #setter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$102(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 680
    iget-object v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 684
    :goto_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 685
    :try_start_4
    const-string v5, "notified"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 693
    .end local v1           #element:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :cond_1
    :goto_3
    :try_start_5
    monitor-exit v6

    goto :goto_0

    .end local v2           #itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 635
    .restart local v3       #result:Ljava/lang/Object;
    :pswitch_1
    :try_start_6
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->handleGsmAuthResponse_brcm(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v3

    .line 636
    goto :goto_1

    .line 644
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->handleAkaAuthResponse_brcm(Landroid/os/Message;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v3

    .line 645
    goto :goto_1

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught throwable in handle response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_1

    .line 681
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v3           #result:Ljava/lang/Object;
    .restart local v1       #element:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    .restart local v2       #itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;>;"
    :cond_2
    :try_start_7
    iget-object v5, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 684
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 686
    :catch_1
    move-exception v0

    .line 687
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught throwable while notifying: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
