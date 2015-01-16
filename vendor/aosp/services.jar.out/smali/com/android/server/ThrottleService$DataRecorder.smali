.class Lcom/android/server/ThrottleService$DataRecorder;
.super Ljava/lang/Object;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThrottleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataRecorder"
.end annotation


# static fields
.field private static final DATA_FILE_VERSION:I = 0x1

.field private static final MAX_SIMS_SUPPORTED:I = 0x3


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentPeriod:I

.field mImsi:Ljava/lang/String;

.field mParent:Lcom/android/server/ThrottleService;

.field mPeriodCount:I

.field mPeriodEnd:Ljava/util/Calendar;

.field mPeriodRxData:[J

.field mPeriodStart:Ljava/util/Calendar;

.field mPeriodTxData:[J

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/ThrottleService;)V
    .locals 2
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    .line 805
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mContext:Landroid/content/Context;

    .line 806
    iput-object p2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    .line 808
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 810
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 811
    const/4 v0, 0x6

    :try_start_0
    iput v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    .line 812
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    .line 813
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    .line 815
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 816
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 818
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->retrieve()V

    .line 819
    monitor-exit v1

    .line 820
    return-void

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkAndDeleteLRUDataFile(Ljava/io/File;)V
    .locals 11
    .parameter "dir"

    .prologue
    const/4 v10, 0x3

    .line 946
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 948
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-gt v6, v10, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    const-string v6, "ThrottleService"

    const-string v7, "Too many data files"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_2
    const/4 v5, 0x0

    .line 952
    .local v5, oldest:Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 953
    .local v1, f:Ljava/io/File;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 954
    :cond_3
    move-object v5, v1

    .line 952
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 957
    .end local v1           #f:Ljava/io/File;
    :cond_5
    if-eqz v5, :cond_0

    .line 958
    const-string v6, "ThrottleService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " deleting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 960
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 961
    array-length v6, v2

    if-gt v6, v10, :cond_2

    goto :goto_0
.end method

.method private checkForSubscriberId()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    .line 937
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 940
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->retrieve()V

    goto :goto_0
.end method

.method private getDataFile()Ljava/io/File;
    .locals 7

    .prologue
    .line 914
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 915
    .local v0, dataDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "system/throttle"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 916
    .local v4, throttleDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 917
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 919
    .local v3, mImsi:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 920
    invoke-direct {p0, v4}, Lcom/android/server/ThrottleService$DataRecorder;->useMRUFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 927
    .local v1, dataFile:Ljava/io/File;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 928
    invoke-direct {p0, v4}, Lcom/android/server/ThrottleService$DataRecorder;->checkAndDeleteLRUDataFile(Ljava/io/File;)V

    .line 929
    return-object v1

    .line 923
    .end local v1           #dataFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, imsiHash:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #dataFile:Ljava/io/File;
    goto :goto_0
.end method

.method private record()V
    .locals 7

    .prologue
    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 994
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 995
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 997
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v2, v5, :cond_0

    .line 999
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1000
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1002
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v2, v5, :cond_1

    .line 1003
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1004
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1006
    :cond_1
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1007
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1009
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1012
    const/4 v3, 0x0

    .line 1014
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->getDataFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1020
    if-eqz v4, :cond_2

    .line 1022
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_2
    move-object v3, v4

    .line 1026
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_3
    :goto_3
    return-void

    .line 1016
    :catch_0
    move-exception v1

    .line 1017
    .local v1, e:Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v5, "ThrottleService"

    const-string v6, "Error writing data file"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1020
    if-eqz v3, :cond_3

    .line 1022
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 1023
    :catch_1
    move-exception v5

    goto :goto_3

    .line 1020
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_4

    .line 1022
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1020
    :cond_4
    :goto_6
    throw v5

    .line 1023
    :catch_2
    move-exception v6

    goto :goto_6

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v5

    goto :goto_2

    .line 1020
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 1016
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4
.end method

.method private retrieve()V
    .locals 21

    .prologue
    .line 1030
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ThrottleService$DataRecorder;->zeroData(I)V

    .line 1032
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ThrottleService$DataRecorder;->getDataFile()Ljava/io/File;

    move-result-object v6

    .line 1034
    .local v6, f:Ljava/io/File;
    const/16 v16, 0x0

    .line 1036
    .local v16, s:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v2, v0, [B

    .line 1037
    .local v2, buffer:[B
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    .end local v16           #s:Ljava/io/FileInputStream;
    .local v17, s:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1043
    if-eqz v17, :cond_0

    .line 1045
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1049
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 1050
    .local v4, data:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_4

    .line 1051
    :cond_1
    const-string v18, "ThrottleService"

    const-string v19, "data file empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v17

    .line 1106
    .end local v2           #buffer:[B
    .end local v4           #data:Ljava/lang/String;
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-void

    .line 1039
    :catch_0
    move-exception v5

    .line 1040
    .local v5, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v18, "ThrottleService"

    const-string v19, "Error reading data file"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1043
    if-eqz v16, :cond_2

    .line 1045
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1046
    :catch_1
    move-exception v18

    goto :goto_1

    .line 1043
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_3
    if-eqz v16, :cond_3

    .line 1045
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1043
    :cond_3
    :goto_4
    throw v18

    .line 1054
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v2       #buffer:[B
    .restart local v4       #data:Ljava/lang/String;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :cond_4
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1055
    .local v8, parsed:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1056
    .local v9, parsedUsed:I
    array-length v0, v8

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 1057
    const-string v18, "ThrottleService"

    const-string v19, "reading data file with insufficient length - ignoring"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v17

    .line 1058
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto :goto_1

    .line 1068
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :cond_5
    add-int/lit8 v10, v9, 0x1

    .end local v9           #parsedUsed:I
    .local v10, parsedUsed:I
    :try_start_6
    aget-object v18, v8, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 1069
    const-string v18, "ThrottleService"

    const-string v19, "reading data file with bad version - ignoring"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v16, v17

    .line 1070
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto :goto_1

    .line 1073
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :cond_6
    add-int/lit8 v9, v10, 0x1

    .end local v10           #parsedUsed:I
    .restart local v9       #parsedUsed:I
    :try_start_7
    aget-object v18, v8, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1074
    .local v11, periodCount:I
    array-length v0, v8

    move/from16 v18, v0

    mul-int/lit8 v19, v11, 0x2

    add-int/lit8 v19, v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 1075
    const-string v18, "ThrottleService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "reading data file with bad length ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v8

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " != "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    mul-int/lit8 v20, v11, 0x2

    add-int/lit8 v20, v20, 0x5

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") - ignoring"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v17

    .line 1077
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1079
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :cond_7
    new-array v13, v11, [J

    .line 1080
    .local v13, periodRxData:[J
    const/4 v7, 0x0

    .local v7, i:I
    move v10, v9

    .end local v9           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    :goto_5
    if-ge v7, v11, :cond_8

    .line 1081
    add-int/lit8 v9, v10, 0x1

    .end local v10           #parsedUsed:I
    .restart local v9       #parsedUsed:I
    aget-object v18, v8, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1080
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    goto :goto_5

    .line 1083
    :cond_8
    :try_start_8
    new-array v15, v11, [J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1084
    .local v15, periodTxData:[J
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v11, :cond_9

    .line 1085
    add-int/lit8 v9, v10, 0x1

    .end local v10           #parsedUsed:I
    .restart local v9       #parsedUsed:I
    :try_start_9
    aget-object v18, v8, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v15, v7

    .line 1084
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    goto :goto_6

    .line 1088
    :cond_9
    add-int/lit8 v9, v10, 0x1

    .end local v10           #parsedUsed:I
    .restart local v9       #parsedUsed:I
    aget-object v18, v8, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1090
    .local v3, currentPeriod:I
    new-instance v14, Ljava/util/GregorianCalendar;

    invoke-direct {v14}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1091
    .local v14, periodStart:Ljava/util/Calendar;
    add-int/lit8 v10, v9, 0x1

    .end local v9           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    :try_start_a
    aget-object v18, v8, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1092
    new-instance v12, Ljava/util/GregorianCalendar;

    invoke-direct {v12}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1093
    .local v12, periodEnd:Ljava/util/Calendar;
    add-int/lit8 v9, v10, 0x1

    .end local v10           #parsedUsed:I
    .restart local v9       #parsedUsed:I
    :try_start_b
    aget-object v18, v8, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1099
    :try_start_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    .line 1100
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    .line 1101
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    .line 1102
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 1103
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 1104
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 1105
    monitor-exit v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v16, v17

    .line 1106
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1094
    .end local v3           #currentPeriod:I
    .end local v7           #i:I
    .end local v9           #parsedUsed:I
    .end local v11           #periodCount:I
    .end local v12           #periodEnd:Ljava/util/Calendar;
    .end local v13           #periodRxData:[J
    .end local v14           #periodStart:Ljava/util/Calendar;
    .end local v15           #periodTxData:[J
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v10       #parsedUsed:I
    .restart local v17       #s:Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    move v9, v10

    .line 1095
    .end local v10           #parsedUsed:I
    .local v5, e:Ljava/lang/Exception;
    .restart local v9       #parsedUsed:I
    :goto_7
    const-string v18, "ThrottleService"

    const-string v19, "Error parsing data file - ignoring"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v17

    .line 1096
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1105
    .end local v5           #e:Ljava/lang/Exception;
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v3       #currentPeriod:I
    .restart local v7       #i:I
    .restart local v11       #periodCount:I
    .restart local v12       #periodEnd:Ljava/util/Calendar;
    .restart local v13       #periodRxData:[J
    .restart local v14       #periodStart:Ljava/util/Calendar;
    .restart local v15       #periodTxData:[J
    .restart local v17       #s:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v18

    :try_start_d
    monitor-exit v19
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v18

    .line 1046
    .end local v2           #buffer:[B
    .end local v3           #currentPeriod:I
    .end local v4           #data:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #parsed:[Ljava/lang/String;
    .end local v9           #parsedUsed:I
    .end local v11           #periodCount:I
    .end local v12           #periodEnd:Ljava/util/Calendar;
    .end local v13           #periodRxData:[J
    .end local v14           #periodStart:Ljava/util/Calendar;
    .end local v15           #periodTxData:[J
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    :catch_3
    move-exception v19

    goto/16 :goto_4

    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v2       #buffer:[B
    .restart local v17       #s:Ljava/io/FileInputStream;
    :catch_4
    move-exception v18

    goto/16 :goto_0

    .line 1094
    .restart local v4       #data:Ljava/lang/String;
    .restart local v8       #parsed:[Ljava/lang/String;
    .restart local v9       #parsedUsed:I
    :catch_5
    move-exception v5

    goto :goto_7

    .line 1043
    .end local v4           #data:Ljava/lang/String;
    .end local v8           #parsed:[Ljava/lang/String;
    .end local v9           #parsedUsed:I
    :catchall_2
    move-exception v18

    move-object/from16 v16, v17

    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1039
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private setPeriodEnd(Ljava/util/Calendar;)V
    .locals 2
    .parameter "end"

    .prologue
    .line 867
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 868
    :try_start_0
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 869
    monitor-exit v1

    .line 870
    return-void

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPeriodStart(Ljava/util/Calendar;)V
    .locals 2
    .parameter "start"

    .prologue
    .line 879
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 880
    :try_start_0
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 881
    monitor-exit v1

    .line 882
    return-void

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private useMRUFile(Ljava/io/File;)Ljava/io/File;
    .locals 10
    .parameter "dir"

    .prologue
    .line 965
    const/4 v5, 0x0

    .line 966
    .local v5, newest:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 968
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 969
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 970
    .local v1, f:Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 971
    :cond_0
    move-object v5, v1

    .line 969
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 975
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    if-nez v5, :cond_3

    .line 976
    new-instance v5, Ljava/io/File;

    .end local v5           #newest:Ljava/io/File;
    const-string v6, "temp"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 978
    .restart local v5       #newest:Ljava/io/File;
    :cond_3
    return-object v5
.end method

.method private zeroData(I)V
    .locals 5
    .parameter "field"

    .prologue
    .line 891
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v2

    .line 892
    const/4 v0, 0x0

    .local v0, period:I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v0, v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v0

    .line 894
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v0

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 896
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 897
    monitor-exit v2

    .line 899
    return-void

    .line 897
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addData(JJ)V
    .locals 5
    .parameter "bytesRead"
    .parameter "bytesWritten"

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->checkForSubscriberId()V

    .line 906
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    aget-wide v3, v0, v2

    add-long/2addr v3, p1

    aput-wide v3, v0, v2

    .line 908
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    aget-wide v3, v0, v2

    add-long/2addr v3, p3

    aput-wide v3, v0, v2

    .line 909
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->record()V

    .line 911
    return-void

    .line 909
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPeriodCount()I
    .locals 2

    .prologue
    .line 885
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 886
    :try_start_0
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    monitor-exit v1

    return v0

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeriodEnd()J
    .locals 4

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 863
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPeriodRx(I)J
    .locals 3
    .parameter "which"

    .prologue
    .line 1109
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v2

    .line 1110
    :try_start_0
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-le p1, v0, :cond_0

    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 1113
    :goto_0
    return-wide v0

    .line 1111
    :cond_0
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    sub-int p1, v0, p1

    .line 1112
    if-gez p1, :cond_1

    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    add-int/2addr p1, v0

    .line 1113
    :cond_1
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    aget-wide v0, v0, p1

    monitor-exit v2

    goto :goto_0

    .line 1114
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeriodStart()J
    .locals 4

    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPeriodTx(I)J
    .locals 3
    .parameter "which"

    .prologue
    .line 1117
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v2

    .line 1118
    :try_start_0
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-le p1, v0, :cond_0

    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 1121
    :goto_0
    return-wide v0

    .line 1119
    :cond_0
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    sub-int p1, v0, p1

    .line 1120
    if-gez p1, :cond_1

    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    add-int/2addr p1, v0

    .line 1121
    :cond_1
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    aget-wide v0, v0, p1

    monitor-exit v2

    goto :goto_0

    .line 1122
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setNextPeriod(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->checkForSubscriberId()V

    .line 825
    const/4 v0, 0x1

    .line 827
    .local v0, startNewPeriod:Z
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    const/4 v0, 0x0

    .line 854
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/ThrottleService$DataRecorder;->setPeriodStart(Ljava/util/Calendar;)V

    .line 855
    invoke-direct {p0, p2}, Lcom/android/server/ThrottleService$DataRecorder;->setPeriodEnd(Ljava/util/Calendar;)V

    .line 856
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->record()V

    .line 857
    return v0

    .line 847
    :cond_0
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v2

    .line 848
    :try_start_0
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 849
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-lt v1, v3, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 850
    :cond_1
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    .line 851
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    .line 852
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
