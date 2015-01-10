.class public Lcom/android/contacts/vcard/ExportProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "ExportProcessor.java"


# instance fields
.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private final mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

.field private final mJobId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;I)V
    .locals 2
    .parameter "service"
    .parameter "exportRequest"
    .parameter "jobId"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 66
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 67
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 69
    iput-object p2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    .line 70
    iput p3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    .line 71
    return-void
.end method

.method private doCancelNotification()V
    .locals 7

    .prologue
    .line 297
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v3, 0x7f0d010e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    iget-object v6, v6, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, description:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-static {v2, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 301
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 303
    return-void
.end method

.method private doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-static {v1, p1, p2, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructExportFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    iget v3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 313
    return-void
.end method

.method private doProgressNotification(Landroid/net/Uri;II)V
    .locals 9
    .parameter "uri"
    .parameter "totalCount"
    .parameter "currentCount"

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v1, 0x7f0d0110

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v1, 0x7f0d010f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, tickerText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 v1, 0x2

    iget v4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 291
    .local v8, notification:Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v0, v1, v4, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 293
    return-void
.end method

.method private runInternal()V
    .locals 33

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    move-object/from16 v24, v0

    .line 103
    .local v24, request:Lcom/android/contacts/vcard/ExportRequest;
    const/4 v14, 0x0

    .line 104
    .local v14, composer:Lcom/android/vcard/VCardComposer;
    const/16 v31, 0x0

    .line 105
    .local v31, writer:Ljava/io/Writer;
    const/16 v25, 0x0

    .line 107
    .local v25, successful:Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    const-string v4, "VCardExport"

    const-string v6, "Export request is cancelled before handling the request"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    if-eqz v14, :cond_0

    .line 253
    throw v14

    .line 255
    :cond_0
    if-eqz v31, :cond_1

    .line 257
    :try_start_1
    throw v31
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v3, v14

    .line 264
    .end local v14           #composer:Lcom/android/vcard/VCardComposer;
    .local v3, composer:Lcom/android/vcard/VCardComposer;
    :goto_1
    return-void

    .line 258
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v14       #composer:Lcom/android/vcard/VCardComposer;
    :catch_0
    move-exception v16

    .line 259
    .local v16, e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v16           #e:Ljava/io/IOException;
    :cond_2
    :try_start_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->exportType:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 113
    .local v18, exportType:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v6, 0x7f0d0001

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v30

    .line 119
    .local v30, vcardType:I
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    const v4, 0x38000008

    or-int v30, v30, v4

    .line 124
    :cond_3
    const/4 v5, 0x0

    .line 126
    .local v5, selection:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Contact_EnableSelectableListToExportSdCard"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 128
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v21, inBuilder:Ljava/lang/StringBuilder;
    const/16 v22, 0x0

    .line 130
    .local v22, index:I
    invoke-static {}, Lcom/android/contacts/vcard/ExportVCardActivity;->getEntryForExportVcard()[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 132
    .local v13, array:[Ljava/lang/String;
    if-nez v13, :cond_7

    .line 252
    if-eqz v14, :cond_4

    .line 253
    throw v14

    .line 255
    :cond_4
    if-eqz v31, :cond_5

    .line 257
    :try_start_3
    throw v31
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 262
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v3, v14

    .end local v14           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    goto :goto_1

    .line 117
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v5           #selection:Ljava/lang/String;
    .end local v13           #array:[Ljava/lang/String;
    .end local v21           #inBuilder:Ljava/lang/StringBuilder;
    .end local v22           #index:I
    .end local v30           #vcardType:I
    .restart local v14       #composer:Lcom/android/vcard/VCardComposer;
    :cond_6
    :try_start_4
    invoke-static/range {v18 .. v18}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v30

    .restart local v30       #vcardType:I
    goto :goto_2

    .line 258
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v13       #array:[Ljava/lang/String;
    .restart local v21       #inBuilder:Ljava/lang/StringBuilder;
    .restart local v22       #index:I
    :catch_1
    move-exception v16

    .line 259
    .restart local v16       #e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 134
    .end local v16           #e:Ljava/io/IOException;
    :cond_7
    :try_start_5
    array-length v4, v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-gtz v4, :cond_a

    .line 252
    if-eqz v14, :cond_8

    .line 253
    throw v14

    .line 255
    :cond_8
    if-eqz v31, :cond_9

    .line 257
    :try_start_6
    throw v31
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 262
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v3, v14

    .end local v14           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_1

    .line 258
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v14       #composer:Lcom/android/vcard/VCardComposer;
    :catch_2
    move-exception v16

    .line 259
    .restart local v16       #e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 137
    .end local v16           #e:Ljava/io/IOException;
    :cond_a
    const/16 v20, 0x0

    .local v20, i:I
    :goto_5
    :try_start_7
    array-length v4, v13

    move/from16 v0, v20

    if-ge v0, v4, :cond_e

    .line 138
    if-nez v22, :cond_b

    .line 139
    const-string v4, "("

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_6
    aget-object v4, v13, v20

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v22, v22, 0x1

    .line 137
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 141
    :cond_b
    const-string v4, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 252
    .end local v5           #selection:Ljava/lang/String;
    .end local v13           #array:[Ljava/lang/String;
    .end local v18           #exportType:Ljava/lang/String;
    .end local v20           #i:I
    .end local v21           #inBuilder:Ljava/lang/StringBuilder;
    .end local v22           #index:I
    .end local v30           #vcardType:I
    :catchall_0
    move-exception v4

    move-object v3, v14

    .end local v14           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    :goto_7
    if-eqz v3, :cond_c

    .line 253
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 255
    :cond_c
    if-eqz v31, :cond_d

    .line 257
    :try_start_8
    invoke-virtual/range {v31 .. v31}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 262
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v25

    invoke-virtual {v6, v7, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    throw v4

    .line 148
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v13       #array:[Ljava/lang/String;
    .restart local v14       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v18       #exportType:Ljava/lang/String;
    .restart local v20       #i:I
    .restart local v21       #inBuilder:Ljava/lang/StringBuilder;
    .restart local v22       #index:I
    .restart local v30       #vcardType:I
    :cond_e
    const/16 v4, 0x29

    :try_start_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    .end local v13           #array:[Ljava/lang/String;
    .end local v20           #i:I
    .end local v21           #inBuilder:Ljava/lang/StringBuilder;
    .end local v22           #index:I
    :cond_f
    new-instance v3, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 v6, 0x1

    move/from16 v0, v30

    invoke-direct {v3, v4, v0, v6}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 161
    .end local v14           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    :try_start_a
    sget-object v4, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "for_export_only"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 166
    .local v12, contentUriForRawContactsEntity:Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Contact_EnableSelectableListToExportSdCard"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v3 .. v8}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Contact_EnableSelectableListToExportSdCard"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    invoke-virtual/range {v6 .. v12}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 174
    :cond_11
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v17

    .line 175
    .local v17, errorReason:Ljava/lang/String;
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initialization of vCard composer failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/contacts/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 178
    .local v28, translatedErrorReason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v6, 0x7f0d0111

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v28, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 181
    .local v26, title:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 252
    if-eqz v3, :cond_12

    .line 253
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 255
    :cond_12
    if-eqz v31, :cond_13

    .line 257
    :try_start_b
    throw v31
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 262
    :cond_13
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    goto/16 :goto_1

    .line 258
    :catch_3
    move-exception v16

    .line 259
    .restart local v16       #e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 185
    .end local v16           #e:Ljava/io/IOException;
    .end local v17           #errorReason:Ljava/lang/String;
    .end local v26           #title:Ljava/lang/String;
    .end local v28           #translatedErrorReason:Ljava/lang/String;
    :cond_14
    :try_start_c
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v27

    .line 186
    .local v27, total:I
    if-nez v27, :cond_17

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v6, 0x7f0d010a

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 189
    .restart local v26       #title:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 252
    if-eqz v3, :cond_15

    .line 253
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 255
    :cond_15
    if-eqz v31, :cond_16

    .line 257
    :try_start_d
    throw v31
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 262
    :cond_16
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    goto/16 :goto_1

    .line 258
    :catch_4
    move-exception v16

    .line 259
    .restart local v16       #e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 195
    .end local v16           #e:Ljava/io/IOException;
    .end local v26           #title:Ljava/lang/String;
    :cond_17
    :try_start_e
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v29, v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 198
    .local v29, uri:Landroid/net/Uri;
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5

    move-result-object v23

    .line 210
    .local v23, outputStream:Ljava/io/OutputStream;
    :try_start_10
    new-instance v32, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 212
    .end local v31           #writer:Ljava/io/Writer;
    .local v32, writer:Ljava/io/Writer;
    const/4 v15, 0x1

    .line 213
    .local v15, current:I
    :goto_b
    :try_start_11
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_20

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 215
    const-string v4, "VCardExport"

    const-string v6, "Export request is cancelled during composing vCard"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 252
    if-eqz v3, :cond_18

    .line 253
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 255
    :cond_18
    if-eqz v32, :cond_19

    .line 257
    :try_start_12
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 262
    :cond_19
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v31, v32

    .end local v32           #writer:Ljava/io/Writer;
    .restart local v31       #writer:Ljava/io/Writer;
    goto/16 :goto_1

    .line 199
    .end local v15           #current:I
    .end local v23           #outputStream:Ljava/io/OutputStream;
    :catch_5
    move-exception v16

    .line 200
    .local v16, e:Ljava/io/FileNotFoundException;
    :try_start_13
    const-string v4, "VCardExport"

    const-string v6, "FileNotFoundException thrown"

    move-object/from16 v0, v16

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v6, 0x7f0d0116

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v29, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 206
    .restart local v17       #errorReason:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 252
    if-eqz v3, :cond_1a

    .line 253
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 255
    :cond_1a
    if-eqz v31, :cond_1b

    .line 257
    :try_start_14
    throw v31
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6

    .line 262
    .end local v16           #e:Ljava/io/FileNotFoundException;
    :cond_1b
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    goto/16 :goto_1

    .line 258
    .restart local v16       #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v16

    .line 259
    .local v16, e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 258
    .end local v16           #e:Ljava/io/IOException;
    .end local v17           #errorReason:Ljava/lang/String;
    .end local v31           #writer:Ljava/io/Writer;
    .restart local v15       #current:I
    .restart local v23       #outputStream:Ljava/io/OutputStream;
    .restart local v32       #writer:Ljava/io/Writer;
    :catch_7
    move-exception v16

    .line 259
    .restart local v16       #e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 219
    .end local v16           #e:Ljava/io/IOException;
    :cond_1c
    :try_start_15
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    .line 234
    :try_start_16
    rem-int/lit8 v4, v15, 0x64

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1d

    .line 235
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v15}, Lcom/android/contacts/vcard/ExportProcessor;->doProgressNotification(Landroid/net/Uri;II)V

    .line 237
    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    .line 220
    :catch_8
    move-exception v16

    .line 221
    .restart local v16       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v17

    .line 222
    .restart local v17       #errorReason:Ljava/lang/String;
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read a contact: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/contacts/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 225
    .restart local v28       #translatedErrorReason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v6, 0x7f0d0112

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v28, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 228
    .restart local v26       #title:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 252
    if-eqz v3, :cond_1e

    .line 253
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 255
    :cond_1e
    if-eqz v32, :cond_1f

    .line 257
    :try_start_17
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedWriter;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    .line 262
    :cond_1f
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v31, v32

    .end local v32           #writer:Ljava/io/Writer;
    .restart local v31       #writer:Ljava/io/Writer;
    goto/16 :goto_1

    .line 258
    .end local v31           #writer:Ljava/io/Writer;
    .restart local v32       #writer:Ljava/io/Writer;
    :catch_9
    move-exception v16

    .line 259
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 239
    .end local v16           #e:Ljava/io/IOException;
    .end local v17           #errorReason:Ljava/lang/String;
    .end local v26           #title:Ljava/lang/String;
    .end local v28           #translatedErrorReason:Ljava/lang/String;
    :cond_20
    :try_start_18
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully finished exporting vCard "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/contacts/vcard/VCardService;->updateMediaScanner(Ljava/lang/String;)V

    .line 246
    const/16 v25, 0x1

    .line 247
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v19

    .line 248
    .local v19, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v6, 0x7f0d010d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v19, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 250
    .restart local v26       #title:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 252
    if-eqz v3, :cond_21

    .line 253
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 255
    :cond_21
    if-eqz v32, :cond_22

    .line 257
    :try_start_19
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedWriter;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a

    .line 262
    :cond_22
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v31, v32

    .line 264
    .end local v32           #writer:Ljava/io/Writer;
    .restart local v31       #writer:Ljava/io/Writer;
    goto/16 :goto_1

    .line 258
    .end local v31           #writer:Ljava/io/Writer;
    .restart local v32       #writer:Ljava/io/Writer;
    :catch_a
    move-exception v16

    .line 259
    .restart local v16       #e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 258
    .end local v5           #selection:Ljava/lang/String;
    .end local v12           #contentUriForRawContactsEntity:Landroid/net/Uri;
    .end local v15           #current:I
    .end local v16           #e:Ljava/io/IOException;
    .end local v18           #exportType:Ljava/lang/String;
    .end local v19           #filename:Ljava/lang/String;
    .end local v23           #outputStream:Ljava/io/OutputStream;
    .end local v26           #title:Ljava/lang/String;
    .end local v27           #total:I
    .end local v29           #uri:Landroid/net/Uri;
    .end local v30           #vcardType:I
    .end local v32           #writer:Ljava/io/Writer;
    .restart local v31       #writer:Ljava/io/Writer;
    :catch_b
    move-exception v16

    .line 259
    .restart local v16       #e:Ljava/io/IOException;
    const-string v6, "VCardExport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 252
    .end local v16           #e:Ljava/io/IOException;
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v18       #exportType:Ljava/lang/String;
    .restart local v30       #vcardType:I
    :catchall_1
    move-exception v4

    goto/16 :goto_7

    .end local v31           #writer:Ljava/io/Writer;
    .restart local v12       #contentUriForRawContactsEntity:Landroid/net/Uri;
    .restart local v15       #current:I
    .restart local v23       #outputStream:Ljava/io/OutputStream;
    .restart local v27       #total:I
    .restart local v29       #uri:Landroid/net/Uri;
    .restart local v32       #writer:Ljava/io/Writer;
    :catchall_2
    move-exception v4

    move-object/from16 v31, v32

    .end local v32           #writer:Ljava/io/Writer;
    .restart local v31       #writer:Ljava/io/Writer;
    goto/16 :goto_7
.end method

.method private translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "errorMessage"

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 268
    .local v0, resources:Landroid/content/res/Resources;
    const-string v1, "Failed to get database information"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const v1, 0x7f0d0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 277
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 270
    .restart local p1
    :cond_1
    const-string v1, "There\'s no exportable in the database"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    const v1, 0x7f0d0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 272
    :cond_2
    const-string v1, "The vCard composer object is not correctly initialized"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    const v1, 0x7f0d0115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 274
    :cond_3
    const-string v1, "No error"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const v1, 0x7f0d00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    const/4 v0, 0x1

    .line 318
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 322
    :goto_0
    monitor-exit p0

    return v0

    .line 321
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequest()Lcom/android/contacts/vcard/ExportRequest;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
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
    .line 332
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportProcessor;->runInternal()V

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportProcessor;->doCancelNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :cond_0
    monitor-enter p0

    .line 95
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    .line 96
    monitor-exit p0

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v1, "VCardExport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 95
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    .line 96
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 90
    :catch_1
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "VCardExport"

    const-string v2, "RuntimeException thrown during export"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
