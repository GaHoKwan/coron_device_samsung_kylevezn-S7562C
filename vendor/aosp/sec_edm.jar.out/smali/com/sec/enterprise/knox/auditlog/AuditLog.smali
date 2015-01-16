.class public Lcom/sec/enterprise/knox/auditlog/AuditLog;
.super Ljava/lang/Object;
.source "AuditLog.java"


# static fields
.field public static final ACTION_AUDIT_CRITICAL_SIZE:Ljava/lang/String; = "mdm.intent.action.audit.log.critical.size"

.field public static final ACTION_AUDIT_FULL_SIZE:Ljava/lang/String; = "mdm.intent.action.audit.log.full.size"

.field public static final ACTION_AUDIT_MAXIMUM_SIZE:Ljava/lang/String; = "mdm.intent.action.audit.log.maximum.size"

.field public static final ACTION_DUMP_LOG_RESULT:Ljava/lang/String; = "mdm.intent.action.dump.audit.log.result"

.field public static final ACTION_LOG_EXCEPTION:Ljava/lang/String; = "mdm.intent.action.audit.log.exception"

.field private static final ALERT:I = 0x1

.field public static final AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field private static final CRITICAL:I = 0x2

.field private static final ERROR:I = 0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final EXTRA_AUDIT_RESULT:Ljava/lang/String; = "mdm.intent.extra.audit.log.result"

.field private static final NOTICE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AuditLog"

.field private static final WARNING:I = 0x4

.field private static mAuditLog:Lcom/sec/enterprise/knox/auditlog/AuditLog;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const-string v0, "auditlog"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    .line 228
    iput-object p1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mContext:Landroid/content/Context;

    .line 229
    return-void
.end method

