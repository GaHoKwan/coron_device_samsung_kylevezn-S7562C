.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 42
    .parameter "msg"

    .prologue
    .line 260
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 791
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 263
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 264
    .local v37, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v14, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;

    .line 265
    .local v14, argumentSIMIO:Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 267
    .local v11, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget v3, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->command:I

    iget v4, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->fileID:I

    iget-object v5, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->filepath:Ljava/lang/String;

    iget v6, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p1:I

    iget v7, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p2:I

    iget v8, v14, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p3:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/telephony/IccCard;->transmitIccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 273
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v14           #argumentSIMIO:Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 274
    .local v12, ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 275
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccIoResult;

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 280
    :goto_1
    monitor-enter v37

    .line 281
    :try_start_0
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 282
    monitor-exit v37

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v37
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 278
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 286
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 287
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v13, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 288
    .local v13, argumentAPDU:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v2, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 295
    .restart local v11       #onCompleted:Landroid/os/Message;
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 296
    .local v17, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v24, Ljava/io/DataOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 297
    .local v24, dos:Ljava/io/DataOutputStream;
    const/16 v32, 0x0

    .line 299
    .local v32, len:I
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    if-nez v2, :cond_8

    .line 300
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 301
    const/16 v32, 0x9

    .line 306
    :goto_2
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 307
    add-int/lit8 v32, v32, -0x1

    .line 312
    :cond_2
    const/16 v2, 0x17

    :try_start_1
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 313
    const/16 v2, 0x24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 314
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 315
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 316
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 317
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 318
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 319
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 320
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 322
    :cond_3
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_7

    .line 371
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "APDU-TEST1"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data being sent to RIL is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "channel id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 376
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 379
    if-eqz v24, :cond_0

    .line 381
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/FilterOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 382
    :catch_0
    move-exception v28

    .line 383
    .local v28, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_EXCHANGE_APDU : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 303
    .end local v28           #e:Ljava/io/IOException;
    :cond_6
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v32, v2, 0x9

    goto/16 :goto_2

    .line 324
    :cond_7
    :try_start_3
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 325
    .local v16, ba:[B
    const/16 v30, 0x0

    .local v30, i:I
    :goto_4
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_4

    .line 326
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v16, v30

    .line 328
    aget-byte v2, v16, v30

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 325
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 331
    .end local v16           #ba:[B
    .end local v30           #i:I
    :catch_1
    move-exception v28

    .line 332
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in APDU()"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 335
    .end local v28           #e:Ljava/io/IOException;
    :cond_8
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 336
    const/16 v32, 0xd

    .line 341
    :goto_5
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 342
    add-int/lit8 v32, v32, -0x1

    .line 345
    :cond_9
    const/16 v2, 0x17

    :try_start_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 346
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 347
    const/16 v2, 0x22

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 350
    :goto_6
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 351
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 352
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 353
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 354
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 355
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 356
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    .line 357
    iget v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 358
    :cond_a
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 360
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 361
    .restart local v16       #ba:[B
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_7
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_4

    .line 362
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v16, v30

    .line 364
    aget-byte v2, v16, v30

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 361
    add-int/lit8 v30, v30, 0x1

    goto :goto_7

    .line 338
    .end local v16           #ba:[B
    .end local v30           #i:I
    :cond_b
    iget-object v2, v13, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v32, v2, 0xd

    goto/16 :goto_5

    .line 349
    :cond_c
    const/16 v2, 0x21

    :try_start_5
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_6

    .line 367
    :catch_2
    move-exception v28

    .line 368
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in APDU()"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 399
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v13           #argumentAPDU:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v17           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v24           #dos:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v32           #len:I
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 400
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 401
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_f

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_f

    .line 403
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v15, v2

    check-cast v15, [B

    .line 404
    .local v15, b:[B
    const/16 v23, 0x0

    .line 406
    .local v23, data:[B
    array-length v2, v15

    const/4 v3, 0x2

    if-le v2, v3, :cond_d

    .line 407
    array-length v2, v15

    add-int/lit8 v2, v2, -0x2

    new-array v0, v2, [B

    move-object/from16 v23, v0

    .line 408
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v23

    invoke-static {v15, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    :cond_d
    new-instance v2, Lcom/android/internal/telephony/IccIoResult;

    array-length v3, v15

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v15, v3

    and-int/lit16 v3, v3, 0xff

    array-length v4, v15

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v15, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 423
    .end local v15           #b:[B
    .end local v23           #data:[B
    :cond_e
    :goto_8
    monitor-enter v37

    .line 424
    :try_start_6
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 425
    monitor-exit v37

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v37
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 414
    :cond_f
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 416
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_e

    .line 417
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_e

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_8

    .line 429
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 430
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;

    .line 431
    .local v35, openArgument:Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;
    const/16 v2, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 432
    .restart local v11       #onCompleted:Landroid/os/Message;
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 433
    .local v20, bos_open:Ljava/io/ByteArrayOutputStream;
    new-instance v27, Ljava/io/DataOutputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 434
    .local v27, dos_open:Ljava/io/DataOutputStream;
    const/16 v34, 0x0

    .line 438
    .local v34, len_open:I
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 439
    const/16 v34, 0x4

    .line 444
    :goto_9
    const/16 v2, 0x17

    :try_start_7
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 445
    const/16 v2, 0x19

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 446
    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 447
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    if-nez v2, :cond_12

    .line 460
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "OPEN CHANNEL-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 464
    if-eqz v27, :cond_0

    .line 466
    :try_start_8
    invoke-virtual/range {v27 .. v27}, Ljava/io/FilterOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 467
    :catch_3
    move-exception v28

    .line 468
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_OPEN_CHANNEL : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 441
    .end local v28           #e:Ljava/io/IOException;
    :cond_11
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v34, v2, 0x4

    goto :goto_9

    .line 450
    :cond_12
    :try_start_9
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 451
    .restart local v16       #ba:[B
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_b
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_10

    .line 452
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v16, v30

    .line 454
    aget-byte v2, v16, v30

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 451
    add-int/lit8 v30, v30, 0x1

    goto :goto_b

    .line 457
    .end local v16           #ba:[B
    .end local v30           #i:I
    :catch_4
    move-exception v28

    .line 458
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in open channel"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 475
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v20           #bos_open:Ljava/io/ByteArrayOutputStream;
    .end local v27           #dos_open:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v34           #len_open:I
    .end local v35           #openArgument:Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 476
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 477
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "response came"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 478
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_19

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_19

    .line 480
    const/16 v41, 0x0

    .line 481
    .local v41, temp:I
    const/16 v22, 0x0

    .line 483
    .local v22, count:I
    const/16 v31, 0x0

    .line 484
    .local v31, id_len:I
    const/16 v40, 0x0

    .line 486
    .local v40, select_res_len:I
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v23, v2

    check-cast v23, [B

    .line 489
    .restart local v23       #data:[B
    const/4 v2, 0x0

    aget-byte v31, v23, v2

    .line 490
    add-int/lit8 v2, v31, 0x1

    aget-byte v40, v23, v2

    .line 493
    move/from16 v22, v31

    :goto_c
    const/4 v2, 0x1

    move/from16 v0, v22

    if-lt v0, v2, :cond_15

    .line 494
    aget-byte v2, v23, v22

    if-gez v2, :cond_14

    .line 495
    aget-byte v2, v23, v22

    add-int/lit16 v2, v2, 0x100

    or-int v41, v41, v2

    .line 500
    :goto_d
    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_13

    .line 501
    shl-int/lit8 v41, v41, 0x8

    .line 493
    :cond_13
    add-int/lit8 v22, v22, -0x1

    goto :goto_c

    .line 497
    :cond_14
    aget-byte v2, v23, v22

    or-int v41, v41, v2

    goto :goto_d

    .line 504
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response from sim is data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "session Id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 507
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select_res_len"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    .line 511
    if-lez v40, :cond_17

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move/from16 v0, v40

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    .line 513
    add-int/lit8 v2, v31, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v3, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response of Select application :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v4, v4, Lcom/android/phone/PhoneInterfaceManager;->mSelectResponse:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 517
    :cond_17
    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, v41

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 533
    .end local v22           #count:I
    .end local v23           #data:[B
    .end local v31           #id_len:I
    .end local v40           #select_res_len:I
    .end local v41           #temp:I
    :cond_18
    :goto_e
    monitor-enter v37

    .line 534
    :try_start_a
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 535
    monitor-exit v37

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v37
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v2

    .line 521
    :cond_19
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 523
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_18

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_18

    .line 524
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1a

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_e

    .line 527
    :cond_1a
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_18

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x3

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_e

    .line 539
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 540
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;

    .line 541
    .local v21, closeArgument:Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;
    const/16 v2, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 542
    .restart local v11       #onCompleted:Landroid/os/Message;
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 543
    .local v19, bos_close:Ljava/io/ByteArrayOutputStream;
    new-instance v26, Ljava/io/DataOutputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 544
    .local v26, dos_close:Ljava/io/DataOutputStream;
    const/16 v33, 0x0

    .line 545
    .local v33, len_close:I
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    if-nez v2, :cond_1b

    .line 546
    const/16 v33, 0x4

    .line 551
    :goto_f
    const/16 v2, 0x17

    :try_start_b
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 552
    const/16 v2, 0x20

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 553
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 554
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    if-nez v2, :cond_1c

    .line 564
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "CLOSE CHANNEL-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 568
    if-eqz v26, :cond_0

    .line 570
    :try_start_c
    invoke-virtual/range {v26 .. v26}, Ljava/io/FilterOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    .line 571
    :catch_5
    move-exception v28

    .line 572
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_CLOSE_CHANNEL : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 548
    .end local v28           #e:Ljava/io/IOException;
    :cond_1b
    const/16 v33, 0x8

    goto :goto_f

    .line 557
    :cond_1c
    :try_start_d
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session ID received from application is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 559
    :cond_1d
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_10

    .line 561
    :catch_6
    move-exception v28

    .line 562
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in close channel"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 579
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v19           #bos_close:Ljava/io/ByteArrayOutputStream;
    .end local v21           #closeArgument:Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;
    .end local v26           #dos_close:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v33           #len_close:I
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 580
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 581
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1f

    .line 582
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 594
    :cond_1e
    :goto_11
    monitor-enter v37

    .line 595
    :try_start_e
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 596
    monitor-exit v37

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v37
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v2

    .line 585
    :cond_1f
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    .line 587
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1e

    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1e

    .line 588
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1e

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->lastError:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$202(Lcom/android/phone/PhoneInterfaceManager;I)I

    goto :goto_11

    .line 600
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "GET_ATR-TEST"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 602
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 603
    .local v18, bos1:Ljava/io/ByteArrayOutputStream;
    new-instance v25, Ljava/io/DataOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 606
    .local v25, dos1:Ljava/io/DataOutputStream;
    const/16 v2, 0x17

    :try_start_f
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 607
    const/16 v2, 0x23

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 608
    const/4 v2, 0x4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 613
    :goto_12
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "Request ATR Info"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x13

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 617
    if-eqz v25, :cond_0

    .line 619
    :try_start_10
    invoke-virtual/range {v25 .. v25}, Ljava/io/FilterOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_0

    .line 620
    :catch_7
    move-exception v28

    .line 621
    .restart local v28       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_GET_ATR_INFO : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 609
    .end local v28           #e:Ljava/io/IOException;
    :catch_8
    move-exception v28

    .line 610
    .restart local v28       #e:Ljava/io/IOException;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 628
    .end local v18           #bos1:Ljava/io/ByteArrayOutputStream;
    .end local v25           #dos1:Ljava/io/DataOutputStream;
    .end local v28           #e:Ljava/io/IOException;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "EVENT_GET_ATR_INFO_DONE"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 629
    const/16 v23, 0x0

    .line 631
    .restart local v23       #data:[B
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 632
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 634
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_21

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_21

    .line 635
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v38, v2

    check-cast v38, [B

    .line 637
    .local v38, result:[B
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATR Length :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v4, v38, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v2, 0x0

    aget-byte v2, v38, v2

    if-lez v2, :cond_20

    .line 639
    const/4 v2, 0x0

    aget-byte v2, v38, v2

    new-array v0, v2, [B

    move-object/from16 v23, v0

    .line 640
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 642
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATR info :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v38           #result:[B
    :cond_20
    :goto_13
    move-object/from16 v0, v23

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 650
    monitor-enter v37

    .line 651
    :try_start_11
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 652
    monitor-exit v37

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v37
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw v2

    .line 645
    :cond_21
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in EVENT_GET_ATR_INFO_DONE with exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 656
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v23           #data:[B
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 657
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 660
    monitor-enter v37

    .line 661
    :try_start_12
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 662
    monitor-exit v37

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v37
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v2

    .line 666
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 667
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 669
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v11}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 673
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 674
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 675
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_22

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_22

    .line 676
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 682
    :goto_14
    monitor-enter v37

    .line 683
    :try_start_13
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 684
    monitor-exit v37

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v37
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw v2

    .line 679
    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_14

    .line 688
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$300(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 692
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$400(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 696
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 697
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v29, 0x0

    .line 698
    .local v29, hungUp:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v36

    .line 699
    .local v36, phoneType:I
    const/4 v2, 0x2

    move/from16 v0, v36

    if-ne v0, v2, :cond_23

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v29

    .line 711
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_END_CALL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v29, :cond_26

    const-string v2, "hung up!"

    :goto_16
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v2, v4}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;Z)V

    .line 712
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 714
    monitor-enter v37

    .line 715
    :try_start_14
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 716
    monitor-exit v37

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v37
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    throw v2

    .line 703
    :cond_23
    const/4 v2, 0x1

    move/from16 v0, v36

    if-ne v0, v2, :cond_24

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v29

    goto :goto_15

    .line 706
    :cond_24
    const/4 v2, 0x5

    move/from16 v0, v36

    if-ne v0, v2, :cond_25

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v29

    goto :goto_15

    .line 709
    :cond_25
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 711
    :cond_26
    const-string v2, "no call to hang up"

    goto :goto_16

    .line 720
    .end local v29           #hungUp:Z
    .end local v36           #phoneType:I
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 721
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 722
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-interface {v3, v2, v11}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 726
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 727
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 728
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v37

    iput-object v12, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 730
    monitor-enter v37

    .line 731
    :try_start_15
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 732
    monitor-exit v37

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v37
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw v2

    .line 736
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 737
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->broadcastUnsolOemHookIntent([B)V

    goto/16 :goto_0

    .line 741
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 742
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v2, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 743
    .restart local v11       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v11}, Lcom/android/internal/telephony/Phone;->setTransmitPower(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 747
    .end local v11           #onCompleted:Landroid/os/Message;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_14
    const/16 v39, 0x0

    .line 748
    .local v39, retStatus:Z
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 749
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 751
    .restart local v37       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_27

    .line 752
    const/16 v39, 0x1

    .line 754
    :cond_27
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 757
    monitor-enter v37

    .line 758
    :try_start_16
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notifyAll()V

    .line 759
    monitor-exit v37

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v37
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v2

    .line 764
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v37           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v39           #retStatus:Z
    :pswitch_15
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 765
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v2

    if-nez v2, :cond_28

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/MultiSimConnectivityManager;

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->access$602(Lcom/android/phone/PhoneInterfaceManager;Landroid/net/MultiSimConnectivityManager;)Landroid/net/MultiSimConnectivityManager;

    .line 767
    :cond_28
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_29

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/MultiSimConnectivityManager;->onSwitchToSim1DataNetworkCallback(Z)V

    goto/16 :goto_0

    .line 771
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/MultiSimConnectivityManager;->onSwitchToSim1DataNetworkCallback(Z)V

    goto/16 :goto_0

    .line 777
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 778
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/MultiSimConnectivityManager;

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->access$602(Lcom/android/phone/PhoneInterfaceManager;Landroid/net/MultiSimConnectivityManager;)Landroid/net/MultiSimConnectivityManager;

    .line 780
    :cond_2a
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2b

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/MultiSimConnectivityManager;->onSwitchToSim2DataNetworkCallback(Z)V

    goto/16 :goto_0

    .line 784
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mConnectivityManager:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$600(Lcom/android/phone/PhoneInterfaceManager;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/MultiSimConnectivityManager;->onSwitchToSim2DataNetworkCallback(Z)V

    goto/16 :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
