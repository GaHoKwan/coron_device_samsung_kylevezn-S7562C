.class Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;
.super Ljava/lang/Thread;
.source "RemoteDrmChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/RemoteDrmChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmCheckThread"
.end annotation


# instance fields
.field private mExtension:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mSelectedItemUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/allshare/extension/RemoteDrmChecker;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/extension/RemoteDrmChecker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "selectedItemUri"
    .parameter "mExtension"
    .parameter "mimeType"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/sec/android/allshare/extension/RemoteDrmChecker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mSelectedItemUri:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mExtension:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mMimeType:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/sec/android/allshare/extension/RemoteDrmChecker;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I
    invoke-static/range {v20 .. v21}, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->access$002(Lcom/sec/android/allshare/extension/RemoteDrmChecker;I)I

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, client:Landroid/net/http/AndroidHttpClient;
    const/4 v7, 0x0

    .line 114
    .local v7, entity:Lorg/apache/http/HttpEntity;
    const/4 v15, 0x0

    .line 115
    .local v15, inStream:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 117
    .local v11, fos:Ljava/io/FileOutputStream;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "tempfile."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, filename:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/sec/android/allshare/extension/RemoteDrmChecker;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mPath:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->access$100(Lcom/sec/android/allshare/extension/RemoteDrmChecker;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/sec/android/allshare/extension/RemoteDrmChecker;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mPath:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->access$100(Lcom/sec/android/allshare/extension/RemoteDrmChecker;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v4, dirPath:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 122
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 123
    :cond_0
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mSelectedItemUri:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 125
    .local v16, inputURL:Ljava/net/URL;
    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 126
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 128
    .local v13, getRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v3, v13}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 129
    .local v18, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 131
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 133
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v8, file:Ljava/io/File;
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 135
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .local v12, fos:Ljava/io/FileOutputStream;
    const/16 v20, 0x2710

    :try_start_1
    move/from16 v0, v20

    new-array v2, v0, [B

    .line 137
    .local v2, buf:[B
    const/16 v17, 0x0

    .line 138
    .local v17, readCount:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v14, v0, :cond_2

    .line 139
    invoke-virtual {v15, v2}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 140
    if-lez v17, :cond_1

    .line 141
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v12, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 138
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 146
    new-instance v5, Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/sec/android/allshare/extension/RemoteDrmChecker;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->access$200(Lcom/sec/android/allshare/extension/RemoteDrmChecker;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 147
    .local v5, drmClient:Landroid/drm/DrmManagerClient;
    const/16 v19, 0x0

    .line 149
    .local v19, temp_isDrmFile:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mExtension:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    const-string v20, ".wma"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mExtension:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mMimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mMimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "wma"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mMimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "wav"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 152
    :cond_4
    const-string v20, "Allshare"

    const-string v21, "DrmUtilcheck DrmManagerClient - WMA_PLUGIN_MIME"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v20, "audio/x-ms-wma"

    move-object/from16 v0, v20

    invoke-virtual {v5, v9, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 161
    :cond_5
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/sec/android/allshare/extension/RemoteDrmChecker;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I
    invoke-static/range {v20 .. v21}, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->access$002(Lcom/sec/android/allshare/extension/RemoteDrmChecker;I)I

    .line 167
    :goto_2
    const-string v20, "Allshare"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DrmUtil === THIS IS DRM FILE ? "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/sec/android/allshare/extension/RemoteDrmChecker;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->access$000(Lcom/sec/android/allshare/extension/RemoteDrmChecker;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/sec/android/allshare/extension/RemoteDrmChecker;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmChecked:Z
    invoke-static/range {v20 .. v21}, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->access$302(Lcom/sec/android/allshare/extension/RemoteDrmChecker;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    .line 177
    if-eqz v3, :cond_6

    .line 178
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 180
    :cond_6
    if-eqz v7, :cond_7

    .line 182
    :try_start_2
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    :cond_7
    :goto_3
    if-eqz v12, :cond_8

    .line 189
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 194
    :cond_8
    :goto_4
    if-eqz v15, :cond_18

    .line 196
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v11, v12

    .line 203
    .end local v2           #buf:[B
    .end local v4           #dirPath:Ljava/io/File;
    .end local v5           #drmClient:Landroid/drm/DrmManagerClient;
    .end local v8           #file:Ljava/io/File;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v13           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v14           #i:I
    .end local v16           #inputURL:Ljava/net/URL;
    .end local v17           #readCount:I
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #temp_isDrmFile:Z
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    :cond_9
    :goto_5
    :try_start_5
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    .line 208
    :goto_6
    const-string v20, "Allshare"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DrmUtil DRM check end : isDrmFile = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/sec/android/allshare/extension/RemoteDrmChecker;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->access$000(Lcom/sec/android/allshare/extension/RemoteDrmChecker;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 154
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #buf:[B
    .restart local v4       #dirPath:Ljava/io/File;
    .restart local v5       #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v8       #file:Ljava/io/File;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #i:I
    .restart local v16       #inputURL:Ljava/net/URL;
    .restart local v17       #readCount:I
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #temp_isDrmFile:Z
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mExtension:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    const-string v20, ".wmv"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mExtension:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mMimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->mMimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "wmv"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 156
    :cond_c
    const-string v20, "Allshare"

    const-string v21, "DrmUtilcheck DrmManagerClient - WMV_PLUGIN_MIME"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v20, "video/x-ms-wmv"

    move-object/from16 v0, v20

    invoke-virtual {v5, v9, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    goto/16 :goto_1

    .line 164
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;->this$0:Lcom/sec/android/allshare/extension/RemoteDrmChecker;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I
    invoke-static/range {v20 .. v21}, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->access$002(Lcom/sec/android/allshare/extension/RemoteDrmChecker;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f

    goto/16 :goto_2

    .line 169
    .end local v2           #buf:[B
    .end local v5           #drmClient:Landroid/drm/DrmManagerClient;
    .end local v14           #i:I
    .end local v17           #readCount:I
    .end local v19           #temp_isDrmFile:Z
    :catch_0
    move-exception v6

    move-object v11, v12

    .line 170
    .end local v4           #dirPath:Ljava/io/File;
    .end local v8           #file:Ljava/io/File;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v13           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v16           #inputURL:Ljava/net/URL;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .local v6, e:Ljava/io/IOException;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    :goto_7
    :try_start_7
    const-string v20, "Allshare"

    const-string v21, "DrmUtilIOException"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 177
    if-eqz v3, :cond_e

    .line 178
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 180
    :cond_e
    if-eqz v7, :cond_f

    .line 182
    :try_start_8
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 187
    :cond_f
    :goto_8
    if-eqz v11, :cond_10

    .line 189
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 194
    :cond_10
    :goto_9
    if-eqz v15, :cond_9

    .line 196
    :try_start_a
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_5

    .line 197
    :catch_1
    move-exception v6

    .line 198
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 183
    .end local v6           #e:Ljava/io/IOException;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #buf:[B
    .restart local v4       #dirPath:Ljava/io/File;
    .restart local v5       #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v8       #file:Ljava/io/File;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #i:I
    .restart local v16       #inputURL:Ljava/net/URL;
    .restart local v17       #readCount:I
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #temp_isDrmFile:Z
    :catch_2
    move-exception v6

    .line 184
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 190
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 191
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 197
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 198
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v11, v12

    .line 199
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 183
    .end local v2           #buf:[B
    .end local v4           #dirPath:Ljava/io/File;
    .end local v5           #drmClient:Landroid/drm/DrmManagerClient;
    .end local v8           #file:Ljava/io/File;
    .end local v13           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v14           #i:I
    .end local v16           #inputURL:Ljava/net/URL;
    .end local v17           #readCount:I
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #temp_isDrmFile:Z
    :catch_5
    move-exception v6

    .line 184
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 190
    :catch_6
    move-exception v6

    .line 191
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 172
    .end local v6           #e:Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 173
    .local v6, e:Ljava/lang/Exception;
    :goto_a
    :try_start_b
    const-string v20, "Allshare"

    const-string v21, "DrmUtilException"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 177
    if-eqz v3, :cond_11

    .line 178
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 180
    :cond_11
    if-eqz v7, :cond_12

    .line 182
    :try_start_c
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 187
    .end local v6           #e:Ljava/lang/Exception;
    :cond_12
    :goto_b
    if-eqz v11, :cond_13

    .line 189
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 194
    :cond_13
    :goto_c
    if-eqz v15, :cond_9

    .line 196
    :try_start_e
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_5

    .line 197
    :catch_8
    move-exception v6

    .line 198
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 183
    .local v6, e:Ljava/lang/Exception;
    :catch_9
    move-exception v6

    .line 184
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 190
    .end local v6           #e:Ljava/io/IOException;
    :catch_a
    move-exception v6

    .line 191
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 177
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_d
    if-eqz v3, :cond_14

    .line 178
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 180
    :cond_14
    if-eqz v7, :cond_15

    .line 182
    :try_start_f
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 187
    :cond_15
    :goto_e
    if-eqz v11, :cond_16

    .line 189
    :try_start_10
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 194
    :cond_16
    :goto_f
    if-eqz v15, :cond_17

    .line 196
    :try_start_11
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 199
    :cond_17
    :goto_10
    throw v20

    .line 183
    :catch_b
    move-exception v6

    .line 184
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 190
    .end local v6           #e:Ljava/io/IOException;
    :catch_c
    move-exception v6

    .line 191
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    .line 197
    .end local v6           #e:Ljava/io/IOException;
    :catch_d
    move-exception v6

    .line 198
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    .line 204
    .end local v6           #e:Ljava/io/IOException;
    :catch_e
    move-exception v6

    .line 205
    .local v6, e:Ljava/lang/Exception;
    const-string v20, "Allshare"

    const-string v21, "DrmUtilfail to new File( filePath ).delete();"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 177
    .end local v6           #e:Ljava/lang/Exception;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #dirPath:Ljava/io/File;
    .restart local v8       #file:Ljava/io/File;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v16       #inputURL:Ljava/net/URL;
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v20

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_d

    .line 172
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catch_f
    move-exception v6

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto :goto_a

    .line 169
    .end local v4           #dirPath:Ljava/io/File;
    .end local v8           #file:Ljava/io/File;
    .end local v13           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v16           #inputURL:Ljava/net/URL;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    :catch_10
    move-exception v6

    goto/16 :goto_7

    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #buf:[B
    .restart local v4       #dirPath:Ljava/io/File;
    .restart local v5       #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v8       #file:Ljava/io/File;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #i:I
    .restart local v16       #inputURL:Ljava/net/URL;
    .restart local v17       #readCount:I
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #temp_isDrmFile:Z
    :cond_18
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_5
.end method