.method public static a(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "moduleGroup"
    .parameter "outcome"
    .parameter "uid"
    .parameter "swComponent"
    .parameter "logMessage"

    .prologue
    .line 606
    const-string v1, "AuditLog.a"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 607
    const-string v1, "auditlog"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    move-result-object v0

    .line 608
    .local v0, auditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;
    if-eqz v0, :cond_0

    .line 610
    const/4 v1, 0x1

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v7

    .line 612
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Access to AuditLogger not allowed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "moduleGroup"
    .parameter "outcome"
    .parameter "uid"
    .parameter "swComponent"
    .parameter "logMessage"

    .prologue
    .line 654
    const-string v1, "AuditLog.c"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 655
    const-string v1, "auditlog"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    move-result-object v0

    .line 656
    .local v0, auditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;
    if-eqz v0, :cond_0

    .line 658
    const/4 v1, 0x2

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v7

    .line 661
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Access to AuditLogger not allowed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "moduleGroup"
    .parameter "outcome"
    .parameter "uid"
    .parameter "swComponent"
    .parameter "logMessage"

    .prologue
    .line 703
    const-string v1, "AuditLog.e"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 704
    const-string v1, "auditlog"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    move-result-object v0

    .line 705
    .local v0, auditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;
    if-eqz v0, :cond_0

    .line 707
    const/4 v1, 0x3

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v7

    .line 709
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Access to AuditLogger not allowed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/auditlog/AuditLog;
    .locals 3
    .parameter "context"

    .prologue
    .line 245
    sget-object v1, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    sget-object v0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditLog:Lcom/sec/enterprise/knox/auditlog/AuditLog;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/sec/enterprise/knox/auditlog/AuditLog;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/enterprise/knox/auditlog/AuditLog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditLog:Lcom/sec/enterprise/knox/auditlog/AuditLog;

    .line 249
    :cond_0
    sget-object v0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditLog:Lcom/sec/enterprise/knox/auditlog/AuditLog;

    monitor-exit v1

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static n(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "moduleGroup"
    .parameter "outcome"
    .parameter "uid"
    .parameter "swComponent"
    .parameter "logMessage"

    .prologue
    .line 800
    const-string v1, "AuditLog.n"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 801
    const-string v1, "auditlog"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    move-result-object v0

    .line 802
    .local v0, auditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;
    if-eqz v0, :cond_0

    .line 804
    const/4 v1, 0x5

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 806
    :catch_0
    move-exception v7

    .line 807
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Access to AuditLogger not allowed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "moduleGroup"
    .parameter "outcome"
    .parameter "uid"
    .parameter "swComponent"
    .parameter "logMessage"

    .prologue
    .line 751
    const-string v1, "AuditLog.w"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 752
    const-string v1, "auditlog"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    move-result-object v0

    .line 753
    .local v0, auditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;
    if-eqz v0, :cond_0

    .line 755
    const/4 v1, 0x4

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v7

    .line 758
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Access to AuditLogger not allowed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public disableAuditLog()Z
    .locals 3

    .prologue
    .line 318
    const-string v1, "AuditLog.disableAuditLog"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->disableAuditLog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 326
    :goto_0
    return v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Failed to disableAuditLog"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableIPTablesLogging()Z
    .locals 3

    .prologue
    .line 973
    const-string v1, "AuditLog.disableIPTablesLogging"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 974
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_0

    .line 976
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->disableIPTablesLogging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 981
    :goto_0
    return v1

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Failed to disableIPTablesLogging"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dumpLogFile(JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 8
    .parameter "begin"
    .parameter "end"
    .parameter "filter"
    .parameter "outputFile"

    .prologue
    .line 893
    const-string v0, "AuditLog.dumpLogFile"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v0, :cond_0

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->dumpLogFile(JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 901
    :goto_0
    return v0

    .line 897
    :catch_0
    move-exception v7

    .line 898
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "AuditLog"

    const-string v1, "Failed to dumpLogFile"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableAuditLog()Z
    .locals 3

    .prologue
    .line 280
    const-string v1, "AuditLog.enableAuditLog"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->enableAuditLog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 288
    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Failed to enableAuditLog"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableIPTablesLogging()Z
    .locals 3

    .prologue
    .line 934
    const-string v1, "AuditLog.enableIPTablesLogging"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 935
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_0

    .line 937
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->enableIPTablesLogging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 942
    :goto_0
    return v1

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Failed to enableIPTablesLogging"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCriticalLogSize()I
    .locals 3

    .prologue
    .line 477
    const-string v1, "AuditLog.getCriticalLogSize"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_0

    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->getCriticalLogSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 485
    :goto_0
    return v1

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Failed to get current log size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentLogFileSize()I
    .locals 3

    .prologue
    .line 395
    const-string v1, "AuditLog.getCurrentLogFileSize"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_0

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->getCurrentLogFileSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 403
    :goto_0
    return v1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Failed to get current log size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumLogSize()I
    .locals 3

    .prologue
    .line 559
    const-string v1, "AuditLog.getMaximumLogSize"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_0

    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->getMaximumLogSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 567
    :goto_0
    return v1

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Failed to get current log size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAuditLogEnabled()Z
    .locals 3

    .prologue
    .line 356
    const-string v1, "AuditLog.isAuditLogEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->isAuditLogEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 364
    :goto_0
    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Failed to isAuditLogEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIPTablesLoggingEnabled()Z
    .locals 3

    .prologue
    .line 1011
    const-string v1, "AuditLog.isIPTablesLoggingEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1012
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_0

    .line 1014
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->isIPTablesLoggingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1019
    :goto_0
    return v1

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    const-string v2, "Failed to isIPTablesLoggingEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCriticalLogSize(I)Z
    .locals 4
    .parameter "percentageValue"

    .prologue
    .line 440
    const-string v1, "AuditLog.setCriticalLogSize"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_0

    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->setCriticalLogSize(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 448
    :goto_0
    return v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to setCriticalLogSize size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumLogSize(I)Z
    .locals 4
    .parameter "percentageValue"

    .prologue
    .line 522
    const-string v1, "AuditLog.setMaximumLogSize"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    if-eqz v1, :cond_0

    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLog;->mAuditService:Lcom/sec/enterprise/knox/auditlog/IAuditLog;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/auditlog/IAuditLog;->setMaximumLogSize(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 530
    :goto_0
    return v1

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AuditLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to setMaximumLogSize size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
