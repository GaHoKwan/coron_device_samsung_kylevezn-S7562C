.class public Lcom/android/mms/transaction/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/CscParser$1;,
        Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;
    }
.end annotation


# static fields
.field private static final CSC_ID_FILE:Ljava/lang/String; = "/system/SW_Configuration.xml"

.field private static final CSC_OTHERS_FILE:Ljava/lang/String; = "/system/csc/others.xml"

.field private static final CSC_XML_FILE:Ljava/lang/String; = "/system/csc/customer.xml"

.field private static final CUSTOMER_XML_PATH:Ljava/lang/String; = "/system/csc/"

.field private static Media_Type:I = 0x0

.field private static final SALES_CODE_PATH:Ljava/lang/String; = "/proc/LinuStoreIII/efs_info"

.field private static final TAG:Ljava/lang/String; = "CscParser"

.field private static mFileName:Ljava/lang/String;

.field private static sInstance:Lcom/android/mms/transaction/CscParser;

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
    .line 39
    new-instance v0, Lcom/android/mms/transaction/CscParser;

    invoke-static {}, Lcom/android/mms/transaction/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/transaction/CscParser;->sInstance:Lcom/android/mms/transaction/CscParser;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/CscParser;->value_uri:Landroid/net/Uri;

    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/transaction/CscParser;->Media_Type:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/CscParser;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/android/mms/transaction/CscParser;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/transaction/CscParser;->mHandler:Landroid/os/Handler;

    .line 56
    sput-object p1, Lcom/android/mms/transaction/CscParser;->mFileName:Ljava/lang/String;

    .line 58
    :try_start_0
    sget-object v1, Lcom/android/mms/transaction/CscParser;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/CscParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/CscParser;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/mms/transaction/CscParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/android/mms/transaction/CscParser;->Media_Type:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/CscParser;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/mms/transaction/CscParser;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    sput-object p0, Lcom/android/mms/transaction/CscParser;->value_uri:Landroid/net/Uri;

    return-object p0
.end method

.method public static getCustomerPath()Ljava/lang/String;
    .locals 13

    .prologue
    .line 271
    const-string v3, "/system/csc/customer.xml"

    .line 274
    .local v3, customer_path:Ljava/lang/String;
    const/4 v7, 0x0

    .line 275
    .local v7, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 279
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v10, "/proc/LinuStoreIII/efs_info"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v6, fe:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 283
    new-instance v8, Ljava/io/FileReader;

    const-string v10, "/proc/LinuStoreIII/efs_info"

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 284
    .end local v7           #fr:Ljava/io/FileReader;
    .local v8, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 285
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 289
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

    .line 290
    .local v4, de:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v10, "/system/csc/customer.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v2, ce:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 293
    const-string v3, "/system/csc/customer.xml"

    .line 305
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

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 319
    .end local v2           #ce:Ljava/io/File;
    .end local v4           #de:Ljava/io/File;
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v9           #sales_code:Ljava/lang/String;
    .restart local v7       #fr:Ljava/io/FileReader;
    :goto_0
    if-eqz v7, :cond_1

    .line 320
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 321
    :cond_1
    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 326
    .end local v6           #fe:Ljava/io/File;
    :cond_2
    :goto_1
    return-object v3

    .line 307
    .restart local v6       #fe:Ljava/io/File;
    :cond_3
    :try_start_4
    const-string v10, "CscParser"

    const-string v11, "mps_code.dat does not exist"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v3, "/system/csc/customer.xml"

    .line 309
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

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 313
    .end local v6           #fe:Ljava/io/File;
    :catch_0
    move-exception v5

    .line 314
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
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

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 319
    if-eqz v7, :cond_4

    .line 320
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 321
    :cond_4
    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 323
    :catch_1
    move-exception v10

    goto :goto_1

    .line 315
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    .line 319
    :goto_3
    if-eqz v7, :cond_5

    .line 320
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 321
    :cond_5
    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 323
    :catch_3
    move-exception v10

    goto :goto_1

    .line 318
    :catchall_0
    move-exception v10

    .line 319
    :goto_4
    if-eqz v7, :cond_6

    .line 320
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 321
    :cond_6
    if-eqz v0, :cond_7

    .line 322
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 324
    :cond_7
    :goto_5
    throw v10

    .line 323
    :catch_4
    move-exception v11

    goto :goto_5

    .line 318
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fe:Ljava/io/File;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_4

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
    goto :goto_4

    .line 315
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v10

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_3

    .line 313
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v5

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 323
    :catch_9
    move-exception v10

    goto :goto_1
