.class public Lcom/android/server/net/NetworkStatsDetailedMonitor;
.super Ljava/lang/Object;
.source "NetworkStatsDetailedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;,
        Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    }
.end annotation


# static fields
.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field private static final PREFIX_DEV:Ljava/lang/String; = "ex_dev"

.field private static final PREFIX_EXPORT_DEV:Ljava/lang/String; = "netstats_dev."

.field private static final PREFIX_EXPORT_IF:Ljava/lang/String; = "netstats_if."

.field private static final PREFIX_EXPORT_UID:Ljava/lang/String; = "netstats_uids."

.field private static final PREFIX_EXPORT_UID_APP:Ljava/lang/String; = "netstats_uidapp."

.field private static final PREFIX_EXPORT_UID_TAG:Ljava/lang/String; = "netstats_uid_tag."

.field private static final PREFIX_EXPORT_XT:Ljava/lang/String; = "netstats_xt."

.field private static final PREFIX_IF:Ljava/lang/String; = "ex_if"

.field private static final PREFIX_UID:Ljava/lang/String; = "ex_uid"

.field private static final PREFIX_UID_APP:Ljava/lang/String; = "ex_uidapp"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "ex_uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "ex_xt"

.field private static final SETTING_END_TIME:Ljava/lang/String; = "monitor_network_usage_end_time"

.field private static final SETTING_INTENT:Ljava/lang/String; = "action.NETWORK_MONITOR"

.field private static final SETTING_SAMPLING_RATE:Ljava/lang/String; = "monitor_network_usage_sampling_rate"

.field private static final SETTING_START_TIME:Ljava/lang/String; = "monitor_network_usage_start_time"

.field private static final TAG:Ljava/lang/String; = "NetworkStatsEx"

.field private static mConfigBucketSize:J

.field private static mConfigRemoveFileTime:J

.field private static mConfigRotateFileTime:J


# instance fields
.field private mBaseDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mLastPollTime:J

.field private mMonitorEndTime:J

.field private mMonitorStartTime:J

.field private mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

.field private mPersistThreshold:J

.field private mPollInterval:J

.field private mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

.field private final mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

.field private final mStatsLock:Ljava/lang/Object;

