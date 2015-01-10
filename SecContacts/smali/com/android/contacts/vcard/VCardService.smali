.class public Lcom/android/contacts/vcard/VCardService;
.super Landroid/app/Service;
.source "VCardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/VCardService$MyBinder;,
        Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
    }
.end annotation


# instance fields
.field private final JOB_COUNT:Ljava/lang/String;

.field private JOB_KEY:Ljava/lang/String;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private iTotalJobs:I

.field private mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

.field private mCurrentJobId:I

.field private mErrorReason:Ljava/lang/String;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mExtensionsToConsider:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileIndexMaximum:I

.field private mFileIndexMinimum:I

.field private mFileNameExtension:Ljava/lang/String;

.field private mFileNamePrefix:Ljava/lang/String;

.field private mFileNameSuffix:Ljava/lang/String;

.field private final mRemainingScannerConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mReservedDestination:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningJobMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/contacts/vcard/ProcessorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDirectory:Ljava/lang/String;

.field myPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    const-string v0, "jobkey_"

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->JOB_KEY:Ljava/lang/String;

    .line 66
    const-string v0, "jobCount"

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->JOB_COUNT:Ljava/lang/String;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    .line 115
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/VCardService;->removeConnectionClient(Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    return-void
.end method

.method private addToSharedPreference(I)V
    .locals 4
    .parameter "JobId"

    .prologue
    const/4 v3, -0x1

    .line 633
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->myPref:Landroid/content/SharedPreferences;

    const-string v2, "jobCount"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    .line 634
    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    if-eq v1, v3, :cond_0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->JOB_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, key:Ljava/lang/String;
    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    .line 641
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 643
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "jobCount"

    iget v3, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 644
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 645
    return-void

    .line 638
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->JOB_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    .restart local v0       #key:Ljava/lang/String;
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    goto :goto_0
.end method

.method private declared-synchronized cancelAllRequestsAndShutdown()V
    .locals 4

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 452
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/vcard/ProcessorBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/vcard/ProcessorBase;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 451
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 454
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 455
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 456
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 457
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    monitor-exit p0

    return-void
.end method

.method private clearCache()V
    .locals 7

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->fileList()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 465
    .local v1, fileName:Ljava/lang/String;
    const-string v4, "import_tmp_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    const-string v4, "VCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove a temporary file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->deleteFile(Ljava/lang/String;)Z

    .line 464
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    .end local v1           #fileName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getAppropriateDestination(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "destDirectory"

    .prologue
    .line 498
    const/4 v4, 0x0

    .line 502
    .local v4, fileIndexDigit:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    .local v11, tmp:I
    :goto_0
    if-lez v11, :cond_0

    .line 503
    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v11, v11, 0xa

    goto :goto_0

    .line 508
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%s%0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "d%s"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, bodyFormat:Ljava/lang/String;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 513
    .local v9, possibleBody:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x8

    if-gt v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_2

    .line 514
    :cond_1
    const-string v12, "VCardService"

    const-string v13, "This code does not allow any long file name."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const v12, 0x7f0d010c

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "%s.%s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 517
    const-string v12, "VCardService"

    const-string v13, "File name becomes too long."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v12, 0x0

    .line 551
    :goto_1
    return-object v12

    .line 522
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMinimum:I

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    if-gt v5, v12, :cond_7

    .line 523
    const/4 v7, 0x1

    .line 524
    .local v7, numberIsAvailable:Z
    const/4 v1, 0x0

    .line 525
    .local v1, body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 526
    .local v10, possibleExtension:Ljava/lang/String;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 527
    const-string v12, "%s/%s.%s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    const/4 v14, 0x2

    aput-object v10, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 529
    .local v8, path:Ljava/lang/String;
    monitor-enter p0

    .line 530
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v12, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 534
    const/4 v7, 0x0

    .line 535
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    .end local v8           #path:Ljava/lang/String;
    .end local v10           #possibleExtension:Ljava/lang/String;
    :cond_4
    :goto_3
    if-eqz v7, :cond_6

    .line 545
    const-string v12, "%s/%s.%s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 537
    .restart local v8       #path:Ljava/lang/String;
    .restart local v10       #possibleExtension:Ljava/lang/String;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 540
    const/4 v7, 0x0

    .line 541
    goto :goto_3

    .line 537
    .end local v3           #file:Ljava/io/File;
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 522
    .end local v8           #path:Ljava/lang/String;
    .end local v10           #possibleExtension:Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 549
    .end local v1           #body:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #numberIsAvailable:Z
    :cond_7
    const-string v12, "VCardService"

    const-string v13, "Reached vCard number limit. Maybe there are too many vCard in the storage"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const v12, 0x7f0d010b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 551
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private getAppropriateDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "destDirectory"
    .parameter "file_name"

    .prologue
    .line 572
    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMinimum:I

    .local v2, i:I
    :goto_0
    iget v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    if-gt v2, v7, :cond_5

    .line 573
    const/4 v4, 0x1

    .line 574
    .local v4, numberIsAvailable:Z
    const/4 v0, 0x0

    .line 575
    .local v0, body:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 576
    .local v6, possibleExtension:Ljava/lang/String;
    iget v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMinimum:I

    if-ne v2, v7, :cond_2

    .line 577
    move-object v0, p2

    .line 582
    :goto_1
    const-string v7, "%s/%s.%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, path:Ljava/lang/String;
    monitor-enter p0

    .line 585
    :try_start_0
    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 589
    const/4 v4, 0x0

    .line 590
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #possibleExtension:Ljava/lang/String;
    :cond_1
    :goto_2
    if-eqz v4, :cond_4

    .line 600
    const-string v7, "%s/%s.%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 606
    .end local v0           #body:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #numberIsAvailable:Z
    :goto_3
    return-object v7

    .line 579
    .restart local v0       #body:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #numberIsAvailable:Z
    .restart local v6       #possibleExtension:Ljava/lang/String;
    :cond_2
    const-string v7, "%s_%03d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 592
    .restart local v5       #path:Ljava/lang/String;
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 595
    const/4 v4, 0x0

    .line 596
    goto :goto_2

    .line 592
    .end local v1           #file:Ljava/io/File;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 572
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #possibleExtension:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    .end local v0           #body:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #numberIsAvailable:Z
    :cond_5
    const-string v7, "VCardService"

    const-string v8, "Reached vCard number limit. Maybe there are too many vCard in the storage"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const v7, 0x7f0d010b

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 606
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private initExporterParams()V
    .locals 9

    .prologue
    .line 174
    const v7, 0x7f0d0002

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mTargetDirectory:Ljava/lang/String;

    .line 175
    const v7, 0x7f0d0003

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    .line 176
    const v7, 0x7f0d0004

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    .line 177
    const v7, 0x7f0d0005

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    .line 179
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    .line 180
    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    iget-object v8, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    const v7, 0x7f0d0006

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, additionalExtensions:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 185
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 186
    .local v2, extension:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, trimed:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 188
    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #extension:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #trimed:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 194
    .local v5, resources:Landroid/content/res/Resources;
    const/high16 v7, 0x7f0e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMinimum:I

    .line 195
    const v7, 0x7f0e0001

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    .line 196
    return-void
.end method

.method private declared-synchronized removeConnectionClient(Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 405
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit p0

    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeFromSharedPreference(I)V
    .locals 5
    .parameter "jobId"

    .prologue
    const/4 v4, -0x1

    .line 616
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->myPref:Landroid/content/SharedPreferences;

    const-string v3, "jobCount"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    .line 617
    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 618
    iput v4, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    .line 622
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/vcard/VCardService;->JOB_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->myPref:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 624
    .local v1, value:I
    if-eq v1, v4, :cond_0

    .line 625
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "jobCount"

    iget v4, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 628
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 629
    return-void

    .line 620
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #value:I
    :cond_1
    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/contacts/vcard/VCardService;->iTotalJobs:I

    goto :goto_0
.end method

.method private declared-synchronized stopServiceIfAppropriate()V
    .locals 10

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_1

    .line 356
    :try_start_1
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 357
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 358
    .local v3, jobId:I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/vcard/ProcessorBase;

    .line 359
    .local v4, processor:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-virtual {v4}, Lcom/android/contacts/vcard/ProcessorBase;->isDone()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 360
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/VCardService;->removeFromSharedPreference(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 367
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #jobId:I
    .end local v4           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/util/ConcurrentModificationException;
    :try_start_2
    const-string v5, "VCardService"

    const-string v6, "MediaScanner update is in progress."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    .end local v0           #e:Ljava/util/ConcurrentModificationException;
    :goto_1
    monitor-exit p0

    return-void

    .line 363
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #jobId:I
    .restart local v4       #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_0
    :try_start_3
    const-string v5, "VCardService"

    const-string v6, "Found unfinished job (id: %d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 354
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #jobId:I
    .end local v4           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 373
    :cond_1
    :try_start_4
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 374
    const-string v5, "VCardService"

    const-string v6, "MediaScanner update is in progress."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 378
    :cond_2
    const-string v5, "VCardService"

    const-string v6, "No unfinished job. Stop this service."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 380
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z
    .locals 3
    .parameter "processor"

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 286
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/VCardService;->addToSharedPreference(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    const/4 v1, 0x1

    .line 291
    :goto_0
    monitor-exit p0

    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    const-string v1, "VCardService"

    const-string v2, "Failed to excetute a job."

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    const/4 v1, 0x0

    goto :goto_0

    .line 285
    .end local v0           #e:Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized handleCancelRequest(Lcom/android/contacts/vcard/CancelRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 9
    .parameter "request"
    .parameter "listener"

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/contacts/vcard/CancelRequest;->jobId:I

    .line 299
    .local v0, jobId:I
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/vcard/ProcessorBase;

    .line 300
    .local v2, processor:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/VCardService;->removeFromSharedPreference(I)V

    .line 301
    if-eqz v2, :cond_2

    .line 302
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/contacts/vcard/ProcessorBase;->cancel(Z)Z

    .line 303
    invoke-virtual {v2}, Lcom/android/contacts/vcard/ProcessorBase;->getType()I

    move-result v3

    .line 304
    .local v3, type:I
    if-eqz p2, :cond_0

    .line 305
    invoke-interface {p2, p1, v3}, Lcom/android/contacts/vcard/VCardImportExportListener;->onCancelRequest(Lcom/android/contacts/vcard/CancelRequest;I)V

    .line 307
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 308
    check-cast v2, Lcom/android/contacts/vcard/ExportProcessor;

    .end local v2           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-virtual {v2}, Lcom/android/contacts/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/vcard/ExportRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, path:Ljava/lang/String;
    const-string v4, "VCardService"

    const-string v5, "Cancel reservation for the path %s if appropriate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 313
    const-string v4, "VCardService"

    const-string v5, "Not reserved."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #type:I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 317
    .restart local v2       #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_2
    :try_start_1
    const-string v4, "VCardService"

    const-string v5, "Tried to remove unknown job (id: %d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    .end local v0           #jobId:I
    .end local v2           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized handleExportRequest(Lcom/android/contacts/vcard/ExportRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 5
    .parameter "request"
    .parameter "listener"

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/android/contacts/vcard/ExportProcessor;

    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/contacts/vcard/ExportProcessor;-><init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;I)V

    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/VCardService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, p1, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    const-string v1, "VCardService"

    const-string v2, "The path %s is already reserved. Reject export request"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz p2, :cond_0

    .line 259
    invoke-interface {p2, p1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    .restart local v0       #path:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 265
    :try_start_1
    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, p1, v1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportProcessed(Lcom/android/contacts/vcard/ExportRequest;I)V

    .line 267
    :cond_2
    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    .end local v0           #path:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 269
    :cond_3
    if-eqz p2, :cond_0

    .line 270
    :try_start_2
    invoke-interface {p2, p1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized handleFinishExportNotification(IZ)V
    .locals 7
    .parameter "jobId"
    .parameter "successful"

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/vcard/ProcessorBase;

    .line 429
    .local v0, job:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/VCardService;->removeFromSharedPreference(I)V

    .line 430
    if-nez v0, :cond_0

    .line 431
    const-string v2, "VCardService"

    const-string v3, "Tried to remove unknown job (id: %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v0           #job:Lcom/android/contacts/vcard/ProcessorBase;
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 432
    .restart local v0       #job:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_0
    :try_start_1
    instance-of v2, v0, Lcom/android/contacts/vcard/ExportProcessor;

    if-nez v2, :cond_1

    .line 433
    const-string v2, "VCardService"

    const-string v3, "Removed job (id: %s) isn\'t ExportProcessor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 428
    .end local v0           #job:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 436
    .restart local v0       #job:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_1
    :try_start_2
    check-cast v0, Lcom/android/contacts/vcard/ExportProcessor;

    .end local v0           #job:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-virtual {v0}, Lcom/android/contacts/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/vcard/ExportRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized handleFinishImportNotification(IZ)V
    .locals 6
    .parameter "jobId"
    .parameter "successful"

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/vcard/ProcessorBase;

    .line 415
    .local v0, processor:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/VCardService;->removeFromSharedPreference(I)V

    .line 416
    if-nez v0, :cond_0

    .line 417
    const-string v1, "VCardService"

    const-string v2, "Tried to remove unknown job (id: %d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    .line 414
    .end local v0           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized handleImportRequest(Ljava/util/List;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 5
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportRequest;",
            ">;",
            "Lcom/android/contacts/vcard/VCardImportExportListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/vcard/ImportRequest;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 231
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 232
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/vcard/ImportRequest;

    .line 234
    .local v1, request:Lcom/android/contacts/vcard/ImportRequest;
    new-instance v3, Lcom/android/contacts/vcard/ImportProcessor;

    iget v4, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {v3, p0, p2, v1, v4}, Lcom/android/contacts/vcard/ImportProcessor;-><init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardImportExportListener;Lcom/android/contacts/vcard/ImportRequest;I)V

    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/VCardService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    if-eqz p2, :cond_0

    .line 236
    iget v3, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, v1, v3, v0}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportProcessed(Lcom/android/contacts/vcard/ImportRequest;II)V

    .line 238
    :cond_0
    iget v3, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_1
    if-eqz p2, :cond_2

    .line 241
    invoke-interface {p2, v1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFailed(Lcom/android/contacts/vcard/ImportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v1           #request:Lcom/android/contacts/vcard/ImportRequest;
    :cond_2
    monitor-exit p0

    return-void

    .line 230
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized handleRequestAvailableExportDestination(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 8
    .parameter "messenger"
    .parameter "file_name"

    .prologue
    .line 326
    monitor-enter p0

    if-nez p2, :cond_0

    .line 327
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/vcard/VCardService;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/VCardService;->getAppropriateDestination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, path:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    .line 334
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 342
    .local v1, message:Landroid/os/Message;
    :goto_1
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    :goto_2
    monitor-exit p0

    return-void

    .line 329
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/contacts/vcard/VCardService;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/android/contacts/vcard/VCardService;->getAppropriateDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #path:Ljava/lang/String;
    goto :goto_0

    .line 337
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x5

    const v5, 0x7f090015

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #message:Landroid/os/Message;
    goto :goto_1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VCardService"

    const-string v4, "Failed to send reply for available export destination request."

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 326
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #path:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 155
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 156
    const-string v5, "ContactsImportPref"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/vcard/VCardService;->myPref:Landroid/content/SharedPreferences;

    .line 157
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->myPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->myPref:Landroid/content/SharedPreferences;

    const-string v6, "jobCount"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 159
    .local v0, count:I
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 160
    .local v4, mNotificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/contacts/vcard/VCardService;->JOB_KEY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->myPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 163
    .local v2, jobid:I
    const-string v5, "VCardServiceProgress"

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v2           #jobid:I
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 167
    iget-object v5, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    new-instance v5, Lcom/android/contacts/vcard/VCardService$MyBinder;

    invoke-direct {v5, p0}, Lcom/android/contacts/vcard/VCardService$MyBinder;-><init>(Lcom/android/contacts/vcard/VCardService;)V

    iput-object v5, p0, Lcom/android/contacts/vcard/VCardService;->mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

    .line 170
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->initExporterParams()V

    .line 171
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->cancelAllRequestsAndShutdown()V

    .line 213
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->clearCache()V

    .line 214
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 215
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "id"

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public setTargetDirectory(Ljava/lang/String;)V
    .locals 0
    .parameter "dir"

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/contacts/vcard/VCardService;->mTargetDirectory:Ljava/lang/String;

    .line 613
    return-void
.end method

.method declared-synchronized updateMediaScanner(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "VCardService"

    const-string v2, "MediaScanner update is requested after executor\'s being shut down. Ignoring the update request"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :goto_0
    monitor-exit p0

    return-void

    .line 393
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;-><init>(Lcom/android/contacts/vcard/VCardService;Ljava/lang/String;)V

    .line 395
    .local v0, client:Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {v0}, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    .end local v0           #client:Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
