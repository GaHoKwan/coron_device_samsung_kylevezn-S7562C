.class Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;
.super Ljava/lang/Thread;
.source "PhoneNumberLocatorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DBDowloadThread"
.end annotation


# instance fields
.field private client:Landroid/net/http/AndroidHttpClient;

.field private isCanceledByUser:Z

.field private mBinTmpFile:Ljava/lang/String;

.field mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

.field private mVersionTmpFile:Ljava/lang/String;

.field private request:Lorg/apache/http/client/methods/HttpGet;

.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 437
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 438
    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 439
    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    return-void
.end method

.method private downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;
    .locals 47
    .parameter "tmpFile"
    .parameter "httpPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1

    .line 460
    const/4 v15, 0x0

    .line 743
    :cond_0
    :goto_0
    return-object v15

    .line 462
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    const-string v44, "CDDownloadThread : run : DownloadThread Started"

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 463
    move-object/from16 v31, p2

    .line 464
    .local v31, newUrl:Ljava/lang/String;
    const/16 v30, 0x0

    .line 465
    .local v30, newUri:Ljava/lang/String;
    move-object/from16 v11, p1

    .line 466
    .local v11, currentTempFilePath:Ljava/lang/String;
    new-instance v15, Lcom/android/phone/callsettings/DownloadFileInfo;

    invoke-direct {v15}, Lcom/android/phone/callsettings/DownloadFileInfo;-><init>()V

    .line 467
    .local v15, fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    const/16 v19, 0x0

    .line 468
    .local v19, fos:Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 469
    .local v10, countRetry:Z
    const/16 v35, 0x0

    .line 470
    .local v35, redirectCount:I
    const-string v29, "bin"

    .line 471
    .local v29, mimeType:Ljava/lang/String;
    const/16 v38, 0x0

    .line 472
    .local v38, stream:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 473
    .local v4, Redirected:Z
    const/16 v18, 0x0

    .line 474
    .local v18, finalStatus:I
    const/4 v8, 0x0

    .line 475
    .local v8, bytesSoFar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    const-string v44, "before start create temp file"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    const-string v44, "after start create temp file"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 478
    const-wide/16 v16, 0x0

    .line 479
    .local v16, fileSize:J
    iput-object v11, v15, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    .line 481
    if-eqz p1, :cond_2

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 483
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "downloadFileByWebkit currentTempFilePath = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 485
    const/4 v9, 0x0

    .line 486
    .local v9, continuingDownload:Z
    const/16 v20, 0x0

    .line 487
    .local v20, headerAcceptRanges:Ljava/lang/String;
    const/16 v21, 0x0

    .line 488
    .local v21, headerContentDisposition:Ljava/lang/String;
    const/16 v22, 0x0

    .line 489
    .local v22, headerContentLength:Ljava/lang/String;
    const/16 v23, 0x0

    .line 490
    .local v23, headerContentLocation:Ljava/lang/String;
    const/16 v26, 0x0

    .line 491
    .local v26, headerTransferEncoding:Ljava/lang/String;
    const/16 v25, 0x0

    .line 492
    .local v25, headerOmaSeperateDelivery:Ljava/lang/String;
    const/16 v24, 0x0

    .line 494
    .local v24, headerETag:Ljava/lang/String;
    const v43, 0x19000

    :try_start_0
    move/from16 v0, v43

    new-array v12, v0, [B

    .line 496
    .local v12, data:[B
    move v6, v8

    .line 498
    .local v6, bytesNotified:I
    const-wide/16 v41, 0x0

    .line 500
    .local v41, timeLastNotification:J
    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    const-string v44, "CDDownloadThread : use AndroidHttpClient : "

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : Actual URL: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 506
    new-instance v43, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run :Final URL "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 508
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SAMSUNG-"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, UA:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v43, v0

    const-string v44, "User-Agent"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v5}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/16 v28, 0x0

    .line 513
    .local v28, isProxySet:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;
    invoke-static/range {v43 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v33

    .line 514
    .local v33, proxyHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;
    invoke-static/range {v43 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v34

    .line 516
    .local v34, proxyPort:I
    if-eqz v33, :cond_3

    const/16 v43, -0x1

    move/from16 v0, v43

    move/from16 v1, v34

    if-eq v0, v1, :cond_3

    .line 517
    const/16 v28, 0x1

    .line 522
    :cond_3
    :try_start_1
    new-instance v27, Ljava/net/URI;

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 523
    .local v27, hostUrl:Ljava/net/URI;
    new-instance v40, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->getPort()I

    move-result v44

    const-string v45, "http"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 532
    .local v40, target:Lorg/apache/http/HttpHost;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v32

    .line 533
    .local v32, params:Lorg/apache/http/params/HttpParams;
    const-string v43, "http.socket.timeout"

    const/16 v44, 0x2710

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 535
    const-string v43, "http.connection.timeout"

    const/16 v44, 0x2710

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 538
    if-eqz v28, :cond_4

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread :Set  Proxy Host:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "  ProxyPort :"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 540
    new-instance v43, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 549
    :cond_4
    if-eqz v28, :cond_8

    .line 550
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v36

    .line 565
    .local v36, response:Lorg/apache/http/HttpResponse;
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    const-string v44, "http response"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v43, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v43, :cond_c

    .line 568
    const/16 v18, 0x190

    .line 569
    const/4 v15, 0x0

    .line 726
    .end local v15           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    if-eqz v43, :cond_5

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 728
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 731
    :cond_5
    if-eqz v38, :cond_0

    .line 732
    :try_start_5
    throw v38
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 734
    :catch_0
    move-exception v14

    .line 735
    .local v14, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 525
    .end local v14           #ex:Ljava/io/IOException;
    .end local v27           #hostUrl:Ljava/net/URI;
    .end local v32           #params:Lorg/apache/http/params/HttpParams;
    .end local v36           #response:Lorg/apache/http/HttpResponse;
    .end local v40           #target:Lorg/apache/http/HttpHost;
    .restart local v15       #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    :catch_1
    move-exception v14

    .line 526
    .local v14, ex:Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : URISyntaxException  Uri :  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 527
    const/16 v18, 0x190

    .line 726
    .end local v14           #ex:Ljava/lang/Exception;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    if-eqz v43, :cond_6

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 728
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 731
    :cond_6
    if-eqz v38, :cond_7

    .line 732
    :try_start_7
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    .line 738
    .end local v5           #UA:Ljava/lang/String;
    .end local v6           #bytesNotified:I
    .end local v12           #data:[B
    .end local v28           #isProxySet:Z
    .end local v33           #proxyHost:Ljava/lang/String;
    .end local v34           #proxyPort:I
    .end local v41           #timeLastNotification:J
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    const-string v44, "CDDownloadThread : run : Exiting DownloadThread"

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 739
    int-to-long v0, v8

    move-wide/from16 v43, v0

    move-wide/from16 v0, v43

    iput-wide v0, v15, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    .line 740
    const-wide/16 v43, 0x0

    move-wide/from16 v0, v43

    iput-wide v0, v15, Lcom/android/phone/callsettings/DownloadFileInfo;->startmarker:J

    .line 741
    const-wide/16 v43, 0x0

    move-wide/from16 v0, v43

    iput-wide v0, v15, Lcom/android/phone/callsettings/DownloadFileInfo;->endmarker:J

    goto/16 :goto_0

    .line 552
    .restart local v5       #UA:Ljava/lang/String;
    .restart local v6       #bytesNotified:I
    .restart local v12       #data:[B
    .restart local v27       #hostUrl:Ljava/net/URI;
    .restart local v28       #isProxySet:Z
    .restart local v32       #params:Lorg/apache/http/params/HttpParams;
    .restart local v33       #proxyHost:Ljava/lang/String;
    .restart local v34       #proxyPort:I
    .restart local v40       #target:Lorg/apache/http/HttpHost;
    .restart local v41       #timeLastNotification:J
    :cond_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v36

    .restart local v36       #response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_1

    .line 554
    .end local v36           #response:Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v14

    .line 555
    .local v14, ex:Ljava/lang/IllegalArgumentException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : Illegal Arg exception trying to execute request for "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 556
    const/16 v18, 0x190

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 723
    .end local v5           #UA:Ljava/lang/String;
    .end local v6           #bytesNotified:I
    .end local v12           #data:[B
    .end local v14           #ex:Ljava/lang/IllegalArgumentException;
    .end local v27           #hostUrl:Ljava/net/URI;
    .end local v28           #isProxySet:Z
    .end local v32           #params:Lorg/apache/http/params/HttpParams;
    .end local v33           #proxyHost:Ljava/lang/String;
    .end local v34           #proxyPort:I
    .end local v40           #target:Lorg/apache/http/HttpHost;
    .end local v41           #timeLastNotification:J
    :catch_3
    move-exception v14

    .line 724
    .local v14, ex:Ljava/lang/Exception;
    :goto_4
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : Exception for "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    if-eqz v43, :cond_9

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 728
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 731
    :cond_9
    if-eqz v38, :cond_7

    .line 732
    :try_start_b
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_3

    .line 734
    :catch_4
    move-exception v14

    .line 735
    .local v14, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 559
    .end local v14           #ex:Ljava/io/IOException;
    .restart local v5       #UA:Ljava/lang/String;
    .restart local v6       #bytesNotified:I
    .restart local v12       #data:[B
    .restart local v27       #hostUrl:Ljava/net/URI;
    .restart local v28       #isProxySet:Z
    .restart local v32       #params:Lorg/apache/http/params/HttpParams;
    .restart local v33       #proxyHost:Ljava/lang/String;
    .restart local v34       #proxyPort:I
    .restart local v40       #target:Lorg/apache/http/HttpHost;
    .restart local v41       #timeLastNotification:J
    :catch_5
    move-exception v14

    .line 560
    .local v14, ex:Ljava/lang/Exception;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : IOException trying to execute request for "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 561
    const/16 v18, 0x190

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_2

    .line 726
    .end local v5           #UA:Ljava/lang/String;
    .end local v6           #bytesNotified:I
    .end local v12           #data:[B
    .end local v14           #ex:Ljava/lang/Exception;
    .end local v27           #hostUrl:Ljava/net/URI;
    .end local v28           #isProxySet:Z
    .end local v32           #params:Lorg/apache/http/params/HttpParams;
    .end local v33           #proxyHost:Ljava/lang/String;
    .end local v34           #proxyPort:I
    .end local v40           #target:Lorg/apache/http/HttpHost;
    .end local v41           #timeLastNotification:J
    :catchall_0
    move-exception v43

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    if-eqz v44, :cond_a

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 728
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 731
    :cond_a
    if-eqz v38, :cond_b

    .line 732
    :try_start_d
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    .line 736
    :cond_b
    :goto_6
    throw v43

    .line 575
    .restart local v5       #UA:Ljava/lang/String;
    .restart local v6       #bytesNotified:I
    .restart local v12       #data:[B
    .restart local v27       #hostUrl:Ljava/net/URI;
    .restart local v28       #isProxySet:Z
    .restart local v32       #params:Lorg/apache/http/params/HttpParams;
    .restart local v33       #proxyHost:Ljava/lang/String;
    .restart local v34       #proxyPort:I
    .restart local v36       #response:Lorg/apache/http/HttpResponse;
    .restart local v40       #target:Lorg/apache/http/HttpHost;
    .restart local v41       #timeLastNotification:J
    :cond_c
    :try_start_e
    invoke-interface/range {v36 .. v36}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v37

    .line 579
    .local v37, statusCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : received response for "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 654
    :try_start_f
    invoke-interface/range {v36 .. v36}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    move-result-object v13

    .line 660
    .local v13, entityStream:Ljava/io/InputStream;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    const-string v44, "get content"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 664
    const/4 v7, 0x0

    .local v7, bytesRead:I
    move-object/from16 v39, v38

    .line 666
    .end local v38           #stream:Ljava/io/FileOutputStream;
    .local v39, stream:Ljava/io/FileOutputStream;
    :goto_7
    :try_start_11
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$400()Z

    move-result v43

    if-nez v43, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v43, v0

    if-eqz v43, :cond_11

    .line 667
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v43, v0

    if-eqz v43, :cond_e

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v44, v0

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 670
    :cond_e
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v43, v0

    if-eqz v43, :cond_f

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v44, v0

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 673
    :cond_f
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    .line 674
    const/4 v15, 0x0

    .line 726
    .end local v15           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    if-eqz v43, :cond_10

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 728
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 731
    :cond_10
    if-eqz v39, :cond_0

    .line 732
    :try_start_12
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_0

    .line 734
    :catch_6
    move-exception v14

    .line 735
    .local v14, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 655
    .end local v7           #bytesRead:I
    .end local v13           #entityStream:Ljava/io/InputStream;
    .end local v14           #ex:Ljava/io/IOException;
    .end local v39           #stream:Ljava/io/FileOutputStream;
    .restart local v15       #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v14

    .line 656
    .restart local v14       #ex:Ljava/io/IOException;
    const/16 v18, 0x1ef

    .line 657
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_2

    .line 677
    .end local v14           #ex:Ljava/io/IOException;
    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #bytesRead:I
    .restart local v13       #entityStream:Ljava/io/InputStream;
    .restart local v39       #stream:Ljava/io/FileOutputStream;
    :cond_11
    :try_start_14
    invoke-virtual {v13, v12}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    const-string v44, "CDDownloadThread : run : Data processing"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    .line 684
    const/16 v43, -0x1

    move/from16 v0, v43

    if-ne v7, v0, :cond_12

    .line 685
    const/16 v18, 0x1ef

    .line 720
    :goto_8
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    const-string v44, "CDDownloadThread : run : CD_STATUS_DOWNLOAD_COMPLETED"

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    move-object/from16 v38, v39

    .line 721
    .end local v39           #stream:Ljava/io/FileOutputStream;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 679
    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v39       #stream:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v14

    .line 680
    .restart local v14       #ex:Ljava/io/IOException;
    const/16 v18, 0x1ef

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    goto :goto_8

    .line 723
    .end local v14           #ex:Ljava/io/IOException;
    :catch_9
    move-exception v14

    move-object/from16 v38, v39

    .end local v39           #stream:Ljava/io/FileOutputStream;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 693
    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v39       #stream:Ljava/io/FileOutputStream;
    :cond_12
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$400()Z

    move-result v43

    if-nez v43, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v43, v0

    if-eqz v43, :cond_17

    .line 694
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v43, v0

    if-eqz v43, :cond_14

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v44, v0

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 697
    :cond_14
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v43, v0

    if-eqz v43, :cond_15

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v44, v0

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v43 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 700
    :cond_15
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    .line 701
    const/4 v15, 0x0

    .line 726
    .end local v15           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    if-eqz v43, :cond_16

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 728
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 731
    :cond_16
    if-eqz v39, :cond_0

    .line 732
    :try_start_16
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    goto/16 :goto_0

    .line 734
    :catch_a
    move-exception v14

    .line 735
    .restart local v14       #ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 704
    .end local v14           #ex:Ljava/io/IOException;
    .restart local v15       #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    :cond_17
    if-nez v39, :cond_18

    .line 705
    :try_start_17
    new-instance v38, Ljava/io/FileOutputStream;

    iget-object v0, v15, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    .line 708
    .end local v39           #stream:Ljava/io/FileOutputStream;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    :goto_9
    const/16 v43, 0x0

    :try_start_18
    move-object/from16 v0, v38

    move/from16 v1, v43

    invoke-virtual {v0, v12, v1, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_e

    .line 715
    :goto_a
    add-int/2addr v8, v7

    move-object/from16 v39, v38

    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v39       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 710
    :catch_b
    move-exception v14

    move-object/from16 v38, v39

    .line 711
    .end local v39           #stream:Ljava/io/FileOutputStream;
    .local v14, ex:Ljava/lang/Exception;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    :goto_b
    const/16 v18, 0x1ec

    .line 712
    goto :goto_a

    .line 734
    .end local v7           #bytesRead:I
    .end local v13           #entityStream:Ljava/io/InputStream;
    .end local v14           #ex:Ljava/lang/Exception;
    .end local v27           #hostUrl:Ljava/net/URI;
    .end local v32           #params:Lorg/apache/http/params/HttpParams;
    .end local v36           #response:Lorg/apache/http/HttpResponse;
    .end local v37           #statusCode:I
    .end local v40           #target:Lorg/apache/http/HttpHost;
    :catch_c
    move-exception v14

    .line 735
    .local v14, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 734
    .end local v5           #UA:Ljava/lang/String;
    .end local v6           #bytesNotified:I
    .end local v12           #data:[B
    .end local v14           #ex:Ljava/io/IOException;
    .end local v28           #isProxySet:Z
    .end local v33           #proxyHost:Ljava/lang/String;
    .end local v34           #proxyPort:I
    .end local v41           #timeLastNotification:J
    :catch_d
    move-exception v14

    .line 735
    .restart local v14       #ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 726
    .end local v14           #ex:Ljava/io/IOException;
    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v5       #UA:Ljava/lang/String;
    .restart local v6       #bytesNotified:I
    .restart local v7       #bytesRead:I
    .restart local v12       #data:[B
    .restart local v13       #entityStream:Ljava/io/InputStream;
    .restart local v27       #hostUrl:Ljava/net/URI;
    .restart local v28       #isProxySet:Z
    .restart local v32       #params:Lorg/apache/http/params/HttpParams;
    .restart local v33       #proxyHost:Ljava/lang/String;
    .restart local v34       #proxyPort:I
    .restart local v36       #response:Lorg/apache/http/HttpResponse;
    .restart local v37       #statusCode:I
    .restart local v39       #stream:Ljava/io/FileOutputStream;
    .restart local v40       #target:Lorg/apache/http/HttpHost;
    .restart local v41       #timeLastNotification:J
    :catchall_1
    move-exception v43

    move-object/from16 v38, v39

    .end local v39           #stream:Ljava/io/FileOutputStream;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 710
    :catch_e
    move-exception v14

    goto :goto_b

    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v39       #stream:Ljava/io/FileOutputStream;
    :cond_18
    move-object/from16 v38, v39

    .end local v39           #stream:Ljava/io/FileOutputStream;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    goto :goto_9
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 747
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 749
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v11, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 750
    .local v6, myFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 751
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    .end local v6           #myFile:Ljava/io/File;
    :goto_0
    :try_start_1
    const-string v8, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionVersion_CEK.bin"

    .line 760
    .local v8, numberRegionVersionUrl:Ljava/lang/String;
    const/4 v3, 0x0

    .line 761
    .local v3, fileName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 762
    .local v10, versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 763
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 764
    :cond_0
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 765
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 767
    :cond_1
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 768
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesBeforeUpdate()V
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$600(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    .line 770
    :cond_2
    const-string v11, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v11, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    .line 772
    .local v2, fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    if-nez v2, :cond_5

    .line 773
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 774
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 962
    .end local v2           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v8           #numberRegionVersionUrl:Ljava/lang/String;
    .end local v10           #versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :cond_3
    :goto_1
    return-void

    .line 753
    .restart local v6       #myFile:Ljava/io/File;
    :cond_4
    :try_start_2
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "/system/etc/HomeLocationVersion.bin"

    invoke-virtual {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 755
    .end local v6           #myFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 756
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 778
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v8       #numberRegionVersionUrl:Ljava/lang/String;
    .restart local v10       #versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :cond_5
    const/4 v0, 0x1

    .line 779
    .local v0, downloadCount:I
    :try_start_3
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v5, 0x2

    .line 780
    .local v5, max:I
    :goto_2
    iget-wide v11, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_c

    if-ge v0, v5, :cond_c

    .line 781
    const-string v11, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v11, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    .line 783
    if-nez v2, :cond_a

    .line 784
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 785
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 939
    .end local v0           #downloadCount:I
    .end local v2           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #max:I
    .end local v8           #numberRegionVersionUrl:Ljava/lang/String;
    .end local v10           #versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :catch_1
    move-exception v1

    .line 940
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 941
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "EVENT_HTTP_EXCEPTION1 = 2"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 942
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 943
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 944
    :cond_6
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 945
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 946
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 947
    :cond_7
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    .line 948
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download failed"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 949
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 950
    sget v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    .line 959
    .end local v1           #e:Ljava/lang/Exception;
    :cond_8
    :goto_3
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 960
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto :goto_1

    .line 779
    .restart local v0       #downloadCount:I
    .restart local v2       #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v8       #numberRegionVersionUrl:Ljava/lang/String;
    .restart local v10       #versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :cond_9
    const/4 v5, 0x4

    goto :goto_2

    .line 789
    .restart local v5       #max:I
    :cond_a
    :try_start_4
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo.fileSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 790
    iget-wide v11, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_b

    .line 791
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to download, fileInfo.fileSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 792
    const-string v11, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v11, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    .line 794
    if-nez v2, :cond_f

    .line 795
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 796
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto/16 :goto_1

    .line 801
    :cond_b
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ready download, fileInfo.fileSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 806
    :cond_c
    const/4 v4, 0x1

    .line 807
    .local v4, isCorrectFile:Z
    iget-wide v11, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_d

    .line 808
    const/4 v4, 0x0

    .line 810
    :cond_d
    if-eqz v4, :cond_17

    .line 811
    iget-object v3, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 812
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo1 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 813
    if-eqz v3, :cond_14

    .line 815
    :try_start_5
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v11, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v10

    .line 820
    :goto_4
    :try_start_6
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "versionInfo1 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 821
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mVersionInfo = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 822
    if-eqz v10, :cond_10

    iget-object v11, v10, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isMessyCode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 825
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "the version is messy code"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 826
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 827
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 829
    :cond_e
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 830
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Delete mVersionTmpFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 831
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 804
    .end local v4           #isCorrectFile:Z
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 816
    .restart local v4       #isCorrectFile:Z
    :catch_2
    move-exception v1

    .line 817
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 835
    .end local v1           #e:Ljava/lang/Exception;
    :cond_10
    if-eqz v10, :cond_14

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    if-eqz v11, :cond_14

    iget-object v11, v10, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v12, v12, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, v10, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v12, v12, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 841
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "EVENT_VERSION_SAME = 4"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 843
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download repeate"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 844
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 845
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesForSuccess()V
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    .line 853
    :goto_5
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_11

    .line 854
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Delete mVersionTmpFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 855
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 857
    :cond_11
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 858
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto/16 :goto_1

    .line 847
    :cond_12
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 848
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 850
    :cond_13
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "mHandler.sendEmptyMessage(EVENT_VERSION_SAME)"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    goto :goto_5

    .line 863
    :cond_14
    const-string v7, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionDB_CEK.bin"

    .line 864
    .local v7, numberRegionUrl:Ljava/lang/String;
    if-eqz v7, :cond_15

    .line 865
    const-string v11, "/data/data/com.android.phone/HomeLocationDB_tmp.bin"

    invoke-direct {p0, v11, v7}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    .line 868
    :cond_15
    if-eqz v2, :cond_16

    .line 869
    iget-object v3, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    .line 871
    :cond_16
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo2 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 876
    .end local v7           #numberRegionUrl:Ljava/lang/String;
    :cond_17
    if-eqz v10, :cond_19

    if-eqz v2, :cond_19

    iget-wide v11, v10, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_18

    iget-wide v11, v10, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_19

    .line 879
    :cond_18
    const/4 v4, 0x0

    .line 882
    :cond_19
    if-eqz v2, :cond_1a

    .line 883
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v11, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readDownloadFileInfo(Lcom/android/phone/callsettings/DownloadFileInfo;)V

    .line 884
    invoke-virtual {v2}, Lcom/android/phone/callsettings/DownloadFileInfo;->isValidFile()Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 885
    const/4 v4, 0x1

    .line 891
    :cond_1a
    :goto_6
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isCorrectFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static {v11, v12, v13}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 892
    if-eqz v4, :cond_1f

    .line 893
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    const-string v12, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 894
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    const-string v12, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 896
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_1b

    .line 897
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 898
    :cond_1b
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 899
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_1c

    .line 900
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 901
    :cond_1c
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    .line 902
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo2 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 903
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 905
    new-instance v9, Landroid/content/Intent;

    const-string v11, "com.sec.action.UPDATE_VERSION"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    .local v9, refreshIntent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 909
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download success"

    const/4 v13, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static {v11, v12, v13}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 910
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesForSuccess()V
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    goto/16 :goto_3

    .line 887
    .end local v9           #refreshIntent:Landroid/content/Intent;
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 912
    :cond_1e
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 913
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 916
    :cond_1f
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "EVENT_HTTP_EXCEPTION = 2"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 917
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_20

    .line 918
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 919
    :cond_20
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 920
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_21

    .line 921
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 922
    :cond_21
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    .line 923
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download failed"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 924
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 925
    sget v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    goto/16 :goto_3

    .line 927
    :cond_22
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 928
    iget-boolean v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    if-nez v11, :cond_8

    .line 932
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 952
    .end local v0           #downloadCount:I
    .end local v2           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #isCorrectFile:Z
    .end local v5           #max:I
    .end local v8           #numberRegionVersionUrl:Ljava/lang/String;
    .end local v10           #versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    .restart local v1       #e:Ljava/lang/Exception;
    :cond_23
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 953
    iget-boolean v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    if-nez v11, :cond_8

    .line 954
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3
.end method

.method public startThread()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    .line 447
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 448
    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    .line 452
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 455
    :cond_0
    return-void
.end method
