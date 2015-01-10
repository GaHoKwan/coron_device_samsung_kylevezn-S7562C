.class public Lcom/samsung/mms/content/MmsPartExport;
.super Ljava/lang/Object;
.source "MmsPartExport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/content/MmsPartExport$PduBodyCache;,
        Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    }
.end annotation


# static fields
.field static final INTENT_EXTRA_FILENAME:Ljava/lang/String; = "filename"

.field static final INTENT_EXTRA_ISTEMPABLE:Ljava/lang/String; = "is_temp"

.field static final INTENT_EXTRA_MSG_URI:Ljava/lang/String; = "msg_uri"

.field static final INTENT_EXTRA_OVERWRITE:Ljava/lang/String; = "overwrite"

.field static final INTENT_EXTRA_PART_URI:Ljava/lang/String; = "part_uri"

.field public static final STORE_DIR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MmsPartExport"

.field public static final TEMP_STORE_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/mms/content/MmsPartExport;->STORE_DIR:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.mms"

    invoke-static {v1}, Landroid/os/Environment;->getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/mms/content/MmsPartExport;->TEMP_STORE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkDownloadDir(Ljava/lang/String;)Z
    .locals 3
    .parameter "dir"

    .prologue
    const/4 v1, 0x1

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, targetDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static copyMedia(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    .locals 5
    .parameter "context"
    .parameter "partUri"
    .parameter "dstFile"
    .parameter "dir"

    .prologue
    .line 93
    invoke-static {p3}, Lcom/samsung/mms/content/MmsPartExport;->checkDownloadDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    sget-object v2, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->NO_SDCARD:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    .line 108
    :cond_0
    :goto_0
    return-object v2

    .line 97
    :cond_1
    sget-object v2, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    .line 99
    .local v2, result:Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/samsung/mms/content/MmsPartExport;->copyPart(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/MmsPartExport"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, errorReason:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "No space left on device"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    sget-object v2, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->OUT_OF_SPACE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    goto :goto_0
.end method

.method private static copyPart(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    .locals 14
    .parameter "context"
    .parameter "partUri"
    .parameter "dstFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v6, 0x0

    .line 114
    .local v6, input:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 116
    .local v4, fout:Ljava/io/FileOutputStream;
    sget-object v8, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->SUCCESS:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    .line 119
    .local v8, result:Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 120
    instance-of v11, v6, Ljava/io/FileInputStream;

    if-eqz v11, :cond_7

    .line 121
    move-object v0, v6

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 122
    .local v3, fin:Ljava/io/FileInputStream;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 123
    .local v7, parentFile:Ljava/io/File;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_2

    .line 124
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v9, s:Ljava/lang/StringBuffer;
    const-string v11, "Mms/MmsPartExport"

    const-string v12, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, " failed!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v11, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 148
    if-eqz v6, :cond_0

    .line 150
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 157
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 159
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 168
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v7           #parentFile:Ljava/io/File;
    .end local v9           #s:Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    return-object v11

    .line 130
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v7       #parentFile:Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 132
    .end local v4           #fout:Ljava/io/FileOutputStream;
    .local v5, fout:Ljava/io/FileOutputStream;
    const/16 v11, 0x1f40

    :try_start_4
    new-array v1, v11, [B

    .line 134
    .local v1, buffer:[B
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, size:I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    .line 135
    const/4 v11, 0x0

    invoke-virtual {v5, v1, v11, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 139
    .end local v1           #buffer:[B
    .end local v10           #size:I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 140
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #fout:Ljava/io/FileOutputStream;
    .end local v7           #parentFile:Ljava/io/File;
    .local v2, e:Ljava/io/IOException;
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v11, "Mms/MmsPartExport"

    const-string v12, "IOException caught while opening or reading stream"

    invoke-static {v11, v12, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 142
    if-eqz v4, :cond_3

    .line 143
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 144
    :cond_3
    new-instance v11, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v6, :cond_4

    .line 150
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 157
    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    .line 159
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 148
    :cond_5
    :goto_6
    throw v11

    .line 137
    .end local v4           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:[B
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v5       #fout:Ljava/io/FileOutputStream;
    .restart local v7       #parentFile:Ljava/io/File;
    .restart local v10       #size:I
    :cond_6
    :try_start_8
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v4, v5

    .line 148
    .end local v1           #buffer:[B
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #fout:Ljava/io/FileOutputStream;
    .end local v7           #parentFile:Ljava/io/File;
    .end local v10           #size:I
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    :cond_7
    if-eqz v6, :cond_8

    .line 150
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 157
    :cond_8
    :goto_7
    if-eqz v4, :cond_9

    .line 159
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_9
    :goto_8
    move-object v11, v8

    .line 168
    goto :goto_1

    .line 146
    .restart local v2       #e:Ljava/io/IOException;
    :cond_a
    :try_start_b
    sget-object v8, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 148
    if-eqz v6, :cond_b

    .line 150
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 157
    :cond_b
    :goto_9
    if-eqz v4, :cond_9

    .line 159
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_8

    .line 160
    :catch_1
    move-exception v2

    .line 162
    const-string v11, "Mms/MmsPartExport"

    const-string v12, "IOException caught while closing stream"

    invoke-static {v11, v12, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    sget-object v8, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    :goto_a
    goto :goto_8

    .line 151
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 153
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "Mms/MmsPartExport"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    sget-object v8, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    goto :goto_5

    .line 160
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 162
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "Mms/MmsPartExport"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    sget-object v8, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    goto :goto_6

    .line 151
    :catch_4
    move-exception v2

    .line 153
    const-string v11, "Mms/MmsPartExport"

    const-string v12, "IOException caught while closing stream"

    invoke-static {v11, v12, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    sget-object v8, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    goto :goto_9

    .line 151
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v7       #parentFile:Ljava/io/File;
    .restart local v9       #s:Ljava/lang/StringBuffer;
    :catch_5
    move-exception v2

    .line 153
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "Mms/MmsPartExport"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    sget-object v8, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    goto/16 :goto_0

    .line 160
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 162
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "Mms/MmsPartExport"

    const-string v13, "IOException caught while closing stream"

    invoke-static {v12, v13, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    sget-object v8, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    goto/16 :goto_1

    .line 151
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v7           #parentFile:Ljava/io/File;
    .end local v9           #s:Ljava/lang/StringBuffer;
    :catch_7
    move-exception v2

    .line 153
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "Mms/MmsPartExport"

    const-string v12, "IOException caught while closing stream"

    invoke-static {v11, v12, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    sget-object v8, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    goto :goto_7

    .line 160
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 162
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "Mms/MmsPartExport"

    const-string v12, "IOException caught while closing stream"

    invoke-static {v11, v12, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    sget-object v8, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    goto :goto_a

    .line 148
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v5       #fout:Ljava/io/FileOutputStream;
    .restart local v7       #parentFile:Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5           #fout:Ljava/io/FileOutputStream;
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 139
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v7           #parentFile:Ljava/io/File;
    :catch_9
    move-exception v2

    goto/16 :goto_3
.end method

.method private static findPduPart(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;
    .locals 7
    .parameter "context"
    .parameter "msgUri"
    .parameter "partUri"

    .prologue
    const/4 v5, 0x0

    .line 319
    invoke-static {p0, p1}, Lcom/samsung/mms/content/MmsPartExport$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 320
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_1

    move-object v2, v5

    .line 335
    :cond_0
    :goto_0
    return-object v2

    .line 324
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 325
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 326
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 327
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    .line 328
    .local v4, type:Ljava/lang/String;
    const-string v6, "text/plain"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "application/smil"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 329
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 325
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #type:Ljava/lang/String;
    :cond_3
    move-object v2, v5

    .line 335
    goto :goto_0
.end method

.method static generateFileName(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "partUri"
    .parameter "msgUri"
    .parameter "fallback"

    .prologue
    .line 174
    invoke-static {p0, p2, p1}, Lcom/samsung/mms/content/MmsPartExport;->findPduPart(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 175
    .local v0, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-static {p0, v0, p3}, Lcom/samsung/mms/content/MmsPartExport;->generateFileName(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static generateFileName(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "part"
    .parameter "fallback"

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 265
    :goto_0
    return-object v0

    .line 182
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v13

    .line 183
    .local v13, location:[B
    if-nez v13, :cond_1

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v13

    .line 186
    :cond_1
    if-nez v13, :cond_2

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v13

    .line 189
    :cond_2
    if-nez v13, :cond_3

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v13

    .line 194
    :cond_3
    if-nez v13, :cond_b

    .line 195
    move-object/from16 v10, p2

    .line 199
    .local v10, fileName:Ljava/lang/String;
    :goto_1
    const-string v0, "<"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 202
    :cond_4
    const-string v0, ">"

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 205
    :cond_5
    const-string v0, "cid:"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    const-string v0, "cid:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 209
    :cond_6
    new-instance v14, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    .line 210
    .local v14, type:Ljava/lang/String;
    invoke-static {v14}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 213
    .local v2, dataUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 216
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 218
    .local v8, drmFileName:Ljava/lang/String;
    if-nez v8, :cond_7

    .line 219
    const-string v0, "cl"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 222
    :cond_7
    move-object v10, v8

    .line 224
    if-eqz v7, :cond_8

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 232
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #drmFileName:Ljava/lang/String;
    :cond_8
    const/16 v0, 0x2e

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .local v12, index:I
    const/4 v0, -0x1

    if-ne v12, v0, :cond_d

    .line 233
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, extension:Ljava/lang/String;
    :goto_2
    const-string v0, "Mms/MmsPartExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extension"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {v14}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 241
    const-string v0, "dcf"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 242
    const-string v9, "dcf"

    .line 246
    :cond_9
    if-nez v9, :cond_a

    .line 247
    const-string v0, "text/x-vCard"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 248
    const-string v9, "vcf"

    .line 259
    :cond_a
    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 260
    move-object v11, v10

    .line 265
    .local v11, fileWholeName:Ljava/lang/String;
    :goto_4
    invoke-static {v11}, Lcom/samsung/mms/content/MmsPartExport;->normalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 197
    .end local v9           #extension:Ljava/lang/String;
    .end local v10           #fileName:Ljava/lang/String;
    .end local v11           #fileWholeName:Ljava/lang/String;
    .end local v12           #index:I
    .end local v14           #type:Ljava/lang/String;
    :cond_b
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/lang/String;-><init>([B)V

    .restart local v10       #fileName:Ljava/lang/String;
    goto/16 :goto_1

    .line 224
    .restart local v2       #dataUri:Landroid/net/Uri;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v14       #type:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_c

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_c
    throw v0

    .line 235
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v12       #index:I
    :cond_d
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 236
    .restart local v9       #extension:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 249
    :cond_e
    const-string v0, "text/x-vCalendar"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 250
    const-string v9, "vcs"

    goto :goto_3

    .line 251
    :cond_f
    const-string v0, "text/x-vNote"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 252
    const-string v9, "vnt"

    goto :goto_3

    .line 253
    :cond_10
    const-string v0, "text/x-vtodo"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 254
    const-string v9, "vts"

    goto :goto_3

    .line 262
    :cond_11
    const-string v0, "."

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #fileWholeName:Ljava/lang/String;
    goto :goto_4
.end method

.method static getFileStreamPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "dirName"
    .parameter "fileName"

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .parameter "msgUri"
    .parameter "getAll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-static {p0, p1}, Lcom/samsung/mms/content/MmsPartExport$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 353
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_1

    .line 381
    :cond_0
    return-object v9

    .line 357
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, fallbackName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v8

    .line 360
    .local v8, partNum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_0

    .line 361
    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 362
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .line 363
    .local v10, type:Ljava/lang/String;
    const-string v11, "text/plain"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "application/smil"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 364
    if-nez p2, :cond_3

    invoke-static {v10}, Lcom/samsung/mms/content/MmsPartExport;->isVContentType(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 360
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    :cond_3
    invoke-static {p0, v7, v2}, Lcom/samsung/mms/content/MmsPartExport;->generateFileName(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 370
    .local v5, model:Lcom/android/mms/model/AttachmentModel;
    :try_start_0
    new-instance v6, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v6, p0, v10, v3, v11}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #model:Lcom/android/mms/model/AttachmentModel;
    .local v6, model:Lcom/android/mms/model/AttachmentModel;
    move-object v5, v6

    .line 375
    .end local v6           #model:Lcom/android/mms/model/AttachmentModel;
    .restart local v5       #model:Lcom/android/mms/model/AttachmentModel;
    :goto_2
    if-eqz v5, :cond_2

    .line 376
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v11, "Mms/MmsPartExport"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static isInvalidFilenameCharacter(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 298
    sparse-switch p0, :sswitch_data_0

    .line 312
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 310
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x22 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private static isTaskSpawnedFromMessaging()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 448
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 449
    .local v0, am:Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v5

    .line 452
    :cond_1
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 453
    .local v2, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 456
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, baseActivity:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 460
    const-string v3, "com.android.mms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MmsPartExportDialogActivityAlien"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    move v5, v3

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method private static isVContentType(Ljava/lang/String;)Z
    .locals 1
    .parameter "contentType"

    .prologue
    .line 385
    const-string v0, "text/x-vCard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vCalendar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vNote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vtodo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static normalizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileName"

    .prologue
    const/4 v3, 0x1

    .line 269
    if-nez p0, :cond_1

    .line 270
    const/4 v0, 0x0

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 272
    :cond_1
    invoke-static {p0}, Lcom/samsung/mms/content/MmsPartExport;->replaceInvalidFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, result:Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 275
    const-string v0, "_"

    goto :goto_0

    .line 277
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static queueRenameDialog(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "msgUri"
    .parameter "partUri"
    .parameter "oldFileName"

    .prologue
    .line 435
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/mms/content/MmsPartExportDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/mms/content/MmsPartExport;->isTaskSpawnedFromMessaging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    const-class v1, Lcom/samsung/mms/content/MmsPartExportDialogActivityAlien;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 439
    :cond_0
    const-string v1, "msg_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 440
    const-string v1, "part_uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 441
    const-string v1, "filename"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 443
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 444
    return-void
.end method

.method static queueSaveRequest(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 3
    .parameter "msgUri"
    .parameter "partUri"
    .parameter "fileName"
    .parameter "overwrite"

    .prologue
    .line 423
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 424
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/mms/content/MmsPartExportService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "msg_uri"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 426
    const-string v2, "part_uri"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 427
    const-string v2, "filename"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v2, "overwrite"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 431
    return-void
.end method

.method public static removeTempDir()V
    .locals 3

    .prologue
    .line 501
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/mms/content/MmsPartExport$1;

    invoke-direct {v1}, Lcom/samsung/mms/content/MmsPartExport$1;-><init>()V

    const-string v2, "removeTemporaryfile"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 515
    return-void
.end method

.method static replaceInvalidFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "fileName"

    .prologue
    .line 283
    move-object v3, p0

    .line 284
    .local v3, result:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 286
    .local v1, filenameLength:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 287
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 288
    .local v0, character:C
    invoke-static {v0}, Lcom/samsung/mms/content/MmsPartExport;->isInvalidFilenameCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 286
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v0           #character:C
    :cond_1
    const-string v4, "Mms/MmsPartExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replaceInvalidFilename(),from="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",to="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-object v3
.end method

.method public static savePart(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .parameter "msgUri"
    .parameter "partUri"

    .prologue
    .line 472
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/mms/content/MmsPartExport;->queueSaveRequest(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 473
    return-void
.end method

.method public static saveParts(Landroid/net/Uri;Ljava/util/List;)V
    .locals 4
    .parameter "msgUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p1, partsUriList:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 484
    .local v1, partUri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/samsung/mms/content/MmsPartExport;->queueSaveRequest(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 486
    .end local v1           #partUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public static saveTempFilePart(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "partUri"
    .parameter "fileName"

    .prologue
    .line 489
    sget-object v2, Lcom/samsung/mms/content/MmsPartExport;->TEMP_STORE_DIR:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/samsung/mms/content/MmsPartExport;->getFileStreamPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 490
    .local v0, dstFile:Ljava/io/File;
    sget-object v1, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->FAILURE:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    .line 492
    .local v1, result:Lcom/samsung/mms/content/MmsPartExport$ExportResult;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    sget-object v2, Lcom/samsung/mms/content/MmsPartExport;->TEMP_STORE_DIR:Ljava/lang/String;

    invoke-static {p0, p1, v0, v2}, Lcom/samsung/mms/content/MmsPartExport;->copyMedia(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    move-result-object v1

    .line 497
    :goto_0
    sget-object v2, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->SUCCESS:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 495
    :cond_0
    sget-object v1, Lcom/samsung/mms/content/MmsPartExport$ExportResult;->SUCCESS:Lcom/samsung/mms/content/MmsPartExport$ExportResult;

    goto :goto_0

    .line 497
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