.end method

.method public static getIDPath()Ljava/lang/String;
    .locals 13

    .prologue
    .line 388
    const-string v0, "/system/SW_Configuration.xml"

    .line 390
    .local v0, ID_path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 391
    .local v6, fr:Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 394
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v10, "/proc/LinuStoreIII/efs_info"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .local v5, fe:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 398
    new-instance v7, Ljava/io/FileReader;

    const-string v10, "/proc/LinuStoreIII/efs_info"

    invoke-direct {v7, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 399
    .end local v6           #fr:Ljava/io/FileReader;
    .local v7, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 400
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 402
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

    .line 403
    .local v3, de:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v10, "/system/SW_Configuration.xml"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v8, ie:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 406
    const-string v0, "/system/SW_Configuration.xml"

    .line 418
    :cond_0
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ID_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 430
    .end local v3           #de:Ljava/io/File;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v8           #ie:Ljava/io/File;
    .end local v9           #sales_code:Ljava/lang/String;
    .restart local v6       #fr:Ljava/io/FileReader;
    :goto_0
    if-eqz v6, :cond_1

    .line 431
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 432
    :cond_1
    if-eqz v1, :cond_2

    .line 433
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 437
    .end local v5           #fe:Ljava/io/File;
    :cond_2
    :goto_1
    return-object v0

    .line 420
    .restart local v5       #fe:Ljava/io/File;
    :cond_3
    :try_start_4
    const-string v10, "CscParser"

    const-string v11, "mps_code.dat does not exist"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, "/system/SW_Configuration.xml"

    .line 422
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ID_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 424
    .end local v5           #fe:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 425
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
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

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 430
    if-eqz v6, :cond_4

    .line 431
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 432
    :cond_4
    if-eqz v1, :cond_2

    .line 433
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 434
    :catch_1
    move-exception v10

    goto :goto_1

    .line 426
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    .line 430
    :goto_3
    if-eqz v6, :cond_5

    .line 431
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 432
    :cond_5
    if-eqz v1, :cond_2

    .line 433
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 434
    :catch_3
    move-exception v10

    goto :goto_1

    .line 429
    :catchall_0
    move-exception v10

    .line 430
    :goto_4
    if-eqz v6, :cond_6

    .line 431
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 432
    :cond_6
    if-eqz v1, :cond_7

    .line 433
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 435
    :cond_7
    :goto_5
    throw v10

    .line 434
    :catch_4
    move-exception v11

    goto :goto_5

    .line 429
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fe:Ljava/io/File;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_4

    .line 426
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v10

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_3

    .line 424
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v4

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 434
    :catch_9
    move-exception v10

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/mms/transaction/CscParser;
    .locals 3

    .prologue
    .line 66
    :try_start_0
    sget-object v1, Lcom/android/mms/transaction/CscParser;->sInstance:Lcom/android/mms/transaction/CscParser;

    sget-object v2, Lcom/android/mms/transaction/CscParser;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/mms/transaction/CscParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/android/mms/transaction/CscParser;->sInstance:Lcom/android/mms/transaction/CscParser;

    return-object v1

    .line 67
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 68
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/android/mms/transaction/CscParser;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 75
    :try_start_0
    sget-object v1, Lcom/android/mms/transaction/CscParser;->sInstance:Lcom/android/mms/transaction/CscParser;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/CscParser;->update(Ljava/lang/String;)V

    .line 76
    const-string v1, "CscParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance fileName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    sget-object v1, Lcom/android/mms/transaction/CscParser;->sInstance:Lcom/android/mms/transaction/CscParser;

    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOthersPath()Ljava/lang/String;
    .locals 13

    .prologue
    .line 332
    const-string v8, "/system/csc/others.xml"

    .line 334
    .local v8, others_path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 335
    .local v6, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 339
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v10, "/proc/LinuStoreIII/efs_info"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v5, fe:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 343
    new-instance v7, Ljava/io/FileReader;

    const-string v10, "/proc/LinuStoreIII/efs_info"

    invoke-direct {v7, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 344
    .end local v6           #fr:Ljava/io/FileReader;
    .local v7, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 345
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 347
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

    .line 348
    .local v3, de:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v10, "/system/csc/others.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v2, ce:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 351
    const-string v8, "/system/csc/others.xml"

    .line 363
    :cond_0
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "others_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 375
    .end local v2           #ce:Ljava/io/File;
    .end local v3           #de:Ljava/io/File;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v9           #sales_code:Ljava/lang/String;
    .restart local v6       #fr:Ljava/io/FileReader;
    :goto_0
    if-eqz v6, :cond_1

    .line 376
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 377
    :cond_1
    if-eqz v0, :cond_2

    .line 378
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 383
    .end local v5           #fe:Ljava/io/File;
    :cond_2
    :goto_1
    return-object v8

    .line 365
    .restart local v5       #fe:Ljava/io/File;
    :cond_3
    :try_start_4
    const-string v10, "CscParser"

    const-string v11, "mps_code.dat does not exist"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v8, "/system/csc/others.xml"

    .line 367
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "others_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 369
    .end local v5           #fe:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 370
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
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

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 375
    if-eqz v6, :cond_4

    .line 376
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 377
    :cond_4
    if-eqz v0, :cond_2

    .line 378
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 379
    :catch_1
    move-exception v10

    goto :goto_1

    .line 371
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v10

    .line 375
    :goto_3
    if-eqz v6, :cond_5

    .line 376
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 377
    :cond_5
    if-eqz v0, :cond_2

    .line 378
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 379
    :catch_3
    move-exception v10

    goto :goto_1

    .line 374
    :catchall_0
    move-exception v10

    .line 375
    :goto_4
    if-eqz v6, :cond_6

    .line 376
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 377
    :cond_6
    if-eqz v0, :cond_7

    .line 378
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 380
    :cond_7
    :goto_5
    throw v10

    .line 379
    :catch_4
    move-exception v11

    goto :goto_5

    .line 374
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fe:Ljava/io/File;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_4

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
    goto :goto_4

    .line 371
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_3

    .line 369
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 379
    :catch_9
    move-exception v10

    goto :goto_1
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 11

    .prologue
    .line 232
    const-string v2, "/system/csc/customer.xml"

    .line 233
    .local v2, customer_path:Ljava/lang/String;
    const-string v7, "null"

    .line 236
    .local v7, sales_code:Ljava/lang/String;
    const/4 v5, 0x0

    .line 237
    .local v5, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 241
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v8, "/proc/LinuStoreIII/efs_info"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v4, fe:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 245
    new-instance v6, Ljava/io/FileReader;

    const-string v8, "/proc/LinuStoreIII/efs_info"

    invoke-direct {v6, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 246
    .end local v5           #fr:Ljava/io/FileReader;
    .local v6, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 247
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .line 258
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :goto_0
    if-eqz v5, :cond_0

    .line 259
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 260
    :cond_0
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 265
    .end local v4           #fe:Ljava/io/File;
    :cond_1
    :goto_1
    return-object v7

    .line 249
    .restart local v4       #fe:Ljava/io/File;
    :cond_2
    :try_start_4
    const-string v8, "CscParser"

    const-string v9, "mps_code.dat does not exist"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 252
    .end local v4           #fe:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 253
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v8, "CscParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File not Found exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 258
    if-eqz v5, :cond_3

    .line 259
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 260
    :cond_3
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 262
    :catch_1
    move-exception v8

    goto :goto_1

    .line 254
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    .line 258
    :goto_3
    if-eqz v5, :cond_4

    .line 259
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 260
    :cond_4
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 262
    :catch_3
    move-exception v8

    goto :goto_1

    .line 257
    :catchall_0
    move-exception v8

    .line 258
    :goto_4
    if-eqz v5, :cond_5

    .line 259
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 260
    :cond_5
    if-eqz v0, :cond_6

    .line 261
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 263
    :cond_6
    :goto_5
    throw v8

    .line 262
    :catch_4
    move-exception v9

    goto :goto_5

    .line 257
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fe:Ljava/io/File;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_4

    .line 254
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v8

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_3

    .line 252
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 262
    :catch_9
    move-exception v8

    goto :goto_1
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
    .line 85
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 86
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 89
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, fe:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const-string v3, "CscParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileName + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/CscParser;->mDoc:Lorg/w3c/dom/Document;

    .line 97
    iget-object v3, p0, Lcom/android/mms/transaction/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v3, "CscParser"

    const-string v4, "update(): file not exist"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public GetMediaStore(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .parameter "MediaStr"
    .parameter "mediatype"

    .prologue
    const/4 v1, 0x0

    .line 442
    new-instance v0, Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;-><init>(Lcom/android/mms/transaction/CscParser;Ljava/lang/String;Lcom/android/mms/transaction/CscParser$1;)V

    .line 443
    .local v0, mediastore:Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;
    sput p2, Lcom/android/mms/transaction/CscParser;->Media_Type:I

    .line 450
    const/4 v2, 0x1

    if-ge p2, v2, :cond_0

    .line 451
    const/4 p2, 0x1

    .line 452
    :cond_0
    if-nez p1, :cond_1

    .line 460
    :goto_0
    return-object v1

    .line 455
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/transaction/CscParser$Get_DefaultToneUri_MediaStore;->run()V

    .line 456
    const-string v1, "CscParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetMediaStore : MediaStr =>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v1, "CscParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetMediaStore : mediatype =>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v1, "CscParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetMediaStore : value_uri =>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/CscParser;->value_uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object v1, Lcom/android/mms/transaction/CscParser;->value_uri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 107
    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttrbute(Ljava/lang/String;II)Ljava/lang/String;
    .locals 20
    .parameter "tagPath"
    .parameter "index"
    .parameter "mode"

    .prologue
    .line 186
    const/4 v5, 0x0

    .line 187
    .local v5, attribute:Ljava/lang/String;
    const-string v17, "[.]"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 188
    .local v16, tagSplit:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v12, v0

    .line 190
    .local v12, tagCount:I
    add-int/lit8 v13, v12, -0x1

    .end local v12           #tagCount:I
    .local v13, tagCount:I
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    move v12, v13

    .end local v13           #tagCount:I
    .restart local v12       #tagCount:I
    move-object v6, v5

    .line 226
    .end local v5           #attribute:Ljava/lang/String;
    .local v6, attribute:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 195
    .end local v6           #attribute:Ljava/lang/String;
    .end local v12           #tagCount:I
    .restart local v5       #attribute:Ljava/lang/String;
    .restart local v13       #tagCount:I
    :cond_0
    add-int/lit8 v12, v13, -0x1

    .end local v13           #tagCount:I
    .restart local v12       #tagCount:I
    aget-object v11, v16, v13

    .line 196
    .local v11, tagAttr:Ljava/lang/String;
    aget-object v14, v16, v12

    .line 197
    .local v14, tagList:Ljava/lang/String;
    const/4 v15, 0x0

    .line 199
    .local v15, tagNode:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v12, :cond_2

    .line 200
    if-nez v15, :cond_1

    .line 201
    aget-object v15, v16, v8

    .line 199
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 203
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v16, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 206
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/mms/transaction/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/android/mms/transaction/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 207
    .local v10, nodeList:Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    .line 208
    move/from16 v0, p2

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 209
    .local v9, list:Lorg/w3c/dom/Element;
    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 210
    .local v2, attr:Lorg/w3c/dom/Element;
    invoke-interface {v2, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .end local v2           #attr:Lorg/w3c/dom/Element;
    .end local v9           #list:Lorg/w3c/dom/Element;
    :cond_3
    if-eqz v5, :cond_4

    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 216
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, attrSlash:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v17, v0

    add-int/lit8 v7, v17, -0x1

    .line 218
    .local v7, cntSlash:I
    aget-object v17, v3, v7

    if-eqz v17, :cond_4

    .line 219
    aget-object v17, v3, v7

    const-string v18, "[.]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, attrSplit:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v4, v17

    if-eqz v17, :cond_4

    .line 221
    const/16 v17, 0x0

    aget-object v5, v4, v17

    .line 225
    .end local v3           #attrSlash:[Ljava/lang/String;
    .end local v4           #attrSplit:[Ljava/lang/String;
    .end local v7           #cntSlash:I
    :cond_4
    const-string v17, "CscParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 226
    .end local v5           #attribute:Ljava/lang/String;
    .restart local v6       #attribute:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .parameter "node"

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 168
    const/4 v1, 0x0

    .line 181
    :cond_0
    :goto_0
    return-object v1

    .line 171
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 172
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 174
    .local v1, stringValue:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    .end local v0           #idx:I
    .end local v1           #stringValue:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 115
    if-nez p1, :cond_1

    move-object v0, v3

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 118
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, token:Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v0, v3

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 126
    goto :goto_1
.end method

.method public search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 132
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 133
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 134
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 135
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 136
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 137
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :goto_1
    return-object v0

    .line 135
    .restart local v0       #child:Lorg/w3c/dom/Node;
    .restart local v2       #i:I
    .restart local v3       #n:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    const/4 v5, 0x0

    .line 163
    :goto_0
    return-object v5

    .line 150
    :cond_0
    iget-object v5, p0, Lcom/android/mms/transaction/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 152
    .local v3, list:Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 153
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 154
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 155
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 156
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 157
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 155
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    goto :goto_0
.end method
