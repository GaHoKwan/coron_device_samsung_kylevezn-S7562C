.class Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
.super Ljava/lang/Thread;
.source "MessageDatabaseBackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageDatabaseBackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundWorkThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEncPathName:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPathName:Ljava/lang/String;

.field private mWorkMode:I

.field private mZipPathName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "h"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mContext:Landroid/content/Context;

    .line 329
    iput-object p3, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    .line 330
    return-void
.end method

.method private CreateSecurityKey(Ljava/lang/String;)[B
    .locals 8
    .parameter "szKey"

    .prologue
    .line 584
    const/16 v5, 0x10

    .line 585
    .local v5, radix:I
    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    const/4 v1, 0x2

    .line 586
    .local v1, divLen:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 587
    .local v4, lenKeyString:I
    rem-int v6, v4, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 588
    const/4 v0, 0x0

    .line 598
    :cond_0
    return-object v0

    .line 585
    .end local v1           #divLen:I
    .end local v4           #lenKeyString:I
    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    .line 590
    .restart local v1       #divLen:I
    .restart local v4       #lenKeyString:I
    :cond_2
    div-int/2addr v4, v1

    .line 592
    new-array v0, v4, [B

    .line 593
    .local v0, byteKey:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 594
    mul-int v3, v2, v1

    .line 595
    .local v3, idx:I
    add-int v6, v3, v1

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private DecryptFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "szSrcPathName"
    .parameter "szDestPathName"

    .prologue
    .line 570
    const/4 v0, 0x1

    .line 572
    .local v0, bReturn:Z
    const-string v4, "12345678901234567890123456789012"

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CreateSecurityKey(Ljava/lang/String;)[B

    move-result-object v1

    .line 573
    .local v1, byteKey:[B
    if-nez v1, :cond_0

    .line 574
    const/4 v4, 0x0

    .line 579
    :goto_0
    return v4

    .line 576
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 577
    .local v3, key:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Ljava/security/Key;Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;)V

    .line 578
    .local v2, cryptoClass:Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->Decription(Ljava/io/File;Ljava/io/File;)Z
    invoke-static {v2, v4, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->access$500(Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    move v4, v0

    .line 579
    goto :goto_0
.end method

.method private EncryptFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "szSrcPathName"
    .parameter "szDestPathName"

    .prologue
    .line 557
    const/4 v0, 0x1

    .line 559
    .local v0, bReturn:Z
    const-string v4, "12345678901234567890123456789012"

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->CreateSecurityKey(Ljava/lang/String;)[B

    move-result-object v1

    .line 560
    .local v1, byteKey:[B
    if-nez v1, :cond_0

    .line 561
    const/4 v4, 0x0

    .line 566
    :goto_0
    return v4

    .line 563
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 564
    .local v3, key:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;

    iget-object v4, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Ljava/security/Key;Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;)V

    .line 565
    .local v2, cryptoClass:Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->Encryption(Ljava/io/File;Ljava/io/File;)Z
    invoke-static {v2, v4, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;->access$400(Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    move v4, v0

    .line 566
    goto :goto_0
.end method

.method private ExcuteZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z
    .locals 17
    .parameter "zos"
    .parameter "srcPathName"
    .parameter "fileName"

    .prologue
    .line 475
    const/4 v4, 0x1

    .line 477
    .local v4, bReturn:Z
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 478
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 479
    .local v3, arrayFile:[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 480
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v15, v3

    if-ge v10, v15, :cond_2

    .line 481
    aget-object v15, v3, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ExcuteZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 482
    const/4 v4, 0x0

    .line 480
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 487
    .end local v3           #arrayFile:[Ljava/io/File;
    .end local v10           #i:I
    :cond_1
    const/4 v5, 0x0

    .line 489
    .local v5, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 491
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .local v6, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 492
    .local v12, szFilePath:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 493
    .local v13, szZipFileName:Ljava/lang/String;
    new-instance v14, Ljava/util/zip/ZipEntry;

    invoke-direct {v14, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 494
    .local v14, zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 495
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 497
    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$200()I

    move-result v15

    new-array v7, v15, [B

    .line 498
    .local v7, buffer:[B
    const/4 v11, 0x0

    .line 499
    .local v11, readCnt:I
    :goto_1
    const/4 v15, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$200()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v7, v15, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    const/4 v15, -0x1

    if-eq v11, v15, :cond_3

    .line 500
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v15, v11}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 503
    .end local v7           #buffer:[B
    .end local v11           #readCnt:I
    .end local v12           #szFilePath:Ljava/lang/String;
    .end local v13           #szZipFileName:Ljava/lang/String;
    .end local v14           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v9

    move-object v5, v6

    .line 504
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .local v9, ex:Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    .line 507
    if-eqz v5, :cond_2

    .line 508
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 516
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #ex:Ljava/lang/Exception;
    :cond_2
    :goto_3
    return v4

    .line 502
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #buffer:[B
    .restart local v11       #readCnt:I
    .restart local v12       #szFilePath:Ljava/lang/String;
    .restart local v13       #szZipFileName:Ljava/lang/String;
    .restart local v14       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 507
    if-eqz v6, :cond_2

    .line 508
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 509
    :catch_1
    move-exception v8

    .line 510
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 511
    const/4 v4, 0x0

    .line 513
    goto :goto_3

    .line 509
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #buffer:[B
    .end local v8           #e:Ljava/io/IOException;
    .end local v11           #readCnt:I
    .end local v12           #szFilePath:Ljava/lang/String;
    .end local v13           #szZipFileName:Ljava/lang/String;
    .end local v14           #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 510
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 511
    const/4 v4, 0x0

    .line 513
    goto :goto_3

    .line 506
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 507
    :goto_4
    if-eqz v5, :cond_4

    .line 508
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 512
    :cond_4
    :goto_5
    throw v15

    .line 509
    :catch_3
    move-exception v8

    .line 510
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 511
    const/4 v4, 0x0

    goto :goto_5

    .line 506
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v15

    move-object v5, v6

    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 503
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method private MessageDbToZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "srcPathName"
    .parameter "zipPathName"

    .prologue
    .line 437
    const/4 v0, 0x1

    .line 439
    .local v0, bReturn:Z
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .local v7, srcFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v10

    if-nez v10, :cond_0

    .line 441
    const/4 v10, 0x0

    .line 470
    :goto_0
    return v10

    .line 444
    :cond_0
    const/4 v5, 0x0

    .line 445
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 446
    .local v1, bos:Ljava/io/BufferedOutputStream;
    const/4 v8, 0x0

    .line 448
    .local v8, zos:Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 449
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 450
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .local v2, bos:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v9, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b

    .line 452
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .local v9, zos:Ljava/util/zip/ZipOutputStream;
    const/16 v10, 0x8

    :try_start_3
    invoke-virtual {v9, v10}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 453
    invoke-direct {p0, v9, p1, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ExcuteZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c

    move-result v0

    .line 459
    if-eqz v9, :cond_1

    .line 460
    :try_start_4
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 462
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 463
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 465
    :cond_2
    :goto_2
    if-eqz v6, :cond_9

    .line 466
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_3
    move v10, v0

    .line 470
    goto :goto_0

    .line 460
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v4

    .local v4, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1

    .line 463
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_2

    .line 466
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 455
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 456
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 457
    const/4 v0, 0x0

    .line 459
    if-eqz v8, :cond_4

    .line 460
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 462
    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 463
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 465
    :cond_5
    :goto_6
    if-eqz v5, :cond_3

    .line 466
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    :catch_4
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_3

    .line 460
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_5

    .line 463
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_6

    .line 459
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v8, :cond_6

    .line 460
    :try_start_b
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 462
    :cond_6
    :goto_8
    if-eqz v1, :cond_7

    .line 463
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 465
    :cond_7
    :goto_9
    if-eqz v5, :cond_8

    .line 466
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_8
    :goto_a
    throw v10

    .line 460
    :catch_7
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_8

    .line 463
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_9

    .line 466
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_9
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_a

    .line 459
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v10

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 455
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v3

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v3

    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catch_c
    move-exception v3

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v2       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :cond_9
    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v1, v2

    .end local v2           #bos:Ljava/io/BufferedOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public ConvertEncryptedFileToZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "szEncPathName"
    .parameter "szZipPathName"

    .prologue
    .line 536
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DecryptFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 537
    .local v0, ret:Z
    const-string v1, "MessageDatabaseBackupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecryptFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return v0
.end method

.method public ConvertZipToEncryptedFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "szZipPathName"
    .parameter "szEncPathName"

    .prologue
    .line 523
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->EncryptFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 524
    .local v1, ret:Z
    if-eqz v1, :cond_0

    .line 526
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, deleteFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 531
    .end local v0           #deleteFile:Ljava/io/File;
    :cond_0
    const-string v2, "MessageDatabaseBackupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EncryptFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return v1
.end method

.method public DeleteDir(Ljava/lang/String;)V
    .locals 7
    .parameter "szPath"

    .prologue
    .line 542
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 544
    .local v2, childFileList:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 545
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 546
    .local v1, childFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 547
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DeleteDir(Ljava/lang/String;)V

    .line 545
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 553
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #childFile:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 554
    return-void
.end method

.method public MessageDbBackup(Ljava/lang/String;)Z
    .locals 10
    .parameter "pathname"

    .prologue
    .line 417
    const/4 v6, 0x1

    .line 419
    .local v6, bReturn:Z
    const-string v0, "content://mms-sms/msgbackup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 420
    .local v9, uriContent:Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "target_directory_path"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 422
    .local v1, uriBackup:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 424
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 429
    if-eqz v7, :cond_0

    .line 430
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 433
    :cond_0
    :goto_0
    return v6

    .line 425
    :catch_0
    move-exception v8

    .line 426
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MessageDatabaseBackupActivity"

    const-string v2, "MessageDbBackup Error"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    const/4 v6, 0x0

    .line 429
    if-eqz v7, :cond_0

    .line 430
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 429
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 430
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 344
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    if-nez v8, :cond_0

    .line 412
    :goto_0
    return-void

    .line 346
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 348
    .local v4, obj:Landroid/os/Bundle;
    iget v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mWorkMode:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 351
    :pswitch_0
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$100(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 352
    .local v3, msg_start:Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 353
    const-string v8, "filename"

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    const/4 v5, 0x1

    .line 359
    .local v5, ret:Z
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDbBackup(Ljava/lang/String;)Z

    move-result v5

    .line 361
    if-eqz v5, :cond_1

    .line 362
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->MessageDbToZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 365
    :cond_1
    if-eqz v5, :cond_2

    .line 366
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ConvertZipToEncryptedFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 369
    :cond_2
    if-eqz v5, :cond_3

    .line 370
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, deleteDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 372
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->DeleteDir(Ljava/lang/String;)V

    .line 375
    .end local v0           #deleteDirectory:Ljava/io/File;
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$100(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 376
    .local v2, msg_complete:Landroid/os/Message;
    if-eqz v5, :cond_4

    :goto_1
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 377
    const-string v6, "filename"

    iget-object v7, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 379
    iget-object v6, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    move v6, v7

    .line 376
    goto :goto_1

    .line 386
    .end local v2           #msg_complete:Landroid/os/Message;
    .end local v3           #msg_start:Landroid/os/Message;
    .end local v5           #ret:Z
    :pswitch_1
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$100(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 387
    .restart local v3       #msg_start:Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 388
    const-string v8, "filename"

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 392
    const/4 v5, 0x1

    .line 393
    .restart local v5       #ret:Z
    new-instance v1, Ljava/io/File;

    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 395
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->ConvertEncryptedFileToZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 400
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$100(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 401
    .restart local v2       #msg_complete:Landroid/os/Message;
    iput v11, v2, Landroid/os/Message;->what:I

    .line 402
    if-eqz v5, :cond_6

    :goto_3
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 403
    const-string v6, "filename"

    iget-object v7, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    iget-object v6, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 397
    .end local v2           #msg_complete:Landroid/os/Message;
    :cond_5
    const-string v8, "MessageDatabaseBackupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "szEncPathName("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") isn\'t founded "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .restart local v2       #msg_complete:Landroid/os/Message;
    :cond_6
    move v6, v7

    .line 402
    goto :goto_3

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "workmode"
    .parameter "pathname"
    .parameter "filename"

    .prologue
    .line 334
    iput p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mWorkMode:I

    .line 335
    iput-object p2, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mPathName:Ljava/lang/String;

    .line 336
    iput-object p3, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mFileName:Ljava/lang/String;

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/MMS_BACKUP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mZipPathName:Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/MMS_BACKUP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".edb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->mEncPathName:Ljava/lang/String;

    .line 339
    return-void
.end method
