.class public Lcom/android/contacts/vcard/ImportProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "ImportProcessor.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# instance fields
.field private volatile mCanceled:Z

.field private mCurrentCount:I

.field private volatile mDone:Z

.field private final mFailedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

.field private final mJobId:I

.field private final mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/vcard/VCardService;

.field private mTotalCount:I

.field private mVCardParser:Lcom/android/vcard/VCardParser;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardImportExportListener;Lcom/android/contacts/vcard/ImportRequest;I)V
    .locals 2
    .parameter "service"
    .parameter "listener"
    .parameter "request"
    .parameter "jobId"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    .line 74
    iput v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    .line 75
    iput v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    .line 79
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 80
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 81
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    .line 83
    iput-object p3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    .line 84
    iput p4, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    .line 85
    return-void
.end method

.method private readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    .locals 10
    .parameter "is"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "interpreter"
    .parameter "possibleVCardVersions"

    .prologue
    const/4 v9, 0x2

    .line 232
    const/4 v4, 0x0

    .line 233
    .local v4, successful:Z
    array-length v3, p5

    .line 234
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 235
    aget v5, p5, v2

    .line 237
    .local v5, vcardVersion:I
    if-lez v2, :cond_0

    :try_start_0
    instance-of v6, p4, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v6, :cond_0

    .line 239
    move-object v0, p4

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 246
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_7

    .line 248
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableExceptionHandling4Corea"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "characterset"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 250
    const-string p3, "EUC-KR"

    .line 253
    :cond_1
    if-eqz p3, :cond_6

    const-string v6, "EUC-KR"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 254
    if-ne v5, v9, :cond_4

    new-instance v6, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v6, p2, p3}, Lcom/android/vcard/VCardParser_V30;-><init>(ILjava/lang/String;)V

    :goto_1
    iput-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 263
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    const-string v6, "VCardImport"

    const-string v7, "ImportProcessor already recieves cancel request, so send cancel request to vCard parser too."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 268
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :try_start_2
    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, p1, p4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_7

    .line 271
    const/4 v4, 0x1

    .line 295
    if-eqz p1, :cond_3

    .line 297
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 304
    .end local v5           #vcardVersion:I
    :cond_3
    :goto_3
    return v4

    .line 254
    .restart local v5       #vcardVersion:I
    :cond_4
    :try_start_4
    new-instance v6, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v6, p2, p3}, Lcom/android/vcard/VCardParser_V21;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_5 .. :try_end_5} :catch_7

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    const-string v6, "VCardImport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException was emitted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 295
    if-eqz p1, :cond_5

    .line 297
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 234
    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 258
    :cond_6
    if-ne v5, v9, :cond_7

    :try_start_8
    new-instance v6, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v6, p2}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    :goto_5
    iput-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    goto :goto_2

    :cond_7
    new-instance v6, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v6, p2}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 275
    :catch_1
    move-exception v1

    .line 283
    .local v1, e:Lcom/android/vcard/exception/VCardNestedException;
    :try_start_9
    const-string v6, "VCardImport"

    const-string v7, "Nested Exception is found."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 295
    if-eqz p1, :cond_5

    .line 297
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    .line 298
    :catch_2
    move-exception v6

    goto :goto_4

    .line 284
    .end local v1           #e:Lcom/android/vcard/exception/VCardNestedException;
    :catch_3
    move-exception v1

    .line 285
    .local v1, e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :try_start_b
    const-string v6, "VCardImport"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 295
    if-eqz p1, :cond_5

    .line 297
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_4

    .line 298
    :catch_4
    move-exception v6

    goto :goto_4

    .line 286
    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :catch_5
    move-exception v1

    .line 287
    .local v1, e:Lcom/android/vcard/exception/VCardVersionException;
    add-int/lit8 v6, v3, -0x1

    if-ne v2, v6, :cond_8

    .line 288
    :try_start_d
    const-string v6, "VCardImport"

    const-string v7, "Appropriate version for this vCard is not found."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 295
    :cond_8
    if-eqz p1, :cond_5

    .line 297
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_4

    .line 298
    :catch_6
    move-exception v6

    goto :goto_4

    .line 292
    .end local v1           #e:Lcom/android/vcard/exception/VCardVersionException;
    :catch_7
    move-exception v1

    .line 293
    .local v1, e:Lcom/android/vcard/exception/VCardException;
    :try_start_f
    const-string v6, "VCardImport"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 295
    if-eqz p1, :cond_5

    .line 297
    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_4

    .line 298
    :catch_8
    move-exception v6

    goto :goto_4

    .line 295
    .end local v1           #e:Lcom/android/vcard/exception/VCardException;
    :catchall_1
    move-exception v6

    if-eqz p1, :cond_9

    .line 297
    :try_start_11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 299
    :cond_9
    :goto_6
    throw v6

    .line 298
    :catch_9
    move-exception v6

    goto/16 :goto_3

    .local v1, e:Ljava/io/IOException;
    :catch_a
    move-exception v6

    goto :goto_4

    .end local v1           #e:Ljava/io/IOException;
    :catch_b
    move-exception v7

    goto :goto_6
.end method

