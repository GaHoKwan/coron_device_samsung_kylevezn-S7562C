.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final HDR_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HDR_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HDR_VALUE_ACCEPT:Ljava/lang/String; = "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String; = null

.field public static final HTTP_GET_METHOD:I = 0x2

.field public static final HTTP_POST_METHOD:I = 0x1

.field public static final HTTP_TRANSACTION_FAIL_ID:I = 0x38d

.field public static final MESSAGE_HTTP_CONNECTION_ERROR:Ljava/lang/String; = "httperror"

.field private static final MMS_READ_BUFFER:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/HttpUtils;->getCurrentAcceptLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method private static addLGUHttpHeader(Landroid/content/Context;Lorg/apache/http/HttpRequest;)V
    .locals 14
    .parameter "context"
    .parameter "req"

    .prologue
    .line 538
    const-string v8, ""

    .line 539
    .local v8, line1Number:Ljava/lang/String;
    const-string v6, ""

    .line 541
    .local v6, korPhoneNum:Ljava/lang/String;
    :try_start_0
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 546
    :goto_0
    const/4 v11, 0x4

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "+82"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "082"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    const-string v12, "0082"

    aput-object v12, v0, v11

    const/4 v11, 0x3

    const-string v12, "82"

    aput-object v12, v0, v11

    .line 547
    .local v0, ROAMING_NUM:[Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 549
    move-object v2, v0

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v3, v2, v5

    .line 550
    .local v3, checkNum:Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    .line 551
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 558
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #checkNum:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 559
    move-object v6, v8

    .line 562
    :cond_1
    const-string v11, "x-pcs-mdn"

    invoke-interface {p1, v11, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 565
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 567
    .local v1, activePhone:I
    const/4 v11, 0x2

    if-ne v11, v1, :cond_4

    .line 568
    const-string v11, "ril.cdma.sid"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 569
    .local v10, regist_SID:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 570
    const-string v11, "SID"

    invoke-interface {p1, v11, v10}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .end local v1           #activePhone:I
    .end local v10           #regist_SID:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 542
    .end local v0           #ROAMING_NUM:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 543
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "Mms:transaction"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HttpUtils] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 549
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #ROAMING_NUM:[Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v3       #checkNum:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 573
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #checkNum:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v1       #activePhone:I
    :cond_4
    const-string v11, "gsm.operator.numeric"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 574
    .local v9, regist_MMC_MNC:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 575
    const-string v11, "Device-MCC_MNC"

    invoke-interface {p1, v11, v9}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 526
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/HttpUtils;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 531
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 508
    if-nez p0, :cond_1

    .line 509
    const/4 p0, 0x0

    .line 521
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 511
    .restart local p0
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    const-string p0, "he"

    goto :goto_0

    .line 514
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    const-string p0, "id"

    goto :goto_0

    .line 517
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const-string p0, "yi"

    goto :goto_0
.end method

.method protected static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 7
    .parameter "context"

    .prologue
    .line 461
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, userAgent:Ljava/lang/String;
    invoke-static {v3, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 463
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 464
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v2

    .line 473
    .local v2, soTimeout:I
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 475
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setLinger(Lorg/apache/http/params/HttpParams;I)V

    .line 477
    return-object v0
.end method

.method public static getCurrentAcceptLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "locale"

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 492
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 494
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_0
    const-string v1, "en-US"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_1
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 6
    .parameter "exception"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x7f0a027b

    .line 424
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HttpUtils] HttpConnection Exception url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, errorString:Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 429
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 430
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HttpUtils] cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 435
    const-string v2, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HttpUtils] message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 439
    :cond_1
    if-nez v1, :cond_4

    .line 440
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 449
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 450
    .local v0, e:Ljava/io/IOException;
    if-eqz v1, :cond_5

    .line 451
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 455
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    if-eqz p0, :cond_3

    .line 456
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 457
    :cond_3
    throw v0

    .line 443
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    const-string v2, "Not Found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    goto :goto_0

    .line 453
    .restart local v0       #e:Ljava/io/IOException;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_1
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;ILandroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpRequest;)[B
    .locals 37
    .parameter "context"
    .parameter "token"
    .parameter "url"
    .parameter "pdu"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .parameter "client"
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    if-nez p3, :cond_0

    .line 127
    new-instance v33, Ljava/lang/IllegalArgumentException;

    const-string v34, "URL must not be null."

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 130
    :cond_0
    const-string v33, "Mms:transaction"

    const-string v34, "[HttpUtils] httpConnection: params list"

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] \ttoken\t\t= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v34, "Mms:transaction"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] \tmethod\t\t= "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v33, 0x1

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    const-string v33, "POST"

    :goto_0
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] \tisProxySet\t= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] \tproxyHost\t= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] \tproxyPort\t= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] \turl\t\t= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :try_start_0
    new-instance v12, Ljava/net/URI;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 162
    .local v12, hostUrl:Ljava/net/URI;
    new-instance v28, Lorg/apache/http/HttpHost;

    invoke-virtual {v12}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v12}, Ljava/net/URI;->getPort()I

    move-result v34

    const-string v35, "http"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    .local v28, target:Lorg/apache/http/HttpHost;
    if-nez p9, :cond_1

    .line 167
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object p9

    .line 168
    const-string v33, "Mms:transaction"

    const-string v34, "[HttpUtils] create httpClient"

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    packed-switch p5, :pswitch_data_0

    .line 192
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] Unknown HTTP method: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ". Must be one of POST["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "] or GET["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x2

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_a

    .line 195
    const/4 v5, 0x0

    .line 415
    if-eqz p9, :cond_2

    .line 416
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 419
    .end local v12           #hostUrl:Ljava/net/URI;
    .end local v28           #target:Lorg/apache/http/HttpHost;
    :cond_2
    :goto_1
    return-object v5

    .line 132
    :cond_3
    const/16 v33, 0x2

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    const-string v33, "GET"

    goto/16 :goto_0

    :cond_4
    const-string v33, "UNKNOWN"

    goto/16 :goto_0

    .line 173
    .restart local v12       #hostUrl:Ljava/net/URI;
    .restart local v28       #target:Lorg/apache/http/HttpHost;
    :pswitch_0
    :try_start_1
    new-instance v10, Lcom/android/mms/transaction/ProgressCallbackEntity;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 176
    .local v10, entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    const-string v33, "application/vnd.wap.mms-message"

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 179
    if-nez p10, :cond_b

    .line 180
    new-instance v22, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 181
    .local v22, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v33, "Mms:transaction"

    const-string v34, "[HttpUtils] create HttpPost"

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 186
    move-object/from16 p10, v22

    .line 199
    .end local v10           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .end local v22           #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_3
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    .line 200
    .local v21, params:Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_5

    .line 201
    new-instance v33, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v33

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 204
    :cond_5
    move-object/from16 v0, p10

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 207
    const-string v33, "Accept"

    const-string v34, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, p10

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfTagName()Ljava/lang/String;

    move-result-object v31

    .line 210
    .local v31, xWapProfileTagName:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v32

    .line 212
    .local v32, xWapProfileUrl:Ljava/lang/String;
    if-eqz v32, :cond_6

    .line 213
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] httpConn: xWapProfUrl="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p10

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_6
    if-eqz p6, :cond_7

    .line 256
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParams()Ljava/lang/String;

    move-result-object v11

    .line 258
    .local v11, extraHttpParams:Ljava/lang/String;
    if-eqz v11, :cond_d

    .line 259
    const-string v33, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v16

    .line 264
    .local v16, line1Number:Ljava/lang/String;
    if-nez v16, :cond_8

    .line 265
    const-string v33, "phone"

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v16

    .line 271
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParamsLine1Key()Ljava/lang/String;

    move-result-object v15

    .line 272
    .local v15, line1Key:Ljava/lang/String;
    const-string v33, "\\|"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 274
    .local v19, paramList:[Ljava/lang/String;
    move-object/from16 v4, v19

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_4
    if-ge v13, v14, :cond_d

    aget-object v20, v4, v13

    .line 275
    .local v20, paramPair:Ljava/lang/String;
    const-string v33, ":"

    const/16 v34, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v26

    .line 277
    .local v26, splitPair:[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    .line 278
    const/16 v33, 0x0

    aget-object v33, v26, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 279
    .local v17, name:Ljava/lang/String;
    const/16 v33, 0x1

    aget-object v33, v26, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 281
    .local v30, value:Ljava/lang/String;
    if-eqz v15, :cond_9

    .line 282
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAuthMdn()Z

    move-result v33

    if-eqz v33, :cond_c

    .line 283
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "1"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    .line 288
    :cond_9
    :goto_5
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_a

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_a

    .line 289
    move-object/from16 v0, p10

    move-object/from16 v1, v17

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v17           #name:Ljava/lang/String;
    .end local v30           #value:Ljava/lang/String;
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 183
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v11           #extraHttpParams:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #line1Key:Ljava/lang/String;
    .end local v16           #line1Number:Ljava/lang/String;
    .end local v19           #paramList:[Ljava/lang/String;
    .end local v20           #paramPair:Ljava/lang/String;
    .end local v21           #params:Lorg/apache/http/params/HttpParams;
    .end local v26           #splitPair:[Ljava/lang/String;
    .end local v31           #xWapProfileTagName:Ljava/lang/String;
    .end local v32           #xWapProfileUrl:Ljava/lang/String;
    .restart local v10       #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    :cond_b
    move-object/from16 v0, p10

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v22, v0

    .restart local v22       #post:Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_2

    .line 189
    .end local v10           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .end local v22           #post:Lorg/apache/http/client/methods/HttpPost;
    :pswitch_1
    new-instance v24, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .end local p10
    .local v24, req:Lorg/apache/http/HttpRequest;
    move-object/from16 p10, v24

    .line 190
    .end local v24           #req:Lorg/apache/http/HttpRequest;
    .restart local p10
    goto/16 :goto_3

    .line 285
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v11       #extraHttpParams:Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #line1Key:Ljava/lang/String;
    .restart local v16       #line1Number:Ljava/lang/String;
    .restart local v17       #name:Ljava/lang/String;
    .restart local v19       #paramList:[Ljava/lang/String;
    .restart local v20       #paramPair:Ljava/lang/String;
    .restart local v21       #params:Lorg/apache/http/params/HttpParams;
    .restart local v26       #splitPair:[Ljava/lang/String;
    .restart local v30       #value:Ljava/lang/String;
    .restart local v31       #xWapProfileTagName:Ljava/lang/String;
    .restart local v32       #xWapProfileUrl:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    goto :goto_5

    .line 294
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #line1Key:Ljava/lang/String;
    .end local v16           #line1Number:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    .end local v19           #paramList:[Ljava/lang/String;
    .end local v20           #paramPair:Ljava/lang/String;
    .end local v26           #splitPair:[Ljava/lang/String;
    .end local v30           #value:Ljava/lang/String;
    :cond_d
    const-string v33, "Accept-Language"

    sget-object v34, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, p10

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLguHttpHeader()Z

    move-result v33

    if-eqz v33, :cond_e

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-static {v0, v1}, Lcom/android/mms/transaction/HttpUtils;->addLGUHttpHeader(Landroid/content/Context;Lorg/apache/http/HttpRequest;)V

    .line 300
    :cond_e
    move-object/from16 v0, p9

    move-object/from16 v1, v28

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v25

    .line 301
    .local v25, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v27

    .line 302
    .local v27, status:Lorg/apache/http/StatusLine;
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "StatusLine : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-interface/range {v27 .. v27}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v33

    const/16 v34, 0xc8

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_10

    .line 332
    new-instance v33, Ljava/io/IOException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "HTTP error: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_a

    .line 402
    .end local v11           #extraHttpParams:Ljava/lang/String;
    .end local v12           #hostUrl:Ljava/net/URI;
    .end local v21           #params:Lorg/apache/http/params/HttpParams;
    .end local v25           #response:Lorg/apache/http/HttpResponse;
    .end local v27           #status:Lorg/apache/http/StatusLine;
    .end local v28           #target:Lorg/apache/http/HttpHost;
    .end local v31           #xWapProfileTagName:Ljava/lang/String;
    .end local v32           #xWapProfileUrl:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 403
    .local v9, e:Ljava/net/URISyntaxException;
    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 415
    if-eqz p9, :cond_f

    .line 416
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 419
    .end local v9           #e:Ljava/net/URISyntaxException;
    :cond_f
    :goto_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 334
    .restart local v11       #extraHttpParams:Ljava/lang/String;
    .restart local v12       #hostUrl:Ljava/net/URI;
    .restart local v21       #params:Lorg/apache/http/params/HttpParams;
    .restart local v25       #response:Lorg/apache/http/HttpResponse;
    .restart local v27       #status:Lorg/apache/http/StatusLine;
    .restart local v28       #target:Lorg/apache/http/HttpHost;
    .restart local v31       #xWapProfileTagName:Ljava/lang/String;
    .restart local v32       #xWapProfileUrl:Ljava/lang/String;
    :cond_10
    :try_start_3
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] http response "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v10

    .line 338
    .local v10, entity:Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    .line 339
    .local v5, body:[B
    if-eqz v10, :cond_16

    .line 341
    :try_start_4
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v33

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-lez v33, :cond_11

    .line 342
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v5, v0, [B

    .line 343
    new-instance v8, Ljava/io/DataInputStream;

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 345
    .local v8, dis:Ljava/io/DataInputStream;
    :try_start_5
    invoke-virtual {v8, v5}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 348
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 354
    .end local v8           #dis:Ljava/io/DataInputStream;
    :cond_11
    :goto_7
    :try_start_7
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v33

    if-eqz v33, :cond_15

    .line 355
    const-string v33, "Mms:transaction"

    const-string v34, "[HttpUtils] httpConnection: transfer encoding is chunked"

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v7

    .line 357
    .local v7, bytesTobeRead:I
    new-array v0, v7, [B

    move-object/from16 v29, v0

    .line 358
    .local v29, tempBody:[B
    new-instance v8, Ljava/io/DataInputStream;

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v8, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 360
    .restart local v8       #dis:Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 361
    .local v6, bytesRead:I
    const/16 v18, 0x0

    .line 362
    .local v18, offset:I
    const/16 v23, 0x0

    .line 365
    .local v23, readError:Z
    :cond_12
    :try_start_8
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1, v7}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v6

    .line 372
    if-lez v6, :cond_13

    .line 373
    sub-int/2addr v7, v6

    .line 374
    add-int v18, v18, v6

    .line 376
    :cond_13
    if-ltz v6, :cond_14

    if-gtz v7, :cond_12

    .line 377
    :cond_14
    :goto_8
    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v6, v0, :cond_18

    if-lez v18, :cond_18

    if-nez v23, :cond_18

    .line 380
    :try_start_9
    move/from16 v0, v18

    new-array v5, v0, [B

    .line 381
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v18

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] httpConnection: Chunked response length ["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 389
    :goto_9
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 396
    .end local v6           #bytesRead:I
    .end local v7           #bytesTobeRead:I
    .end local v8           #dis:Ljava/io/DataInputStream;
    .end local v18           #offset:I
    .end local v23           #readError:Z
    .end local v29           #tempBody:[B
    :cond_15
    :goto_a
    if-eqz v10, :cond_16

    .line 397
    :try_start_b
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_a

    .line 415
    :cond_16
    if-eqz p9, :cond_2

    .line 416
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 349
    .restart local v8       #dis:Ljava/io/DataInputStream;
    :catch_1
    move-exception v9

    .line 350
    .local v9, e:Ljava/io/IOException;
    :try_start_c
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] Error closing input stream: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_7

    .line 396
    .end local v8           #dis:Ljava/io/DataInputStream;
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v33

    if-eqz v10, :cond_17

    .line 397
    :try_start_d
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_17
    throw v33
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_a

    .line 404
    .end local v5           #body:[B
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #extraHttpParams:Ljava/lang/String;
    .end local v12           #hostUrl:Ljava/net/URI;
    .end local v21           #params:Lorg/apache/http/params/HttpParams;
    .end local v25           #response:Lorg/apache/http/HttpResponse;
    .end local v27           #status:Lorg/apache/http/StatusLine;
    .end local v28           #target:Lorg/apache/http/HttpHost;
    .end local v31           #xWapProfileTagName:Ljava/lang/String;
    .end local v32           #xWapProfileUrl:Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 405
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_e
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 415
    if-eqz p9, :cond_f

    .line 416
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_6

    .line 347
    .end local v9           #e:Ljava/lang/IllegalStateException;
    .restart local v5       #body:[B
    .restart local v8       #dis:Ljava/io/DataInputStream;
    .restart local v10       #entity:Lorg/apache/http/HttpEntity;
    .restart local v11       #extraHttpParams:Ljava/lang/String;
    .restart local v12       #hostUrl:Ljava/net/URI;
    .restart local v21       #params:Lorg/apache/http/params/HttpParams;
    .restart local v25       #response:Lorg/apache/http/HttpResponse;
    .restart local v27       #status:Lorg/apache/http/StatusLine;
    .restart local v28       #target:Lorg/apache/http/HttpHost;
    .restart local v31       #xWapProfileTagName:Ljava/lang/String;
    .restart local v32       #xWapProfileUrl:Ljava/lang/String;
    :catchall_1
    move-exception v33

    .line 348
    :try_start_f
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 351
    :goto_b
    :try_start_10
    throw v33

    .line 349
    :catch_3
    move-exception v9

    .line 350
    .local v9, e:Ljava/io/IOException;
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[HttpUtils] Error closing input stream: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_b

    .line 366
    .end local v9           #e:Ljava/io/IOException;
    .restart local v6       #bytesRead:I
    .restart local v7       #bytesTobeRead:I
    .restart local v18       #offset:I
    .restart local v23       #readError:Z
    .restart local v29       #tempBody:[B
    :catch_4
    move-exception v9

    .line 367
    .restart local v9       #e:Ljava/io/IOException;
    const/16 v23, 0x1

    .line 368
    :try_start_11
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] httpConnection: error reading input stream"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_8

    .line 388
    .end local v9           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v33

    .line 389
    :try_start_12
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 392
    :goto_c
    :try_start_13
    throw v33
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 385
    :cond_18
    :try_start_14
    const-string v33, "Mms:transaction"

    const-string v34, "[HttpUtils] httpConnection: Response entity too large or empty"

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/16 :goto_9

    .line 390
    :catch_5
    move-exception v9

    .line 391
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_15
    const-string v33, "Mms:transaction"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[HttpUtils] Error closing input stream: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 390
    .end local v9           #e:Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 391
    .restart local v9       #e:Ljava/io/IOException;
    const-string v34, "Mms:transaction"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[HttpUtils] Error closing input stream: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_c

    .line 406
    .end local v5           #body:[B
    .end local v6           #bytesRead:I
    .end local v7           #bytesTobeRead:I
    .end local v8           #dis:Ljava/io/DataInputStream;
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #extraHttpParams:Ljava/lang/String;
    .end local v12           #hostUrl:Ljava/net/URI;
    .end local v18           #offset:I
    .end local v21           #params:Lorg/apache/http/params/HttpParams;
    .end local v23           #readError:Z
    .end local v25           #response:Lorg/apache/http/HttpResponse;
    .end local v27           #status:Lorg/apache/http/StatusLine;
    .end local v28           #target:Lorg/apache/http/HttpHost;
    .end local v29           #tempBody:[B
    .end local v31           #xWapProfileTagName:Ljava/lang/String;
    .end local v32           #xWapProfileUrl:Ljava/lang/String;
    :catch_7
    move-exception v9

    .line 407
    .local v9, e:Ljava/lang/IllegalArgumentException;
    :try_start_16
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 415
    if-eqz p9, :cond_f

    .line 416
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_6

    .line 408
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v9

    .line 409
    .local v9, e:Ljava/net/SocketException;
    :try_start_17
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 415
    if-eqz p9, :cond_f

    .line 416
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_6

    .line 410
    .end local v9           #e:Ljava/net/SocketException;
    :catch_9
    move-exception v9

    .line 411
    .local v9, e:Ljava/lang/Exception;
    :try_start_18
    move-object/from16 v0, p3

    invoke-static {v9, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 415
    if-eqz p9, :cond_f

    .line 416
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_6

    .line 412
    .end local v9           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v9

    .line 413
    .local v9, e:Ljava/lang/OutOfMemoryError;
    const/16 v33, 0x0

    :try_start_19
    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 415
    if-eqz p9, :cond_f

    .line 416
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_6

    .line 415
    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    :catchall_3
    move-exception v33

    if-eqz p9, :cond_19

    .line 416
    invoke-virtual/range {p9 .. p9}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_19
    throw v33

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
