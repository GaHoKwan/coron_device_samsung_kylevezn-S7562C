.class public Lcom/sec/android/app/dialertab/widget/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/widget/CscParser$1;,
        Lcom/sec/android/app/dialertab/widget/CscParser$Get_DefaultToneUri_MediaStore;
    }
.end annotation


# static fields
.field private static Media_Type:I

.field private static mChameleonFileName:Ljava/lang/String;

.field private static mFileName:Ljava/lang/String;

.field private static mOthersFileName:Ljava/lang/String;

.field private static sChameleonInstance:Lcom/sec/android/app/dialertab/widget/CscParser;

.field private static sInstance:Lcom/sec/android/app/dialertab/widget/CscParser;

.field private static sOthersInstance:Lcom/sec/android/app/dialertab/widget/CscParser;

.field private static value_uri:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoc:Lorg/w3c/dom/Document;

.field private mHandler:Landroid/os/Handler;

.field private mRoot:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/sec/android/app/dialertab/widget/CscParser;

    invoke-static {}, Lcom/sec/android/app/dialertab/widget/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/widget/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/dialertab/widget/CscParser;->sInstance:Lcom/sec/android/app/dialertab/widget/CscParser;

    .line 68
    new-instance v0, Lcom/sec/android/app/dialertab/widget/CscParser;

    invoke-static {}, Lcom/sec/android/app/dialertab/widget/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/widget/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/dialertab/widget/CscParser;->sOthersInstance:Lcom/sec/android/app/dialertab/widget/CscParser;

    .line 70
    new-instance v0, Lcom/sec/android/app/dialertab/widget/CscParser;

    invoke-static {}, Lcom/sec/android/app/dialertab/widget/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/widget/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/dialertab/widget/CscParser;->sChameleonInstance:Lcom/sec/android/app/dialertab/widget/CscParser;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/widget/CscParser;->value_uri:Landroid/net/Uri;

    .line 78
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/dialertab/widget/CscParser;->Media_Type:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/CscParser;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-static {}, Lcom/sec/android/app/dialertab/widget/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    sput-object p1, Lcom/sec/android/app/dialertab/widget/CscParser;->mFileName:Ljava/lang/String;

    .line 97
    :try_start_0
    sget-object v1, Lcom/sec/android/app/dialertab/widget/CscParser;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/CscParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/sec/android/app/dialertab/widget/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    sput-object p1, Lcom/sec/android/app/dialertab/widget/CscParser;->mOthersFileName:Ljava/lang/String;

    .line 107
    :try_start_1
    sget-object v1, Lcom/sec/android/app/dialertab/widget/CscParser;->mOthersFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/CscParser;->update(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/dialertab/widget/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sput-object p1, Lcom/sec/android/app/dialertab/widget/CscParser;->mChameleonFileName:Ljava/lang/String;

    .line 117
    :try_start_2
    sget-object v1, Lcom/sec/android/app/dialertab/widget/CscParser;->mChameleonFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/widget/CscParser;->update(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 119
    :catch_2
    move-exception v0

    .line 120
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/widget/CscParser;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/CscParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/sec/android/app/dialertab/widget/CscParser;->Media_Type:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/widget/CscParser;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/CscParser;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lcom/sec/android/app/dialertab/widget/CscParser;->value_uri:Landroid/net/Uri;

    return-object p0
.end method

.method public static getChameleonInstance(Ljava/lang/String;)Lcom/sec/android/app/dialertab/widget/CscParser;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 174
    :try_start_0
    sget-object v1, Lcom/sec/android/app/dialertab/widget/CscParser;->sChameleonInstance:Lcom/sec/android/app/dialertab/widget/CscParser;

    invoke-static {}, Lcom/sec/android/app/dialertab/widget/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/dialertab/widget/CscParser;->update(Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/sec/android/app/dialertab/widget/CscParser;->sChameleonInstance:Lcom/sec/android/app/dialertab/widget/CscParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getChameleonPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    const-string v0, "/carrier/chameleon.xml"

    .line 552
    .local v0, chameleon_path:Ljava/lang/String;
    return-object v0
.end method

.method public static getCustomerPath()Ljava/lang/String;
    .locals 13

    .prologue
    .line 374
    const-string v3, "/system/csc/customer.xml"

    .line 376
    .local v3, customer_path:Ljava/lang/String;
    const/4 v7, 0x0

    .line 377
    .local v7, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 383
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    .local v6, fe:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 389
    new-instance v8, Ljava/io/FileReader;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 391
    .end local v7           #fr:Ljava/io/FileReader;
    .local v8, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 393
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 395
    .local v9, sales_code:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/csc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v4, de:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v10, "/system/csc/customer.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v2, ce:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 403
    const-string v3, "/system/csc/customer.xml"

    .line 413
    :cond_0
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "customer_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 439
    .end local v2           #ce:Ljava/io/File;
    .end local v4           #de:Ljava/io/File;
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v9           #sales_code:Ljava/lang/String;
    .restart local v7       #fr:Ljava/io/FileReader;
    :goto_0
    if-eqz v0, :cond_1

    .line 441
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 447
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 449
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 459
    .end local v6           #fe:Ljava/io/File;
    :cond_2
    :goto_2
    return-object v3

    .line 422
    .restart local v6       #fe:Ljava/io/File;
    :cond_3
    :try_start_5
    const-string v3, "/system/csc/customer.xml"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 429
    .end local v6           #fe:Ljava/io/File;
    :catch_0
    move-exception v5

    .line 430
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File not Found exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 439
    if-eqz v0, :cond_4

    .line 441
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 447
    :cond_4
    :goto_4
    if-eqz v7, :cond_2

    .line 449
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 453
    :catch_1
    move-exception v10

    goto :goto_2

    .line 431
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    .line 439
    :goto_5
    if-eqz v0, :cond_5

    .line 441
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 447
    :cond_5
    :goto_6
    if-eqz v7, :cond_2

    .line 449
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 453
    :catch_3
    move-exception v10

    goto :goto_2

    .line 438
    :catchall_0
    move-exception v10

    .line 439
    :goto_7
    if-eqz v0, :cond_6

    .line 441
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 447
    :cond_6
    :goto_8
    if-eqz v7, :cond_7

    .line 449
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 455
    :cond_7
    :goto_9
    throw v10

    .line 442
    .restart local v6       #fe:Ljava/io/File;
    :catch_4
    move-exception v10

    goto :goto_1

    .line 453
    :catch_5
    move-exception v10

    goto :goto_2

    .line 442
    .end local v6           #fe:Ljava/io/File;
    .restart local v5       #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v10

    goto :goto_4

    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v10

    goto :goto_6

    :catch_8
    move-exception v11

    goto :goto_8

    .line 453
    :catch_9
    move-exception v11

    goto :goto_9

    .line 438
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fe:Ljava/io/File;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_7

    .line 431
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_a
    move-exception v10

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_b
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_5

    .line 429
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_c
    move-exception v5

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_d
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_3
.end method

.method public static getOthersPath()Ljava/lang/String;
    .locals 13

    .prologue
    .line 465
    const-string v8, "/system/csc/others.xml"

    .line 467
    .local v8, others_path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 468
    .local v6, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 474
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .local v5, fe:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 480
    new-instance v7, Ljava/io/FileReader;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v7, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 482
    .end local v6           #fr:Ljava/io/FileReader;
    .local v7, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 484
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 486
    .local v9, sales_code:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/csc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .local v3, de:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v10, "/system/csc/others.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .local v2, ce:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 494
    const-string v8, "/system/csc/others.xml"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    :cond_0
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 526
    .end local v2           #ce:Ljava/io/File;
    .end local v3           #de:Ljava/io/File;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v9           #sales_code:Ljava/lang/String;
    .restart local v6       #fr:Ljava/io/FileReader;
    :goto_0
    if-eqz v0, :cond_1

    .line 528
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 534
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 536
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 546
    .end local v5           #fe:Ljava/io/File;
    :cond_2
    :goto_2
    return-object v8

    .line 509
    .restart local v5       #fe:Ljava/io/File;
    :cond_3
    :try_start_5
    const-string v8, "/system/csc/others.xml"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 516
    .end local v5           #fe:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 517
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File not Found exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 526
    if-eqz v0, :cond_4

    .line 528
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 534
    :cond_4
    :goto_4
    if-eqz v6, :cond_2

    .line 536
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 540
    :catch_1
    move-exception v10

    goto :goto_2

    .line 518
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    .line 526
    :goto_5
    if-eqz v0, :cond_5

    .line 528
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 534
    :cond_5
    :goto_6
    if-eqz v6, :cond_2

    .line 536
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 540
    :catch_3
    move-exception v10

    goto :goto_2

    .line 525
    :catchall_0
    move-exception v10

    .line 526
    :goto_7
    if-eqz v0, :cond_6

    .line 528
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 534
    :cond_6
    :goto_8
    if-eqz v6, :cond_7

    .line 536
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 542
    :cond_7
    :goto_9
    throw v10

    .line 529
    .restart local v5       #fe:Ljava/io/File;
    :catch_4
    move-exception v10

    goto :goto_1

    .line 540
    :catch_5
    move-exception v10

    goto :goto_2

    .line 529
    .end local v5           #fe:Ljava/io/File;
    .restart local v4       #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v10

    goto :goto_4

    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v10

    goto :goto_6

    :catch_8
    move-exception v11

    goto :goto_8

    .line 540
    :catch_9
    move-exception v11

    goto :goto_9

    .line 525
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fe:Ljava/io/File;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_7

    .line 518
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_a
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_b
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_5

    .line 516
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_c
    move-exception v4

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_d
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_3
.end method

.method private update(Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 187
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 189
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, fe:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/CscParser;->mDoc:Lorg/w3c/dom/Document;

    .line 195
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v3, "CscParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): file not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/widget/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 206
    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 217
    if-nez p1, :cond_1

    move-object v0, v3

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 222
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, token:Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v0, v3

    .line 230
    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/widget/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 236
    goto :goto_1
.end method

.method public search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 244
    if-nez p1, :cond_1

    move-object v0, v4

    .line 267
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 249
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 251
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 253
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 255
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 257
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_2
    move-object v0, v4

    .line 267
    goto :goto_0
.end method
