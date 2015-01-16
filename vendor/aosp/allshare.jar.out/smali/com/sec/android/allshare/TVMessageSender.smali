.class Lcom/sec/android/allshare/TVMessageSender;
.super Ljava/lang/Thread;
.source "IAppControlAPI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TVMessageSender"


# instance fields
.field mBuf:Ljava/nio/ByteBuffer;

.field private mCIPORT:I

.field mControlAPI:Lcom/sec/android/allshare/IAppControlAPI;

.field mDOutStream:Ljava/io/DataOutputStream;

.field public mDeviceClass:Ljava/lang/String;

.field mDeviceName:Ljava/lang/String;

.field public mExcutor:Ljava/util/concurrent/ExecutorService;

.field public mHandler:Landroid/os/Handler;

.field mLocalAddr:Ljava/lang/String;

.field mMacAddr:Ljava/lang/String;

.field mOutStream:Ljava/io/OutputStream;

.field mProtocol:I

.field private mRemoteAddr:Ljava/net/SocketAddress;

.field mServerIp:Ljava/lang/String;

.field public mSocket:Ljava/net/Socket;

.field mTargetDtvName:Ljava/lang/String;

.field mTargetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/IAppControlAPI;)V
    .locals 2
    .parameter "controlAPI"

    .prologue
    const/4 v1, 0x0

    .line 830
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 748
    const/16 v0, 0x7e4

    iput v0, p0, Lcom/sec/android/allshare/TVMessageSender;->mCIPORT:I

    .line 750
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/allshare/TVMessageSender;->mProtocol:I

    .line 754
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mServerIp:Ljava/lang/String;

    .line 756
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mLocalAddr:Ljava/lang/String;

    .line 758
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mMacAddr:Ljava/lang/String;

    .line 760
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mDeviceName:Ljava/lang/String;

    .line 762
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetName:Ljava/lang/String;

    .line 764
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mDeviceClass:Ljava/lang/String;

    .line 766
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    .line 770
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mOutStream:Ljava/io/OutputStream;

    .line 772
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    .line 776
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/TVMessageSender;->mExcutor:Ljava/util/concurrent/ExecutorService;

    .line 778
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mControlAPI:Lcom/sec/android/allshare/IAppControlAPI;

    .line 1332
    iput-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mHandler:Landroid/os/Handler;

    .line 833
    iput-object p1, p0, Lcom/sec/android/allshare/TVMessageSender;->mControlAPI:Lcom/sec/android/allshare/IAppControlAPI;

    .line 834
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/allshare/TVMessageSender;->mDeviceName:Ljava/lang/String;

    .line 835
    return-void
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 1335
    new-instance v0, Lcom/sec/android/allshare/TVMessageSender$1;

    invoke-direct {v0, p0}, Lcom/sec/android/allshare/TVMessageSender$1;-><init>(Lcom/sec/android/allshare/TVMessageSender;)V

    iput-object v0, p0, Lcom/sec/android/allshare/TVMessageSender;->mHandler:Landroid/os/Handler;

    .line 1469
    return-void
.end method