.method private runInternal()V
    .locals 22

    .prologue
    .line 137
    const-string v3, "VCardImport"

    const-string v18, "vCard import (id: %d) has started."

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    .line 139
    .local v14, request:Lcom/android/contacts/vcard/ImportRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    const-string v3, "VCardImport"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Canceled before actually handling parameter ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v14, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget v3, v14, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    if-nez v3, :cond_5

    .line 149
    const/4 v3, 0x2

    new-array v8, v3, [I

    fill-array-data v8, :array_0

    .line 159
    .local v8, possibleVCardVersions:[I
    :goto_1
    iget-object v0, v14, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 160
    .local v16, uri:Landroid/net/Uri;
    iget-object v9, v14, Lcom/android/contacts/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 161
    .local v9, account:Landroid/accounts/Account;
    iget v5, v14, Lcom/android/contacts/vcard/ImportRequest;->estimatedVCardType:I

    .line 162
    .local v5, estimatedVCardType:I
    iget-object v6, v14, Lcom/android/contacts/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 163
    .local v6, estimatedCharset:Ljava/lang/String;
    iget v12, v14, Lcom/android/contacts/vcard/ImportRequest;->entryCount:I

    .line 164
    .local v12, entryCount:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    add-int/2addr v3, v12

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    .line 166
    new-instance v7, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v7, v5, v9, v6}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 168
    .local v7, constructor:Lcom/android/vcard/VCardEntryConstructor;
    new-instance v10, Lcom/android/vcard/VCardEntryCommitter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v10, v3}, Lcom/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 169
    .local v10, committer:Lcom/android/vcard/VCardEntryCommitter;
    invoke-virtual {v7, v10}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 172
    const/4 v4, 0x0

    .line 173
    .local v4, is:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 175
    .local v15, successful:Z
    if-eqz v16, :cond_6

    .line 176
    :try_start_0
    const-string v3, "VCardImport"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "start importing one vCard (Uri: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 183
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    move-object/from16 v3, p0

    .line 184
    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/vcard/ImportProcessor;->readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 190
    :cond_3
    if-eqz v4, :cond_4

    .line 192
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 199
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0, v15}, Lcom/android/contacts/vcard/VCardService;->handleFinishImportNotification(IZ)V

    .line 201
    if-eqz v15, :cond_a

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 205
    const-string v3, "VCardImport"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "vCard import has been canceled (uri: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 154
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #estimatedVCardType:I
    .end local v6           #estimatedCharset:Ljava/lang/String;
    .end local v7           #constructor:Lcom/android/vcard/VCardEntryConstructor;
    .end local v8           #possibleVCardVersions:[I
    .end local v9           #account:Landroid/accounts/Account;
    .end local v10           #committer:Lcom/android/vcard/VCardEntryCommitter;
    .end local v12           #entryCount:I
    .end local v15           #successful:Z
    .end local v16           #uri:Landroid/net/Uri;
    :cond_5
    const/4 v3, 0x1

    new-array v8, v3, [I

    const/4 v3, 0x0

    iget v0, v14, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    move/from16 v18, v0

    aput v18, v8, v3

    .restart local v8       #possibleVCardVersions:[I
    goto/16 :goto_1

    .line 178
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #estimatedVCardType:I
    .restart local v6       #estimatedCharset:Ljava/lang/String;
    .restart local v7       #constructor:Lcom/android/vcard/VCardEntryConstructor;
    .restart local v9       #account:Landroid/accounts/Account;
    .restart local v10       #committer:Lcom/android/vcard/VCardEntryCommitter;
    .restart local v12       #entryCount:I
    .restart local v15       #successful:Z
    .restart local v16       #uri:Landroid/net/Uri;
    :cond_6
    :try_start_2
    iget-object v3, v14, Lcom/android/contacts/vcard/ImportRequest;->data:[B

    if-eqz v3, :cond_2

    .line 179
    const-string v3, "VCardImport"

    const-string v18, "start importing one vCard (byte[])"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v13, Ljava/io/ByteArrayInputStream;

    iget-object v3, v14, Lcom/android/contacts/vcard/ImportRequest;->data:[B

    invoke-direct {v13, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v4           #is:Ljava/io/InputStream;
    .local v13, is:Ljava/io/InputStream;
    move-object v4, v13

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 187
    :catch_0
    move-exception v11

    .line 188
    .local v11, e:Ljava/io/IOException;
    const/4 v15, 0x0

    .line 190
    if-eqz v4, :cond_4

    .line 192
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 193
    :catch_1
    move-exception v3

    goto :goto_3

    .line 190
    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v4, :cond_7

    .line 192
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 195
    :cond_7
    :goto_4
    throw v3

    .line 208
    :cond_8
    const-string v3, "VCardImport"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Successfully finished importing one vCard file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v10}, Lcom/android/vcard/VCardEntryCommitter;->getCreatedUris()Ljava/util/ArrayList;

    move-result-object v17

    .line 210
    .local v17, uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v3, :cond_0

    .line 211
    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    move/from16 v20, v0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 216
    :cond_9
    const-string v3, "VCardImport"

    const-string v18, "Created Uris is null or 0 length though the creation itself is successful."

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v3, v0, v1, v2}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 224
    .end local v17           #uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    :cond_a
    const-string v3, "VCardImport"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to read one vCard file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 193
    :catch_2
    move-exception v3

    goto/16 :goto_3

    :catch_3
    move-exception v18

    goto/16 :goto_4

    .line 149
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    const/4 v0, 0x1

    .line 310
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    const/4 v0, 0x0

    .line 319
    :goto_0
    monitor-exit p0

    return v0

    .line 313
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z

    .line 314
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 315
    :try_start_2
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v1}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 318
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 6
    .parameter "entry"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    .line 104
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    iget v4, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    iget v5, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportParsed(Lcom/android/contacts/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportProcessor;->runInternal()V

    .line 120
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportCanceled(Lcom/android/contacts/vcard/ImportRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :cond_0
    monitor-enter p0

    .line 131
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    .line 132
    monitor-exit p0

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v1, "VCardImport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 131
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    .line 132
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 126
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "VCardImport"

    const-string v2, "RuntimeException thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
