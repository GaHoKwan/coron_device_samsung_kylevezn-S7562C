.class Lcom/sec/android/allshare/TVMessageListener;
.super Ljava/lang/Thread;
.source "IAppControlAPI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TVMessageListener"


# instance fields
.field mBuf:Ljava/nio/ByteBuffer;

.field mCbuf:Ljava/nio/CharBuffer;

.field mContext:Landroid/content/Context;

.field private mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

.field mInput:Ljava/nio/channels/ReadableByteChannel;

.field mProtocol:I

.field mRebuf:[B

.field public mRunThread:Z

.field mSender:Lcom/sec/android/allshare/TVMessageSender;

.field mSocket:Ljava/net/Socket;

.field mStrCamera:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/TVMessageSender;)V
    .locals 4
    .parameter "sender"

    .prologue
    const/16 v3, 0x200

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 522
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 483
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    .line 491
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/sec/android/allshare/TVMessageListener;->mRebuf:[B

    .line 497
    const-string v0, "live_camera.jpg"

    iput-object v0, p0, Lcom/sec/android/allshare/TVMessageListener;->mStrCamera:Ljava/lang/String;

    .line 499
    iput v2, p0, Lcom/sec/android/allshare/TVMessageListener;->mProtocol:I

    .line 501
    iput-boolean v2, p0, Lcom/sec/android/allshare/TVMessageListener;->mRunThread:Z

    .line 503
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageListener;->mSender:Lcom/sec/android/allshare/TVMessageSender;

    .line 509
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageListener;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    .line 524
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    .line 525
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/TVMessageListener;->mCbuf:Ljava/nio/CharBuffer;

    .line 529
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/allshare/TVMessageListener;->mProtocol:I

    .line 531
    iput-object p1, p0, Lcom/sec/android/allshare/TVMessageListener;->mSender:Lcom/sec/android/allshare/TVMessageSender;

    .line 533
    if-eqz p1, :cond_0

    .line 534
    iget-object v0, p1, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/sec/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    .line 536
    :cond_0
    return-void
.end method


# virtual methods
.method public deliverMsgData(III)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 545
    new-instance v0, Lcom/sec/android/allshare/EventSync;

    invoke-direct {v0}, Lcom/sec/android/allshare/EventSync;-><init>()V

    .line 547
    .local v0, isc:Lcom/sec/android/allshare/EventSync;
    iput p1, v0, Lcom/sec/android/allshare/EventSync;->mWhat:I

    .line 548
    iput p2, v0, Lcom/sec/android/allshare/EventSync;->mArg1:I

    .line 549
    iput p3, v0, Lcom/sec/android/allshare/EventSync;->mArg2:I

    .line 559
    iget-object v1, p0, Lcom/sec/android/allshare/TVMessageListener;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/sec/android/allshare/TVMessageListener;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    invoke-interface {v1, v0}, Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;->controlEvent(Lcom/sec/android/allshare/EventSync;)V

    .line 567
    :goto_0
    return-void

    .line 562
    :cond_0
    const-string v1, "TVMessageListener"

    const-string v2, "EventListener is null !!!"

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deliverMsgData(IIILjava/lang/String;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "str"

    .prologue
    .line 570
    new-instance v0, Lcom/sec/android/allshare/EventSync;

    invoke-direct {v0}, Lcom/sec/android/allshare/EventSync;-><init>()V

    .line 571
    .local v0, isc:Lcom/sec/android/allshare/EventSync;
    iput p1, v0, Lcom/sec/android/allshare/EventSync;->mWhat:I

    .line 572
    iput p2, v0, Lcom/sec/android/allshare/EventSync;->mArg1:I

    .line 573
    iput p3, v0, Lcom/sec/android/allshare/EventSync;->mArg2:I

    .line 574
    iput-object p4, v0, Lcom/sec/android/allshare/EventSync;->mStr:Ljava/lang/String;

    .line 583
    iget-object v1, p0, Lcom/sec/android/allshare/TVMessageListener;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/sec/android/allshare/TVMessageListener;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    invoke-interface {v1, v0}, Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;->controlEvent(Lcom/sec/android/allshare/EventSync;)V

    .line 590
    :goto_0
    return-void

    .line 586
    :cond_0
    const-string v1, "TVMessageListener"

    const-string v2, "EventListener is null !!!"

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 26

    .prologue
    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->isConnected()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 606
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 619
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v11

    .local v11, nRecv:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_0

    .line 626
    const-string v23, "TVMessageListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "TVMessageListener data received "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    sget-object v24, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->get()B

    move-result v22

    .line 638
    .local v22, tvStatus:B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v20

    .line 640
    .local v20, targetLen:S
    const/16 v23, 0x200

    move/from16 v0, v23

    new-array v15, v0, [B

    .line 641
    .local v15, srebuf:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v20

    invoke-virtual {v0, v15, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 642
    new-instance v21, Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-direct {v0, v15, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 645
    .local v21, targetname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 646
    .local v6, dataLen:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    .line 648
    .local v12, protocolId:S
    const-string v23, "TVMessageListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "tvStatus :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v23, "TVMessageListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "targetLen :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v23, "TVMessageListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dataLen :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v23, "TVMessageListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "protocolId :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    sparse-switch v12, :sswitch_data_0

    .line 732
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 735
    .end local v6           #dataLen:S
    .end local v11           #nRecv:I
    .end local v12           #protocolId:S
    .end local v15           #srebuf:[B
    .end local v20           #targetLen:S
    .end local v21           #targetname:Ljava/lang/String;
    .end local v22           #tvStatus:B
    :catch_0
    move-exception v7

    .line 737
    .local v7, e:Ljava/io/IOException;
    const-string v23, "TVMessageListener"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 608
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 610
    .restart local v7       #e:Ljava/io/IOException;
    const-string v23, "TVMessageListener"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 655
    .end local v7           #e:Ljava/io/IOException;
    .restart local v6       #dataLen:S
    .restart local v11       #nRecv:I
    .restart local v12       #protocolId:S
    .restart local v15       #srebuf:[B
    .restart local v20       #targetLen:S
    .restart local v21       #targetname:Ljava/lang/String;
    .restart local v22       #tvStatus:B
    :sswitch_0
    :try_start_2
    const-string v23, "TVMessageListener"

    const-string v24, "IAPP_REMOCON"

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    .line 659
    .local v14, response:S
    const-string v23, "TVMessageListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "response :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v14, v2}, Lcom/sec/android/allshare/TVMessageListener;->deliverMsgData(III)V

    goto :goto_2

    .line 672
    .end local v14           #response:S
    :sswitch_1
    const-string v23, "TVMessageListener"

    const-string v24, "IAPP_REMOTE_INPUT_TYPE"

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 674
    .local v13, remoteType:I
    const-string v23, "TVMessageListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "remoteType :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const/16 v23, 0xa

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v13, v2}, Lcom/sec/android/allshare/TVMessageListener;->deliverMsgData(III)V

    goto/16 :goto_2

    .line 679
    .end local v13           #remoteType:I
    :sswitch_2
    const-string v23, "TVMessageListener"

    const-string v24, "IAPP_STATUS"

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v16

    .line 681
    .local v16, statusType:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v17

    .line 682
    .local v17, statusVal:S
    const/16 v23, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/allshare/TVMessageListener;->deliverMsgData(III)V

    goto/16 :goto_2

    .line 686
    .end local v16           #statusType:S
    .end local v17           #statusVal:S
    :sswitch_3
    const-string v23, "TVMessageListener"

    const-string v24, "IAPP_KEYBOARD_SYNC"

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v18

    .line 688
    .local v18, stringLength:S
    const-string v23, "TVMessageListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "stringLength :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v15, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 691
    new-instance v9, Ljava/lang/String;

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v18

    invoke-direct {v9, v15, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 693
    .local v9, keySync:Ljava/lang/String;
    const-string v23, "AA=="

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 694
    const/16 v23, 0x3

    const/16 v24, 0x0

    const-string v25, ""

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/allshare/TVMessageListener;->deliverMsgData(IIILjava/lang/String;)V

    goto/16 :goto_2

    .line 698
    :cond_2
    const/16 v23, 0x200

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 699
    .local v19, sync:[B
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-static {v9, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v19

    .line 701
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 703
    .local v10, keySync2:Ljava/lang/String;
    const/16 v23, 0x3

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/sec/android/allshare/TVMessageListener;->deliverMsgData(IIILjava/lang/String;)V

    goto/16 :goto_2

    .line 707
    .end local v9           #keySync:Ljava/lang/String;
    .end local v10           #keySync2:Ljava/lang/String;
    .end local v18           #stringLength:S
    .end local v19           #sync:[B
    :sswitch_4
    const-string v23, "TVMessageListener"

    const-string v24, "IAPP_EXIT"

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 711
    .local v8, exit:S
    const/16 v23, 0x12c

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v8, v2}, Lcom/sec/android/allshare/TVMessageListener;->deliverMsgData(III)V

    goto/16 :goto_2

    .line 715
    .end local v8           #exit:S
    :sswitch_5
    const-string v23, "TVMessageListener"

    const-string v24, "IAPP_AUTHENTICATION"

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 719
    .local v5, authresponse:S
    const/16 v23, 0x64

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v5, v2}, Lcom/sec/android/allshare/TVMessageListener;->deliverMsgData(III)V

    goto/16 :goto_2

    .line 723
    .end local v5           #authresponse:S
    :sswitch_6
    const-string v23, "TVMessageListener"

    const-string v24, "IAPP_AUTHENTICATION_TIMEOUT"

    invoke-static/range {v23 .. v24}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/16 v23, 0x65

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/allshare/TVMessageListener;->deliverMsgData(III)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 653
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_3
        0xa -> :sswitch_1
        0x64 -> :sswitch_5
        0x65 -> :sswitch_6
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_4
    .end sparse-switch
.end method

.method public setOnEventListener(Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/sec/android/allshare/TVMessageListener;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    .line 513
    return-void
.end method

.method public stopThread()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method