# virtual methods
.method public closeSender()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 850
    iget v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mProtocol:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 852
    iget-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 853
    iget-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    .line 864
    :cond_1
    iget-object v1, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 865
    iput-object v3, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    .line 866
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 858
    .local v0, e:Ljava/io/IOException;
    const-string v1, "TVMessageSender"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public initSender(Lcom/sec/android/allshare/NetworkSocketInfo;)V
    .locals 6
    .parameter "netinfo"

    .prologue
    const/4 v5, 0x1

    .line 781
    iget v2, p1, Lcom/sec/android/allshare/NetworkSocketInfo;->mProtocol:I

    iput v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mProtocol:I

    .line 782
    iget-object v2, p1, Lcom/sec/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mServerIp:Ljava/lang/String;

    .line 783
    iget v2, p1, Lcom/sec/android/allshare/NetworkSocketInfo;->mPort:I

    iput v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mCIPORT:I

    .line 784
    iget-object v2, p1, Lcom/sec/android/allshare/NetworkSocketInfo;->mDeviceClass:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mDeviceClass:Ljava/lang/String;

    .line 785
    iget-object v2, p1, Lcom/sec/android/allshare/NetworkSocketInfo;->mMacAddr:Ljava/lang/String;

    const/16 v3, 0x3a

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mMacAddr:Ljava/lang/String;

    .line 787
    iget v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v2, v5, :cond_1

    .line 788
    iget-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 790
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    .line 798
    :cond_0
    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    .line 800
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    .line 801
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/sec/android/allshare/TVMessageSender;->mServerIp:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mCIPORT:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mRemoteAddr:Ljava/net/SocketAddress;

    .line 804
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    iget-object v3, p0, Lcom/sec/android/allshare/TVMessageSender;->mRemoteAddr:Ljava/net/SocketAddress;

    const/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 805
    iget-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 806
    const-string v2, "TVMessageSender"

    const-string v3, "initSender : mSocket is connected."

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 809
    iget-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mLocalAddr:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 812
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mOutStream:Ljava/io/OutputStream;

    .line 813
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/sec/android/allshare/TVMessageSender;->mOutStream:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 828
    :cond_1
    :goto_1
    return-void

    .line 791
    :catch_0
    move-exception v0

    .line 793
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TVMessageSender"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 814
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 816
    .local v1, e1:Ljava/io/IOException;
    :try_start_3
    const-string v2, "TVMessageSender"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 822
    .end local v1           #e1:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 824
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 820
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_4
    const-string v2, "TVMessageSender"

    const-string v3, "initSender : mSocket connecting is failed."

    invoke-static {v2, v3}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1
.end method

.method public run()V
    .locals 0

    .prologue
    .line 839
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 842
    invoke-direct {p0}, Lcom/sec/android/allshare/TVMessageSender;->createHandler()V

    .line 844
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 846
    return-void
.end method