.field private mUidNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x5265c00

    .line 368
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    .line 369
    sput-wide v2, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRotateFileTime:J

    .line 370
    sput-wide v2, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRemoveFileTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/NetworkStatsService;Landroid/content/Context;Landroid/os/INetworkManagementService;Ljava/lang/Object;Landroid/os/PowerManager$WakeLock;Landroid/net/NetworkStats$NonMonotonicObserver;)V
    .locals 5
    .parameter "serviceNetStats"
    .parameter "context"
    .parameter "networkManager"
    .parameter "statsLock"
    .parameter "wakeLock"
    .parameter "nonMonotonicObserver"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    .line 364
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    .line 366
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    .line 367
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPollInterval:J

    .line 372
    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    .line 373
    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    .line 374
    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    .line 376
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    .line 378
    new-instance v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;-><init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

    .line 409
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> NetworkStatsDetailedMonitor: Begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    .line 411
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    .line 412
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 413
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mStatsLock:Ljava/lang/Object;

    .line 414
    iput-object p5, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 415
    iput-object p6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNonMonotonicObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    .line 417
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getOrCreateMonitorDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    .line 419
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> NetworkStatsDetailedMonitor: End!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkStatsDetailedMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkStatsDetailedMonitor;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsDetailedMonitor;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->performPoll(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsDetailedMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->checkShipAndDebugLevel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsDetailedMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsDetailedMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->setSamplingRateFromSetting(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsDetailedMonitor;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enable(JZ)V

    return-void
.end method

.method private buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 12
    .parameter "prefix"
    .parameter "includeTags"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/DropBoxManager;

    .line 548
    .local v10, dropBox:Landroid/os/DropBoxManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v9

    .line 549
    .local v9, config:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    new-instance v11, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v0, Lcom/android/internal/util/FileRotator;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    iget-wide v3, v9, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v5, v9, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNonMonotonicObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-wide v6, v9, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v1, v11

    move-object v2, v0

    move-object v4, v10

    move-object v5, p1

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v11
.end method

.method private checkShipAndDebugLevel()Z
    .locals 6

    .prologue
    .line 424
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    .line 425
    .local v2, ship:I
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getDebugLevel()I

    move-result v0

    .line 426
    .local v0, level:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    if-lez v0, :cond_0

    :cond_0
    const/4 v1, 0x0

    .line 427
    .local v1, ok:Z
    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> checkShipAndDebugLevel: ship="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SecProductFeature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ok="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return v1
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .parameter "sourceFile"
    .parameter "destFile"

    .prologue
    .line 499
    const/4 v7, 0x1

    .line 500
    .local v7, ret:Z
    const/4 v2, 0x0

    .line 501
    .local v2, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 506
    .local v5, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 507
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 508
    .end local v5           #out:Ljava/io/OutputStream;
    .local v6, out:Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 510
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, len:I
    if-lez v4, :cond_2

    .line 511
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 513
    .end local v0           #buf:[B
    .end local v4           #len:I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 515
    .end local v3           #in:Ljava/io/InputStream;
    .local v1, ex:Ljava/lang/Exception;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_1
    :try_start_3
    const-string v8, "NetworkStatsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(xxxz) NSS>> copyFile: Error-> failed to copy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 517
    const/4 v7, 0x0

    .line 519
    if-eqz v5, :cond_0

    .line 520
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 521
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 522
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 524
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return v7

    .line 512
    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v0       #buf:[B
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #len:I
    .restart local v6       #out:Ljava/io/OutputStream;
    :cond_2
    const/4 v7, 0x1

    .line 519
    if-eqz v6, :cond_3

    .line 520
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 521
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 522
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_5
    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 523
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 519
    .end local v0           #buf:[B
    .end local v4           #len:I
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v5, :cond_5

    .line 520
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 521
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 522
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 519
    :cond_6
    :goto_8
    throw v8

    .line 520
    :catch_1
    move-exception v9

    goto :goto_7

    .line 522
    :catch_2
    move-exception v9

    goto :goto_8

    .line 520
    .restart local v1       #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_2

    .line 522
    :catch_4
    move-exception v8

    goto :goto_3

    .line 520
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v0       #buf:[B
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #len:I
    .restart local v6       #out:Ljava/io/OutputStream;
    :catch_5
    move-exception v8

    goto :goto_4

    .line 522
    :catch_6
    move-exception v8

    goto :goto_5

    .line 519
    .end local v0           #buf:[B
    .end local v4           #len:I
    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_6

    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_6

    .line 513
    :catch_7
    move-exception v1

    goto :goto_1

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private deleteData()V
    .locals 10

    .prologue
    .line 1143
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1144
    .local v2, files:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 1145
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1146
    .local v5, name:Ljava/lang/String;
    const-string v7, "ex_if"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ex_dev"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ex_xt"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ex_uid"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ex_uid_tag"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ex_uidapp"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1152
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    .line 1153
    .local v6, ret:Z
    if-eqz v6, :cond_2

    .line 1154
    const-string v7, "NetworkStatsEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(xxxz) NSS>> deleteData: deleted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    .end local v6           #ret:Z
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1156
    .restart local v6       #ret:Z
    :cond_2
    const-string v7, "NetworkStatsEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(xxxz) NSS>> deleteData: failed to delete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1159
    .end local v1           #f:Ljava/io/File;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #ret:Z
    :cond_3
    return-void
.end method

.method private deleteExportData()V
    .locals 11

    .prologue
    .line 1161
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getOrCreateExportDir()Ljava/io/File;

    move-result-object v1

    .line 1162
    .local v1, exportDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1163
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 1164
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1165
    .local v6, name:Ljava/lang/String;
    const-string v8, "netstats_if."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "netstats_dev."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "netstats_xt."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "netstats_uids."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "netstats_uid_tag."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "netstats_uidapp."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1171
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    .line 1172
    .local v7, ret:Z
    if-eqz v7, :cond_2

    .line 1173
    const-string v8, "NetworkStatsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(xxxz) NSS>> deleteExportData: deleted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    .end local v7           #ret:Z
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1175
    .restart local v7       #ret:Z
    :cond_2
    const-string v8, "NetworkStatsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(xxxz) NSS>> deleteExportData: failed to delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1178
    .end local v2           #f:Ljava/io/File;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #ret:Z
    :cond_3
    return-void
.end method

.method private declared-synchronized disable(Z)V
    .locals 4
    .parameter "fromShutdown"

    .prologue
    .line 868
    monitor-enter p0

    :try_start_0
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> disable: Begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    const-string v0, "NetworkStatsEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(xxxz) NSS>> disable: Warning-> monitoring is not even started yet! start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    :goto_0
    monitor-exit p0

    return-void

    .line 875
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    if-eqz v0, :cond_1

    .line 876
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> disable: stopping monitor thread..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->setStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 879
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 882
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    .line 885
    :cond_1
    if-nez p1, :cond_6

    .line 886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    .line 887
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->setEndTimeToSetting(J)V

    .line 888
    const-string v0, "NetworkStatsEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(xxxz) NSS>> disable: start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v0, :cond_2

    .line 894
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 896
    :cond_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 899
    :cond_3
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v0, :cond_4

    .line 900
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 902
    :cond_4
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v0, :cond_5

    .line 903
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 905
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap(Z)V

    .line 906
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->saveIf()V

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 912
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 914
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 915
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    .line 917
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> disable: End!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 890
    :cond_6
    :try_start_4
    const-string v0, "NetworkStatsEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(xxxz) NSS>> disable: called from shutdown. don\'t set the end time! start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 880
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private dumpDev(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .locals 1
    .parameter "pw"
    .parameter "recorder"

    .prologue
    .line 1113
    const-string v0, "Dev stats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1115
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1116
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1117
    return-void
.end method

.method private dumpIf(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 1102
    const-string v4, "Active interfaces:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1104
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkStatsService;->getActiveIfaces()Ljava/util/HashMap;

    move-result-object v0

    .line 1105
    .local v0, activeIfaces:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1106
    .local v3, iface:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    .line 1107
    .local v2, ident:Lcom/android/server/net/NetworkIdentitySet;
    const-string v4, "iface="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1108
    const-string v4, " ident="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1110
    .end local v2           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v3           #iface:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1111
    return-void
.end method

.method private dumpUid(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .locals 1
    .parameter "pw"
    .parameter "recorder"

    .prologue
    .line 1125
    const-string v0, "UID stats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1127
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1128
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1129
    return-void
.end method

.method private dumpUidNameMap(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "writer"

    .prologue
    .line 1137
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1138
    .local v2, o:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;

    .line 1139
    .local v0, detail:Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->toFormatString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    .end local v0           #detail:Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    .end local v2           #o:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private dumpUidTag(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .locals 1
    .parameter "pw"
    .parameter "recorder"

    .prologue
    .line 1131
    const-string v0, "UID tag stats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1133
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1134
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1135
    return-void
.end method

.method private dumpXt(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .locals 1
    .parameter "pw"
    .parameter "recorder"

    .prologue
    .line 1119
    const-string v0, "Xt stats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1121
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1122
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1123
    return-void
.end method

.method private declared-synchronized enable(JZ)V
    .locals 6
    .parameter "bucketSize"
    .parameter "fromSystemReady"

    .prologue
    const-wide/16 v4, 0x3e8

    .line 821
    monitor-enter p0

    :try_start_0
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> enable: Begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> enable: End! already monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    :goto_0
    monitor-exit p0

    return-void

    .line 831
    :cond_0
    if-nez p3, :cond_1

    .line 832
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    .line 833
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->setStartTimeToSetting(J)V

    .line 836
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->deleteData()V

    .line 842
    :goto_1
    cmp-long v0, p1, v4

    if-ltz v0, :cond_2

    .line 843
    sput-wide p1, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    .line 846
    :goto_2
    const-string v0, "NetworkStatsEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(xxxz) NSS>> enable: bucket size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> enable: creating recorders..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const-string v0, "ex_dev"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 850
    const-string v0, "ex_xt"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 851
    const-string v0, "ex_uid"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 852
    const-string v0, "ex_uid_tag"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 854
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 855
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 856
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 857
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 859
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    .line 861
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> enable: creating thread..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    new-instance v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;-><init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    .line 863
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 865
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> enable: End!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 838
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getStartTimeFromSetting()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    .line 839
    const-string v0, "NetworkStatsEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(xxxz) NSS>> enable: monitoring started before the boot. start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 845
    :cond_2
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method private exportData(ZLcom/android/internal/util/IndentingPrintWriter;)Z
    .locals 34
    .parameter "deleteRaw"
    .parameter "pw_adb"

    .prologue
    .line 923
    const-string v30, "NetworkStatsEx"

    const-string v31, "(xxxz) NSS>> exportData: Begin..."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 926
    const-string v30, "NetworkStatsEx"

    const-string v31, "(xxxz) NSS>> exportData: Error-> not support to export data during monitoring!"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    if-eqz p2, :cond_0

    const-string v30, "Still in monitoring, no data is exported!"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    :cond_0
    const/16 v30, 0x0

    .line 1099
    :goto_0
    return v30

    .line 931
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 933
    .local v18, now:J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getStartTimeFromSetting()J

    move-result-wide v14

    .line 934
    .local v14, lastStartTime:J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getEndTimeFromSetting()J

    move-result-wide v12

    .line 952
    .local v12, lastEndTime:J
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: time start="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", end="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    cmp-long v30, v14, v12

    if-ltz v30, :cond_3

    .line 954
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: End! no data for this time period ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    if-eqz p2, :cond_2

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "no data for this time period ("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    :cond_2
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 960
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->deleteExportData()V

    .line 963
    const-string v30, "ex_dev"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v5

    .line 964
    .local v5, devRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-virtual {v5}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    .line 965
    const-string v30, "ex_xt"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v29

    .line 966
    .local v29, xtRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    .line 967
    const-string v30, "ex_uid"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v25

    .line 968
    .local v25, uidRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    .line 969
    const-string v30, "ex_uid_tag"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v26

    .line 970
    .local v26, uidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    .line 973
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 982
    .local v24, suffix:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getOrCreateExportDir()Ljava/io/File;

    move-result-object v7

    .line 985
    .local v7, exportDir:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 986
    .local v20, now0:J
    new-instance v9, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_dev."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 987
    .local v9, file:Ljava/io/File;
    const/16 v27, 0x0

    .line 988
    .local v27, writer:Ljava/io/PrintWriter;
    const/16 v22, 0x0

    .line 990
    .local v22, pw:Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_0
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v28, Ljava/io/PrintWriter;

    move-object/from16 v0, v28

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    .end local v27           #writer:Ljava/io/PrintWriter;
    .local v28, writer:Ljava/io/PrintWriter;
    :try_start_1
    new-instance v23, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_16

    .line 993
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .local v23, pw:Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpDev(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_17

    .line 1000
    if-eqz v28, :cond_4

    .line 1001
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 1002
    :cond_4
    :goto_1
    const/16 v28, 0x0

    .line 1003
    const/16 v23, 0x0

    .line 1005
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1008
    new-instance v9, Ljava/io/File;

    .end local v9           #file:Ljava/io/File;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_xt."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1010
    .restart local v9       #file:Ljava/io/File;
    :try_start_4
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    new-instance v27, Ljava/io/PrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1012
    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    :try_start_5
    new-instance v22, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_14

    .line 1013
    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpXt(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_15

    .line 1020
    if-eqz v27, :cond_5

    .line 1021
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 1022
    :cond_5
    :goto_2
    const/16 v28, 0x0

    .line 1023
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    const/16 v23, 0x0

    .line 1025
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1028
    new-instance v9, Ljava/io/File;

    .end local v9           #file:Ljava/io/File;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_uids."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1030
    .restart local v9       #file:Ljava/io/File;
    :try_start_8
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    new-instance v27, Ljava/io/PrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1032
    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    :try_start_9
    new-instance v22, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_12

    .line 1033
    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUid(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_13

    .line 1040
    if-eqz v27, :cond_6

    .line 1041
    :try_start_b
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 1042
    :cond_6
    :goto_3
    const/16 v28, 0x0

    .line 1043
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    const/16 v23, 0x0

    .line 1045
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1048
    new-instance v9, Ljava/io/File;

    .end local v9           #file:Ljava/io/File;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_uid_tag."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1050
    .restart local v9       #file:Ljava/io/File;
    :try_start_c
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    new-instance v27, Ljava/io/PrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 1052
    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    :try_start_d
    new-instance v22, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    .line 1053
    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidTag(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    .line 1060
    if-eqz v27, :cond_7

    .line 1061
    :try_start_f
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 1062
    :cond_7
    :goto_4
    const/16 v27, 0x0

    .line 1063
    const/16 v22, 0x0

    .line 1065
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 1069
    .local v10, files:[Ljava/io/File;
    move-object v3, v10

    .local v3, arr$:[Ljava/io/File;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_5
    move/from16 v0, v16

    if-ge v11, v0, :cond_18

    aget-object v8, v3, v11

    .line 1070
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1071
    .local v17, name:Ljava/lang/String;
    const-string v30, "ex_if"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_8

    const-string v30, "ex_uidapp"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 1075
    :cond_8
    const-string v30, "ex_if"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 1076
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_if."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1077
    :cond_9
    const-string v30, "ex_uidapp"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 1078
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_uidapp."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1080
    :cond_a
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v4, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1083
    .local v4, dest:Ljava/io/File;
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: copying "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1069
    .end local v4           #dest:Ljava/io/File;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 994
    .end local v3           #arr$:[Ljava/io/File;
    .end local v8           #f:Ljava/io/File;
    .end local v10           #files:[Ljava/io/File;
    .end local v11           #i$:I
    .end local v16           #len$:I
    .end local v17           #name:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 995
    .local v6, ex:Ljava/lang/Exception;
    :goto_6
    :try_start_10
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 997
    if-eqz p2, :cond_c

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 998
    :cond_c
    const/16 v30, 0x0

    .line 1000
    if-eqz v27, :cond_d

    .line 1001
    :try_start_11
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 1002
    :cond_d
    :goto_7
    const/16 v27, 0x0

    .line 1003
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1000
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v30

    :goto_8
    if-eqz v27, :cond_e

    .line 1001
    :try_start_12
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    .line 1002
    :cond_e
    :goto_9
    const/16 v27, 0x0

    .line 1003
    const/16 v22, 0x0

    .line 1000
    throw v30

    .line 1014
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    :catch_1
    move-exception v6

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .line 1015
    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    :goto_a
    :try_start_13
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1017
    if-eqz p2, :cond_f

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 1018
    :cond_f
    const/16 v30, 0x0

    .line 1020
    if-eqz v27, :cond_10

    .line 1021
    :try_start_14
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    .line 1022
    :cond_10
    :goto_b
    const/16 v27, 0x0

    .line 1023
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1020
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    :catchall_1
    move-exception v30

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    :goto_c
    if-eqz v27, :cond_11

    .line 1021
    :try_start_15
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    .line 1022
    :cond_11
    :goto_d
    const/16 v27, 0x0

    .line 1023
    const/16 v22, 0x0

    .line 1020
    throw v30

    .line 1034
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    :catch_2
    move-exception v6

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .line 1035
    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    :goto_e
    :try_start_16
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1037
    if-eqz p2, :cond_12

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 1038
    :cond_12
    const/16 v30, 0x0

    .line 1040
    if-eqz v27, :cond_13

    .line 1041
    :try_start_17
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    .line 1042
    :cond_13
    :goto_f
    const/16 v27, 0x0

    .line 1043
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1040
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    :catchall_2
    move-exception v30

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    :goto_10
    if-eqz v27, :cond_14

    .line 1041
    :try_start_18
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a

    .line 1042
    :cond_14
    :goto_11
    const/16 v27, 0x0

    .line 1043
    const/16 v22, 0x0

    .line 1040
    throw v30

    .line 1054
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    :catch_3
    move-exception v6

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .line 1055
    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    :goto_12
    :try_start_19
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1057
    if-eqz p2, :cond_15

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 1058
    :cond_15
    const/16 v30, 0x0

    .line 1060
    if-eqz v27, :cond_16

    .line 1061
    :try_start_1a
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e

    .line 1062
    :cond_16
    :goto_13
    const/16 v27, 0x0

    .line 1063
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1060
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    :catchall_3
    move-exception v30

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    :goto_14
    if-eqz v27, :cond_17

    .line 1061
    :try_start_1b
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    .line 1062
    :cond_17
    :goto_15
    const/16 v27, 0x0

    .line 1063
    const/16 v22, 0x0

    .line 1060
    throw v30

    .line 1092
    .restart local v3       #arr$:[Ljava/io/File;
    .restart local v10       #files:[Ljava/io/File;
    .restart local v11       #i$:I
    .restart local v16       #len$:I
    :cond_18
    if-eqz p1, :cond_19

    .line 1093
    const-string v30, "NetworkStatsEx"

    const-string v31, "(xxxz) NSS>> exportData: deleting raw data..."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->deleteData()V

    .line 1097
    :cond_19
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: End! duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v18

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    if-eqz p2, :cond_1a

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "export is done ("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v18

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ms)! dir="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    :cond_1a
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1001
    .end local v3           #arr$:[Ljava/io/File;
    .end local v10           #files:[Ljava/io/File;
    .end local v11           #i$:I
    .end local v16           #len$:I
    :catch_4
    move-exception v31

    goto/16 :goto_9

    .restart local v6       #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v31

    goto/16 :goto_7

    .end local v6           #ex:Ljava/lang/Exception;
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    :catch_6
    move-exception v30

    goto/16 :goto_1

    .line 1021
    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    :catch_7
    move-exception v31

    goto/16 :goto_d

    .restart local v6       #ex:Ljava/lang/Exception;
    :catch_8
    move-exception v31

    goto/16 :goto_b

    .end local v6           #ex:Ljava/lang/Exception;
    :catch_9
    move-exception v30

    goto/16 :goto_2

    .line 1041
    :catch_a
    move-exception v31

    goto/16 :goto_11

    .restart local v6       #ex:Ljava/lang/Exception;
    :catch_b
    move-exception v31

    goto/16 :goto_f

    .end local v6           #ex:Ljava/lang/Exception;
    :catch_c
    move-exception v30

    goto/16 :goto_3

    .line 1061
    :catch_d
    move-exception v31

    goto :goto_15

    .restart local v6       #ex:Ljava/lang/Exception;
    :catch_e
    move-exception v31

    goto/16 :goto_13

    .end local v6           #ex:Ljava/lang/Exception;
    :catch_f
    move-exception v30

    goto/16 :goto_4

    .line 1060
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_4
    move-exception v30

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_14

    :catchall_5
    move-exception v30

    goto/16 :goto_14

    .line 1054
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    :catch_10
    move-exception v6

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_12

    :catch_11
    move-exception v6

    goto/16 :goto_12

    .line 1040
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_6
    move-exception v30

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_10

    :catchall_7
    move-exception v30

    goto/16 :goto_10

    .line 1034
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    :catch_12
    move-exception v6

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_e

    :catch_13
    move-exception v6

    goto/16 :goto_e

    .line 1020
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_8
    move-exception v30

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_c

    :catchall_9
    move-exception v30

    goto/16 :goto_c

    .line 1014
    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    :catch_14
    move-exception v6

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_a

    :catch_15
    move-exception v6

    goto/16 :goto_a

    .line 1000
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    :catchall_a
    move-exception v30

    move-object/from16 v27, v28

    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    goto/16 :goto_8

    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    :catchall_b
    move-exception v30

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    goto/16 :goto_8

    .line 994
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    :catch_16
    move-exception v6

    move-object/from16 v27, v28

    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    goto/16 :goto_6

    .end local v22           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v27           #writer:Ljava/io/PrintWriter;
    .restart local v23       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v28       #writer:Ljava/io/PrintWriter;
    :catch_17
    move-exception v6

    move-object/from16 v22, v23

    .end local v23           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v22       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v27, v28

    .end local v28           #writer:Ljava/io/PrintWriter;
    .restart local v27       #writer:Ljava/io/PrintWriter;
    goto/16 :goto_6
.end method

.method private getConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .locals 7

    .prologue
    .line 540
    new-instance v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    sget-wide v1, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    sget-wide v3, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRotateFileTime:J

    sget-wide v5, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRemoveFileTime:J

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    return-object v0
.end method

.method private getDebugLevel()I
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 436
    const-string v5, "ro.debug_level"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, state:Ljava/lang/String;
    const/4 v0, -0x1

    .line 439
    .local v0, debugLevel:I
    const-string v5, "NetworkStatsEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDebugLevel  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v5, "Unknown"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 441
    const-string v4, "NetworkStatsEx"

    const-string v5, "(xxxz) NSS>> getDebugLevel: 0 - unknown state"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_0
    return v3

    .line 445
    :cond_0
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 451
    const/16 v5, 0x4f4c

    if-ne v0, v5, :cond_1

    .line 452
    const-string v4, "NetworkStatsEx"

    const-string v5, "(xxxz) NSS>> getDebugLevel: 0 - low"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, ne:Ljava/lang/NumberFormatException;
    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxxz) NSS>> getDebugLevel: 0 - state ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    .end local v1           #ne:Ljava/lang/NumberFormatException;
    :cond_1
    const/16 v5, 0x494d

    if-ne v0, v5, :cond_2

    .line 455
    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> getDebugLevel: 1 - mid"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v3, 0x1

    goto :goto_0

    .line 457
    :cond_2
    const/16 v5, 0x4948

    if-ne v0, v5, :cond_3

    .line 458
    const-string v3, "NetworkStatsEx"

    const-string v5, "(xxxz) NSS>> getDebugLevel: 2 - high"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 459
    goto :goto_0

    .line 461
    :cond_3
    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxxz) NSS>> getDebugLevel: 0 - level ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEndTimeFromSetting()J
    .locals 4

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_end_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateExportDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 556
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/netstats"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> getOrCreateExportDir: Error-> failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v0, 0x0

    .line 563
    .end local v0           #dir:Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method private getOrCreateMonitorDir()Ljava/io/File;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x1f8

    const/4 v5, -0x1

    .line 566
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "monitor"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 567
    .local v0, monitorDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 568
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 569
    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> getOrCreateMonitorDir: Error-> failed to create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 589
    :goto_0
    return-object v1

    .line 573
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 578
    new-instance v1, Ljava/io/File;

    const-string v3, "netstats"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 579
    .local v1, netstatsDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 580
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 581
    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> getOrCreateMonitorDir: Error-> failed to create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 582
    goto :goto_0

    .line 585
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0
.end method

.method private getSamplingRateFromSetting()I
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_sampling_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getStartTimeFromSetting()J
    .locals 4

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_start_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private isInMonitoring()Z
    .locals 5

    .prologue
    .line 811
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 812
    .local v0, started:Z
    :goto_0
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> isInMonitoring: start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", started="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return v0

    .line 811
    .end local v0           #started:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performPoll(IZ)V
    .locals 3
    .parameter "flags"
    .parameter "needWakeLock"

    .prologue
    .line 625
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> performPoll: Begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 627
    if-eqz p2, :cond_0

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 631
    :cond_0
    :try_start_1
    const-string v0, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> performPoll: performPollLocked..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->performPollLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    if-eqz p2, :cond_1

    .line 635
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 637
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 638
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> performPoll: End!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void

    .line 634
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_2

    .line 635
    :try_start_3
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 634
    :cond_2
    throw v0

    .line 637
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private performPollLocked(I)V
    .locals 17
    .parameter "flags"

    .prologue
    .line 641
    const-string v13, "NetworkStatsEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(xxxz) NSS>> performPollLocked: Begin... flags=0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v13}, Lcom/android/server/net/NetworkStatsService;->isSystemReady()Z

    move-result v13

    if-nez v13, :cond_0

    .line 643
    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> performPollLocked: End! System NOT ready!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    .line 649
    and-int/lit8 v13, p1, 0x1

    if-eqz v13, :cond_2

    const/4 v9, 0x1

    .line 650
    .local v9, persistNetwork:Z
    :goto_1
    and-int/lit8 v13, p1, 0x2

    if-eqz v13, :cond_3

    const/4 v10, 0x1

    .line 651
    .local v10, persistUid:Z
    :goto_2
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_4

    const/4 v8, 0x1

    .line 653
    .local v8, persistForce:Z
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 656
    .local v2, currentTime:J
    :try_start_0
    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> performPollLocked: recording..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v13}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    move-result-object v11

    .line 660
    .local v11, uidSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v13}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v12

    .line 661
    .local v12, xtSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v13}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v4

    .line 663
    .local v4, devSnapshot:Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v13}, Lcom/android/server/net/NetworkStatsService;->getActiveIfaces()Ljava/util/HashMap;

    move-result-object v1

    .line 664
    .local v1, activeIfaces:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v4, v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 665
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v12, v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 666
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v11, v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 667
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v11, v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 669
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 683
    if-eqz v8, :cond_5

    .line 684
    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> performPollLocked: persistForce"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 686
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 688
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 702
    :cond_1
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    sub-long v5, v13, v15

    .line 703
    .local v5, duration:J
    const-string v13, "NetworkStatsEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(xxxz) NSS>> performPollLocked: End! duration="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 649
    .end local v1           #activeIfaces:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .end local v2           #currentTime:J
    .end local v4           #devSnapshot:Landroid/net/NetworkStats;
    .end local v5           #duration:J
    .end local v8           #persistForce:Z
    .end local v9           #persistNetwork:Z
    .end local v10           #persistUid:Z
    .end local v11           #uidSnapshot:Landroid/net/NetworkStats;
    .end local v12           #xtSnapshot:Landroid/net/NetworkStats;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 650
    .restart local v9       #persistNetwork:Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 651
    .restart local v10       #persistUid:Z
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 671
    .restart local v2       #currentTime:J
    .restart local v8       #persistForce:Z
    :catch_0
    move-exception v7

    .line 672
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> performPollLocked: Error-> problem reading network stats"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 675
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 676
    .local v7, e:Landroid/os/RemoteException;
    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> performPollLocked: Error-> RemoteException!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 690
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v1       #activeIfaces:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .restart local v4       #devSnapshot:Landroid/net/NetworkStats;
    .restart local v11       #uidSnapshot:Landroid/net/NetworkStats;
    .restart local v12       #xtSnapshot:Landroid/net/NetworkStats;
    :cond_5
    if-eqz v9, :cond_6

    .line 691
    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> performPollLocked: persistNetwork"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 693
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 695
    :cond_6
    if-eqz v10, :cond_1

    .line 696
    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> performPollLocked: persistUid"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 698
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v13, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    goto :goto_4
.end method

.method private saveIf()V
    .locals 17

    .prologue
    .line 706
    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> saveIf: Begin..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v13

    if-nez v13, :cond_0

    .line 708
    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> saveIf: End! not in monitoring."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 713
    .local v7, now:J
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ex_if-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 714
    .local v3, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 715
    .local v11, writer:Ljava/io/PrintWriter;
    const/4 v9, 0x0

    .line 717
    .local v9, pw:Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_0
    const-string v13, "NetworkStatsEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(xxxz) NSS>> saveIf: writing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v12, Ljava/io/PrintWriter;

    invoke-direct {v12, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 719
    .end local v11           #writer:Ljava/io/PrintWriter;
    .local v12, writer:Ljava/io/PrintWriter;
    :try_start_1
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v13, "  "

    invoke-direct {v10, v12, v13}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 720
    .end local v9           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .local v10, pw:Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_2
    const-string v13, "Active interfaces:"

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 722
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v13}, Lcom/android/server/net/NetworkStatsService;->getActiveIfaces()Ljava/util/HashMap;

    move-result-object v1

    .line 723
    .local v1, activeIfaces:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 724
    .local v6, iface:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkIdentitySet;

    .line 725
    .local v5, ident:Lcom/android/server/net/NetworkIdentitySet;
    const-string v13, "iface="

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    const-string v13, " ident="

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 729
    .end local v1           #activeIfaces:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v6           #iface:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v9, v10

    .end local v10           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    move-object v11, v12

    .line 730
    .end local v12           #writer:Ljava/io/PrintWriter;
    .local v2, ex:Ljava/lang/Exception;
    .restart local v11       #writer:Ljava/io/PrintWriter;
    :goto_2
    :try_start_3
    const-string v13, "NetworkStatsEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(xxxz) NSS>> saveIf: Error-> failed to write "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "!!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 733
    if-eqz v11, :cond_1

    .line 734
    :try_start_4
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 735
    :cond_1
    :goto_3
    const/4 v11, 0x0

    .line 737
    .end local v2           #ex:Ljava/lang/Exception;
    :goto_4
    const-string v13, "NetworkStatsEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(xxxz) NSS>> saveIf: End! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " duration="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v7

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 728
    .end local v9           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v11           #writer:Ljava/io/PrintWriter;
    .restart local v1       #activeIfaces:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v10       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v12       #writer:Ljava/io/PrintWriter;
    :cond_2
    :try_start_5
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 733
    if-eqz v12, :cond_3

    .line 734
    :try_start_6
    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 735
    :cond_3
    :goto_5
    const/4 v11, 0x0

    .end local v12           #writer:Ljava/io/PrintWriter;
    .restart local v11       #writer:Ljava/io/PrintWriter;
    move-object v9, v10

    .line 736
    .end local v10           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    goto :goto_4

    .line 733
    .end local v1           #activeIfaces:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v13

    :goto_6
    if-eqz v11, :cond_4

    .line 734
    :try_start_7
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 735
    :cond_4
    :goto_7
    const/4 v11, 0x0

    .line 733
    throw v13

    .line 734
    :catch_1
    move-exception v14

    goto :goto_7

    .restart local v2       #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v13

    goto :goto_3

    .end local v2           #ex:Ljava/lang/Exception;
    .end local v9           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v11           #writer:Ljava/io/PrintWriter;
    .restart local v1       #activeIfaces:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v10       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v12       #writer:Ljava/io/PrintWriter;
    :catch_3
    move-exception v13

    goto :goto_5

    .line 733
    .end local v1           #activeIfaces:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v10           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12           #writer:Ljava/io/PrintWriter;
    .restart local v11       #writer:Ljava/io/PrintWriter;
    goto :goto_6

    .end local v9           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v11           #writer:Ljava/io/PrintWriter;
    .restart local v10       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v12       #writer:Ljava/io/PrintWriter;
    :catchall_2
    move-exception v13

    move-object v9, v10

    .end local v10           #pw:Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9       #pw:Lcom/android/internal/util/IndentingPrintWriter;
    move-object v11, v12

    .end local v12           #writer:Ljava/io/PrintWriter;
    .restart local v11       #writer:Ljava/io/PrintWriter;
    goto :goto_6

    .line 729
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v11           #writer:Ljava/io/PrintWriter;
    .restart local v12       #writer:Ljava/io/PrintWriter;
    :catch_5
    move-exception v2

    move-object v11, v12

    .end local v12           #writer:Ljava/io/PrintWriter;
    .restart local v11       #writer:Ljava/io/PrintWriter;
    goto :goto_2
.end method

.method private saveUidNameMap()V
    .locals 10

    .prologue
    .line 740
    const-string v6, "NetworkStatsEx"

    const-string v7, "(xxxz) NSS>> saveUidNameMap: Begin..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 743
    .local v2, now:J
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ex_uidapp-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 744
    .local v1, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 746
    .local v4, writer:Ljava/io/PrintWriter;
    :try_start_0
    const-string v6, "NetworkStatsEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(xxxz) NSS>> saveUidNameMap: writing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    .end local v4           #writer:Ljava/io/PrintWriter;
    .local v5, writer:Ljava/io/PrintWriter;
    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidNameMap(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 753
    if-eqz v5, :cond_0

    .line 754
    :try_start_2
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 755
    .end local v5           #writer:Ljava/io/PrintWriter;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 757
    .restart local v4       #writer:Ljava/io/PrintWriter;
    const-string v6, "NetworkStatsEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(xxxz) NSS>> saveUidNameMap: End! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-void

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v6, "NetworkStatsEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(xxxz) NSS>> saveUidNameMap: Error-> failed to write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 753
    if-eqz v4, :cond_0

    .line 754
    :try_start_4
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0

    .line 753
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_1

    .line 754
    :try_start_5
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 755
    :cond_1
    :goto_3
    const/4 v4, 0x0

    .line 753
    throw v6

    .line 754
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v4           #writer:Ljava/io/PrintWriter;
    .restart local v5       #writer:Ljava/io/PrintWriter;
    :catch_3
    move-exception v6

    goto :goto_0

    .line 753
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #writer:Ljava/io/PrintWriter;
    .restart local v4       #writer:Ljava/io/PrintWriter;
    goto :goto_2

    .line 749
    .end local v4           #writer:Ljava/io/PrintWriter;
    .restart local v5       #writer:Ljava/io/PrintWriter;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5           #writer:Ljava/io/PrintWriter;
    .restart local v4       #writer:Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method private setEndTimeToSetting(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_end_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 614
    return-void
.end method

.method private setSamplingRateFromSetting(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_sampling_rate"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 608
    return-void
.end method

.method private setStartTimeToSetting(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_start_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 620
    return-void
.end method

.method private test(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .parameter "writer"
    .parameter "pw"

    .prologue
    .line 1183
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> test: Begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> test: End!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    return-void
.end method

.method private updateUidNameMap(Z)V
    .locals 7
    .parameter "save"

    .prologue
    .line 760
    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> updateUidNameMap: Begin..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 763
    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> updateUidNameMap: End! (null)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 770
    .local v1, now:J
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsRecorder;->getUids()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap([I)Z

    move-result v0

    .line 772
    .local v0, new_uid:Z
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsRecorder;->getUids()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap([I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 773
    const/4 v0, 0x1

    .line 775
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsRecorder;->getUids()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap([I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 776
    const/4 v0, 0x1

    .line 778
    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 779
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->saveUidNameMap()V

    .line 780
    :cond_3
    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> updateUidNameMap: End! duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateUidNameMap([I)Z
    .locals 6
    .parameter "uids"

    .prologue
    .line 783
    const/4 v2, 0x0

    .line 785
    .local v2, new_uid:Z
    if-eqz p1, :cond_0

    array-length v3, p1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 786
    :cond_0
    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> undateUidNameMap: End! no uids"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v3, 0x0

    .line 805
    :goto_0
    return v3

    .line 790
    :cond_1
    const/4 v0, 0x0

    .line 791
    .local v0, detail:Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 792
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #detail:Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    check-cast v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;

    .line 793
    .restart local v0       #detail:Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    if-nez v0, :cond_2

    .line 794
    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> undateUidNameMap: add uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;

    .end local v0           #detail:Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    aget v3, p1, v1

    invoke-direct {v0, p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;-><init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;I)V

    .line 796
    .restart local v0       #detail:Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const/4 v2, 0x1

    .line 791
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 805
    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/HashSet;)Z
    .locals 12
    .parameter "writer"
    .parameter "pw"
    .parameter "argSet"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1196
    const-string v8, "--enablex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1197
    .local v1, enablex:Z
    const-string v8, "--disablex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1198
    .local v0, disablex:Z
    const-string v8, "--fullex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "fullex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_0
    move v4, v7

    .line 1199
    .local v4, fullex:Z
    :goto_0
    const-string v8, "--exportex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "exportex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "--export"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "--export"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_1
    move v2, v7

    .line 1201
    .local v2, exportex:Z
    :goto_1
    const-string v8, "--exportexx"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "exportexx"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_2
    move v3, v7

    .line 1202
    .local v3, exportexx:Z
    :goto_2
    const-string v8, "--testex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "testex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_3
    move v5, v7

    .line 1204
    .local v5, testex:Z
    :goto_3
    if-eqz v5, :cond_8

    .line 1205
    const-string v6, "=== testex ===================================="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->test(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1207
    const-string v6, "=== testex ===================================="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    :goto_4
    return v7

    .end local v2           #exportex:Z
    .end local v3           #exportexx:Z
    .end local v4           #fullex:Z
    .end local v5           #testex:Z
    :cond_4
    move v4, v6

    .line 1198
    goto :goto_0

    .restart local v4       #fullex:Z
    :cond_5
    move v2, v6

    .line 1199
    goto :goto_1

    .restart local v2       #exportex:Z
    :cond_6
    move v3, v6

    .line 1201
    goto :goto_2

    .restart local v3       #exportexx:Z
    :cond_7
    move v5, v6

    .line 1202
    goto :goto_3

    .line 1210
    .restart local v5       #testex:Z
    :cond_8
    if-eqz v3, :cond_9

    .line 1211
    const-string v8, "Exporting detailed network stats monitoring data... (keep raw data)"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1212
    invoke-direct {p0, v6, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->exportData(ZLcom/android/internal/util/IndentingPrintWriter;)Z

    goto :goto_4

    .line 1216
    :cond_9
    if-eqz v2, :cond_a

    .line 1217
    const-string v6, "Export detailed network stats monitoring data..."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1218
    invoke-direct {p0, v7, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->exportData(ZLcom/android/internal/util/IndentingPrintWriter;)Z

    goto :goto_4

    .line 1222
    :cond_a
    if-eqz v0, :cond_b

    .line 1223
    const-string v8, "Disable detailed network stats monitoring"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    goto :goto_4

    .line 1228
    :cond_b
    if-eqz v1, :cond_c

    .line 1229
    const-string v8, "Enable detailed network stats monitoring"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1230
    const-wide/16 v8, -0x1

    invoke-direct {p0, v8, v9, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enable(JZ)V

    goto :goto_4

    .line 1233
    :cond_c
    if-eqz v4, :cond_e

    .line 1234
    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    iget-wide v10, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    cmp-long v6, v8, v10

    if-gtz v6, :cond_d

    .line 1235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Monitoring is stopped! last start="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", end="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1239
    :cond_d
    const-string v6, "netstats: begin ==="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpIf(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1241
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpDev(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    .line 1242
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpXt(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    .line 1243
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUid(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    .line 1244
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidTag(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    .line 1245
    const-string v6, "UID-Name Mapping:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidNameMap(Ljava/io/PrintWriter;)V

    .line 1247
    const-string v6, "netstats: end ==="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    move v7, v6

    .line 1251
    goto/16 :goto_4
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 490
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> reset: Begin..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 492
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    .line 493
    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> reset: End!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method public systemReady()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 465
    const-string v2, "NetworkStatsEx"

    const-string v3, "(xxxz) NSS>> systemReady: Begin..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "action.NETWORK_MONITOR"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, intentSetting:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->checkShipAndDebugLevel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "persist.sys.monitor_network"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 475
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getSamplingRateFromSetting()I

    move-result v1

    .line 476
    .local v1, rate:I
    if-ge v1, v5, :cond_0

    .line 477
    const/4 v1, 0x1

    .line 478
    :cond_0
    const-string v2, "NetworkStatsEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxz) NSS>> systemReady: rate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    int-to-long v2, v1

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enable(JZ)V

    .line 480
    const-string v2, "NetworkStatsEx"

    const-string v3, "(xxxz) NSS>> systemReady: End!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v1           #rate:I
    :goto_0
    return-void

    .line 483
    :cond_1
    const-string v2, "NetworkStatsEx"

    const-string v3, "(xxxz) NSS>> systemReady: ship or debug is low. disable the monitoring!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "persist.sys.monitor_network"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 485
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    goto :goto_0
.end method