.method public sendAuthentication()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 899
    new-instance v10, Ljava/lang/StringBuffer;

    const/16 v12, 0x1000

    invoke-direct {v10, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 900
    .local v10, strBuffer:Ljava/lang/StringBuffer;
    const-string v12, "omnia.iapp.samsung"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 901
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    .line 905
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mLocalAddr:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 908
    .local v4, ipAddr64:Ljava/lang/String;
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mMacAddr:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 912
    .local v6, macAddr64:Ljava/lang/String;
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 918
    .local v2, deviceName64:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 919
    .local v5, ipLen:I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 920
    .local v7, macLen:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    .line 921
    .local v8, nameLen:I
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .line 923
    .local v11, targetLen:I
    add-int v12, v5, v7

    add-int/2addr v12, v8

    add-int/lit8 v1, v12, 0x8

    .line 924
    .local v1, dataLen:I
    add-int v12, v1, v11

    add-int/lit8 v9, v12, 0x5

    .line 926
    .local v9, packetLen:I
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 927
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 928
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v13, v11

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 929
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v13, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 930
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v13, v1

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 932
    const/16 v0, 0x64

    .line 933
    .local v0, ProtocolID:S
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 935
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v13, v5

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 936
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 937
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v13, v7

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 938
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 939
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v13, v8

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 940
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 941
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 944
    :try_start_0
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v13, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 945
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_0
    iget-object v12, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 952
    return-void

    .line 946
    :catch_0
    move-exception v3

    .line 948
    .local v3, e:Ljava/io/IOException;
    const-string v12, "TVMessageSender"

    const-string v13, ""

    invoke-static {v12, v13, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendKeyboardEnd()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 869
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 895
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 874
    .local v4, targetLen:I
    const/4 v1, 0x2

    .line 875
    .local v1, dataLen:I
    add-int v5, v1, v4

    add-int/lit8 v3, v5, 0x5

    .line 876
    .local v3, packetLen:I
    const-string v5, "TVMessageSender"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendDTVKeyboardEnd targetLen "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 879
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 880
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 881
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 882
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 884
    const/4 v0, 0x4

    .line 885
    .local v0, ProtocolID:S
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 888
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 889
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :goto_1
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 890
    :catch_0
    move-exception v2

    .line 892
    .local v2, e:Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public sendKeyboardString(ILjava/lang/String;)V
    .locals 12
    .parameter "encoding"
    .parameter "keycode"

    .prologue
    const/4 v11, 0x0

    .line 1131
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1138
    if-eqz p2, :cond_0

    .line 1141
    const/4 v4, 0x0

    .line 1143
    .local v4, keyCode64:Ljava/lang/String;
    :try_start_0
    const-string v7, "UNICODE"

    .line 1144
    .local v7, strEncoding:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne p1, v9, :cond_3

    .line 1145
    const-string v7, "UTF-8"

    .line 1152
    :cond_2
    :goto_1
    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1159
    if-eqz v4, :cond_0

    .line 1160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 1161
    .local v5, keyLen:I
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 1162
    .local v8, targetLen:I
    add-int/lit8 v1, v5, 0x4

    .line 1163
    .local v1, dataLen:I
    add-int v9, v1, v8

    add-int/lit8 v6, v9, 0x5

    .line 1165
    .local v6, packetLen:I
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1166
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1167
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v10, v8

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1169
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1170
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v10, v1

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1171
    const/4 v0, 0x1

    .line 1172
    .local v0, ProtocolID:S
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1175
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v10, v5

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1176
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1177
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 1180
    :try_start_1
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v10, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1181
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1187
    :goto_2
    iget-object v9, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 1146
    .end local v0           #ProtocolID:S
    .end local v1           #dataLen:I
    .end local v5           #keyLen:I
    .end local v6           #packetLen:I
    .end local v8           #targetLen:I
    :cond_3
    const/4 v9, 0x2

    if-ne p1, v9, :cond_2

    .line 1147
    :try_start_2
    const-string v7, "UTF-16"
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1153
    .end local v7           #strEncoding:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1155
    .local v3, e1:Ljava/io/UnsupportedEncodingException;
    const-string v9, "TVMessageSender"

    const-string v10, ""

    invoke-static {v9, v10, v3}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1182
    .end local v3           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #ProtocolID:S
    .restart local v1       #dataLen:I
    .restart local v5       #keyLen:I
    .restart local v6       #packetLen:I
    .restart local v7       #strEncoding:Ljava/lang/String;
    .restart local v8       #targetLen:I
    :catch_1
    move-exception v2

    .line 1184
    .local v2, e:Ljava/io/IOException;
    const-string v9, "TVMessageSender"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public sendMouseCreate()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1235
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1263
    :goto_0
    return-void

    .line 1241
    :cond_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 1242
    .local v4, targetLen:I
    const/4 v1, 0x2

    .line 1243
    .local v1, dataLen:I
    add-int v5, v1, v4

    add-int/lit8 v3, v5, 0x5

    .line 1246
    .local v3, packetLen:I
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1247
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1248
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1249
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1250
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1252
    const/16 v0, 0xf

    .line 1253
    .local v0, ProtocolID:S
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1256
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1257
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :goto_1
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v2

    .line 1260
    .local v2, e:Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public sendMouseDestroy()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1266
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1292
    :goto_0
    return-void

    .line 1270
    :cond_0
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1271
    .local v3, targetLen:I
    const/4 v1, 0x2

    .line 1272
    .local v1, dataLen:I
    add-int v4, v1, v3

    add-int/lit8 v2, v4, 0x5

    .line 1275
    .local v2, packetLen:I
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1276
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1277
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1278
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1279
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1281
    const/16 v0, 0x10

    .line 1282
    .local v0, ProtocolID:S
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1285
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1286
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :goto_1
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 1287
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public sendMouseProcess(IIIIII)V
    .locals 7
    .parameter "eventType"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"
    .parameter "Button"

    .prologue
    const/4 v5, 0x0

    .line 1295
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1330
    :goto_0
    return-void

    .line 1300
    :cond_0
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1301
    .local v3, targetLen:I
    const/16 v1, 0x1a

    .line 1302
    .local v1, dataLen:I
    add-int v4, v1, v3

    add-int/lit8 v2, v4, 0x5

    .line 1304
    .local v2, packetLen:I
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1305
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1306
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1307
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1308
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1310
    const/16 v0, 0x11

    .line 1311
    .local v0, ProtocolID:S
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1313
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1314
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1315
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1316
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1317
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1318
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1319
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 1322
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1323
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :goto_1
    iget-object v4, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 1324
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public sendRemoteControlKey(Ljava/lang/String;I)V
    .locals 10
    .parameter "keycode"
    .parameter "mode"

    .prologue
    const/4 v8, 0x0

    .line 1087
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1094
    if-eqz p1, :cond_0

    .line 1098
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 1100
    .local v3, keyCode64:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 1101
    .local v4, keyLen:I
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 1102
    .local v6, targetLen:I
    add-int/lit8 v1, v4, 0x5

    .line 1103
    .local v1, dataLen:I
    add-int v7, v1, v6

    add-int/lit8 v5, v7, 0x5

    .line 1105
    .local v5, packetLen:I
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1106
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1107
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1108
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1110
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v8, v1

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1111
    const/4 v0, 0x0

    .line 1112
    .local v0, ProtocolID:S
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1114
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-byte v8, p2

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1115
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v8, v4

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1116
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1117
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 1120
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v8, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1121
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :goto_1
    iget-object v7, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 1122
    :catch_0
    move-exception v2

    .line 1124
    .local v2, e:Ljava/io/IOException;
    const-string v7, "TVMessageSender"

    const-string v8, ""

    invoke-static {v7, v8, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public sendTouchGestureEvent(SSBB)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v7, 0x0

    .line 1043
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1084
    :goto_0
    return-void

    .line 1049
    :cond_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 1050
    .local v4, targetLen:I
    const/16 v1, 0xe

    .line 1051
    .local v1, dataLen:I
    add-int v5, v1, v4

    add-int/lit8 v3, v5, 0x5

    .line 1057
    .local v3, packetLen:I
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1058
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1059
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1060
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1061
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1064
    const/4 v0, 0x5

    .line 1065
    .local v0, ProtocolID:S
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1067
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    const/16 v6, -0xc

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1068
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1069
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1070
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1071
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    neg-int v6, p3

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1072
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1073
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 1076
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1077
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :goto_1
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v2

    .line 1080
    .local v2, e:Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public sendTouchGestureSemanticEvent(IIIII)V
    .locals 8
    .parameter "eventType"
    .parameter "distance"
    .parameter "degree"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    .line 957
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 994
    :goto_0
    return-void

    .line 963
    :cond_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 964
    .local v4, targetLen:I
    const/16 v1, 0x16

    .line 965
    .local v1, dataLen:I
    add-int v5, v1, v4

    add-int/lit8 v3, v5, 0x5

    .line 967
    .local v3, packetLen:I
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 968
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 969
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 970
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 971
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 973
    const/16 v0, 0x8

    .line 974
    .local v0, ProtocolID:S
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 977
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 978
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 979
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 980
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 981
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 983
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 986
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 987
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :goto_1
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 988
    :catch_0
    move-exception v2

    .line 990
    .local v2, e:Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public sendTouchGuestureEvent2012(IIIIIII)V
    .locals 8
    .parameter "eventType"
    .parameter "accellevel"
    .parameter "fingerid"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v6, 0x0

    .line 998
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1037
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 1003
    .local v4, targetLen:I
    const/16 v1, 0x1e

    .line 1004
    .local v1, dataLen:I
    add-int v5, v1, v4

    add-int/lit8 v3, v5, 0x5

    .line 1006
    .local v3, packetLen:I
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1007
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1008
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1009
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1010
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1012
    const/4 v0, 0x7

    .line 1013
    .local v0, ProtocolID:S
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1016
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1017
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1018
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1019
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1020
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1021
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1022
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1026
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 1029
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1030
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    :goto_1
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v2

    .line 1033
    .local v2, e:Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public setTouchGestureTouchMode(I)V
    .locals 8
    .parameter "mode"

    .prologue
    const/4 v6, 0x0

    .line 1196
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1232
    :goto_0
    return-void

    .line 1201
    :cond_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 1202
    .local v4, targetLen:I
    const/4 v1, 0x6

    .line 1203
    .local v1, dataLen:I
    add-int v5, v1, v4

    add-int/lit8 v3, v5, 0x5

    .line 1209
    .local v3, packetLen:I
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1210
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1211
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1212
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mTargetDtvName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1213
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    int-to-short v6, v1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1216
    const/16 v0, 0xb

    .line 1217
    .local v0, ProtocolID:S
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1220
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1221
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 1224
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1225
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mDOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    :goto_1
    iget-object v5, p0, Lcom/sec/android/allshare/TVMessageSender;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 1226
    :catch_0
    move-exception v2

    .line 1228
    .local v2, e:Ljava/io/IOException;
    const-string v5, "TVMessageSender"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
