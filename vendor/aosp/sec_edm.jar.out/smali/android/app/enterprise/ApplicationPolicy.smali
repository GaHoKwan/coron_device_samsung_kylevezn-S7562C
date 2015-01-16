.class public Landroid/app/enterprise/ApplicationPolicy;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# static fields
.field public static final ACTION_EDM_BACKUP_RESULT:Ljava/lang/String; = "edm.intent.action.backup.result"

.field public static final ACTION_EDM_BACKUP_SERVICE_AVAILABLE:Ljava/lang/String; = "edm.intent.action.backup.service.available"

.field public static final ACTION_EDM_RESTORE_RESULT:Ljava/lang/String; = "edm.intent.action.restore.result"

.field public static final APPLICATION_INSTALLATION_MODE_ALLOW:I = 0x1

.field public static final APPLICATION_INSTALLATION_MODE_DISALLOW:I = 0x0

.field public static final APPLICATION_UNINSTALLATION_MODE_ALLOW:I = 0x1

.field public static final APPLICATION_UNINSTALLATION_MODE_DISALLOW:I = 0x0

.field public static final BACKUP_APPLICATION_BUSY_SERVICE:I = -0x3

.field public static final BACKUP_APPLICATION_FAILED:I = -0x2

.field public static final BACKUP_APPLICATION_SERVICE_ERROR:I = -0x1

.field public static final BACKUP_APPLICATION_SUCCESS:I = 0x0

.field public static final EXTRA_BACKUP_RESULT:Ljava/lang/String; = "backupResult"

.field public static final EXTRA_RESTORE_RESULT:Ljava/lang/String; = "restoreResult"

.field public static final NOTIFICATION_MODE_BLOCK_ALL:I = 0x2

.field public static final NOTIFICATION_MODE_BLOCK_TEXT:I = 0x3

.field public static final NOTIFICATION_MODE_BLOCK_TEXT_AND_SOUND:I = 0x4

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mService:Landroid/app/enterprise/IApplicationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "ApplicationPolicy"

    sput-object v0, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    .line 117
    return-void
.end method

.method private getService()Landroid/app/enterprise/IApplicationPolicy;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    return-object v0
.end method


# virtual methods
.method public addAppPackageNameToBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1854
    const-string v1, "ApplicationPolicy.addAppPackageNameToBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1855
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1857
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPackageNameToBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1862
    :goto_0
    return v1

    .line 1858
    :catch_0
    move-exception v0

    .line 1859
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1862
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1940
    const-string v1, "ApplicationPolicy.addAppPackageNameToWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1941
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1943
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1948
    :goto_0
    return v1

    .line 1944
    :catch_0
    move-exception v0

    .line 1945
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1948
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAppPermissionToBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "appPermission"

    .prologue
    .line 1483
    const-string v1, "ApplicationPolicy.addAppPermissionToBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1484
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1486
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPermissionToBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1491
    :goto_0
    return v1

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1491
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAppSignatureToBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "appSignature"

    .prologue
    .line 1591
    const-string v1, "ApplicationPolicy.addAppSignatureToBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1592
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1594
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppSignatureToBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1599
    :goto_0
    return v1

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1599
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAppSignatureToWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "appSignature"

    .prologue
    .line 3501
    const-string v1, "ApplicationPolicy.addAppSignatureToWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3502
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3504
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppSignatureToWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3509
    :goto_0
    return v1

    .line 3505
    :catch_0
    move-exception v0

    .line 3506
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3509
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .parameter "homePkgName"

    .prologue
    .line 3008
    const-string v1, "ApplicationPolicy.addHomeShortcut"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3009
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3011
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->addHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3016
    :goto_0
    return v1

    .line 3012
    :catch_0
    move-exception v0

    .line 3013
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed addHomeShorcut!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3016
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackagesToForceStopBlackList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3383
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.addPackagesToForceStopBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3384
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3386
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3391
    :goto_0
    return v1

    .line 3387
    :catch_0
    move-exception v0

    .line 3388
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3391
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackagesToForceStopWhiteList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2153
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.addPackagesToForceStopWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2154
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2156
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToForceStopWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2161
    :goto_0
    return v1

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2161
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackagesToNotificationBlackList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2546
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.addPackagesToNotificationBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2547
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2549
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppNotificationBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2554
    :goto_0
    return v1

    .line 2550
    :catch_0
    move-exception v0

    .line 2551
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2554
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackagesToNotificationWhiteList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2695
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.addPackagesToNotificationWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2696
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2698
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppNotificationWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2703
    :goto_0
    return v1

    .line 2699
    :catch_0
    move-exception v0

    .line 2700
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2703
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackagesToWidgetBlackList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2355
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.addPackagesToWidgetBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2356
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2358
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToWidgetBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2363
    :goto_0
    return v1

    .line 2359
    :catch_0
    move-exception v0

    .line 2360
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2363
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackagesToWidgetWhiteList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2254
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.addPackagesToWidgetWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2255
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2257
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addPackagesToWidgetWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2262
    :goto_0
    return v1

    .line 2258
    :catch_0
    move-exception v0

    .line 2259
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2262
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public backupApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 3
    .parameter "pkgName"
    .parameter "data"

    .prologue
    .line 3211
    const-string v1, "ApplicationPolicy.backupApplicationData"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3212
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3214
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->backupApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3219
    :goto_0
    return v1

    .line 3215
    :catch_0
    move-exception v0

    .line 3216
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed backup App Data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3219
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public changeApplicationIcon(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "packageName"
    .parameter "imageData"

    .prologue
    const/4 v1, 0x0

    .line 1402
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeApplicationIcon:packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-string v2, "ApplicationPolicy.changeApplicationIcon"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1404
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1407
    if-eqz p2, :cond_1

    :try_start_0
    array-length v2, p2

    const/high16 v3, 0x10

    if-le v2, v3, :cond_1

    .line 1408
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeApplicationIcon: Icon size is too big :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_0
    :goto_0
    return v1

    .line 1412
    :cond_1
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->changeApplicationIcon(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .parameter "homePkgName"

    .prologue
    .line 2953
    const-string v1, "ApplicationPolicy.deleteHomeShortcut"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2954
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2956
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->deleteHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2961
    :goto_0
    return v1

    .line 2957
    :catch_0
    move-exception v0

    .line 2958
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed deleteHomeShorcut!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2961
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 833
    const-string v1, "ApplicationPolicy.deleteManagedAppInfo"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 834
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 836
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->deleteManagedAppInfo(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 841
    :goto_0
    return v1

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableAndroidBrowser()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1278
    const-string v0, "ApplicationPolicy.disableAndroidBrowser"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1279
    const-string v0, "com.android.browser"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1280
    const-string v0, "com.sec.webbrowserminiapp"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1281
    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1282
    sget-object v0, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "set all browser as disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void
.end method

.method public disableAndroidMarket()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1119
    const-string v0, "ApplicationPolicy.disableAndroidMarket"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1120
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1121
    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1122
    return-void
.end method

.method public disableVoiceDialer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1314
    const-string v0, "ApplicationPolicy.disableVoiceDialer"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1315
    const-string v0, "com.android.voicedialer"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1316
    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1317
    const-string v0, "com.vlingo.midas"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1318
    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1319
    return-void
.end method

.method public disableYouTube()V
    .locals 2

    .prologue
    .line 1248
    const-string v0, "ApplicationPolicy.disableYouTube"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1249
    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1250
    return-void
.end method

.method public enableAndroidBrowser()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1296
    const-string v0, "ApplicationPolicy.enableAndroidBrowser"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1297
    const-string v0, "com.android.browser"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1298
    const-string v0, "com.sec.webbrowserminiapp"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1299
    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1300
    sget-object v0, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "set all browser as enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return-void
.end method

.method public enableAndroidMarket()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1138
    const-string v0, "ApplicationPolicy.enableAndroidMarket"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1139
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1140
    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1141
    return-void
.end method

.method public enableVoiceDialer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1332
    const-string v0, "ApplicationPolicy.enableVoiceDialer"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1333
    const-string v0, "com.android.voicedialer"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1334
    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1335
    const-string v0, "com.vlingo.midas"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1336
    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1337
    return-void
.end method

.method public enableYouTube()V
    .locals 2

    .prologue
    .line 1263
    const-string v0, "ApplicationPolicy.enableYouTube"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1264
    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1265
    return-void
.end method

.method public getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 3

    .prologue
    .line 1374
    const-string v1, "ApplicationPolicy.getAllAppLastUsage"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1375
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1377
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1382
    :goto_0
    return-object v1

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1382
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3257
    const-string v1, "ApplicationPolicy.getAllWidgets"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3258
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3260
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3265
    :goto_0
    return-object v1

    .line 3261
    :catch_0
    move-exception v0

    .line 3262
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3265
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppInstallToSdCard()Z
    .locals 3

    .prologue
    .line 3309
    const-string v1, "ApplicationPolicy.getAppInstallToSdCard"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3310
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3312
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppInstallToSdCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3317
    :goto_0
    return v1

    .line 3313
    :catch_0
    move-exception v0

    .line 3314
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3317
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPackageNamesAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1905
    const-string v1, "ApplicationPolicy.getAppPackageNamesAllBlackLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1906
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1908
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPackageNamesAllBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1913
    :goto_0
    return-object v1

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1913
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPackageNamesAllWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1990
    const-string v1, "ApplicationPolicy.getAppPackageNamesAllWhiteLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1991
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1993
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPackageNamesAllWhiteLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1998
    :goto_0
    return-object v1

    .line 1994
    :catch_0
    move-exception v0

    .line 1995
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1998
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPermissionsAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1561
    const-string v1, "ApplicationPolicy.getAppPermissionsAllBlackLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1562
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1564
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPermissionsAllBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1569
    :goto_0
    return-object v1

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1569
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPermissionsBlackList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1535
    const-string v1, "ApplicationPolicy.getAppPermissionsBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1536
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1538
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPermissionsBlackList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1543
    :goto_0
    return-object v1

    .line 1539
    :catch_0
    move-exception v0

    .line 1540
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1543
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppSignaturesAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1664
    const-string v1, "ApplicationPolicy.getAppSignaturesAllBlackLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1665
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1667
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppSignaturesAllBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1672
    :goto_0
    return-object v1

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1672
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppSignaturesAllWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3570
    const-string v1, "ApplicationPolicy.getAppSignaturesAllWhiteLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3571
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3573
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppSignaturesAllWhiteLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3578
    :goto_0
    return-object v1

    .line 3574
    :catch_0
    move-exception v0

    .line 3575
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3578
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppSignaturesBlackList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1640
    const-string v1, "ApplicationPolicy.getAppSignaturesBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1641
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1643
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppSignatureBlackList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1648
    :goto_0
    return-object v1

    .line 1644
    :catch_0
    move-exception v0

    .line 1645
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1648
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppSignaturesWhiteList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 3547
    const-string v1, "ApplicationPolicy.getAppSignaturesWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3548
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3550
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppSignaturesWhiteList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3555
    :goto_0
    return-object v1

    .line 3551
    :catch_0
    move-exception v0

    .line 3552
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3555
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1049
    const-string v1, "ApplicationPolicy.getApplicationCacheSize"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1050
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1052
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCacheSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1057
    :goto_0
    return-wide v1

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1011
    const-string v1, "ApplicationPolicy.getApplicationCodeSize"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1014
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCodeSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1019
    :goto_0
    return-wide v1

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationCpuUsage(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1095
    const-string v1, "ApplicationPolicy.getApplicationCpuUsage"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1096
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1098
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCpuUsage(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1103
    :goto_0
    return-wide v1

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationDataSize(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1030
    const-string v1, "ApplicationPolicy.getApplicationDataSize"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1033
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationDataSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1038
    :goto_0
    return-wide v1

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .locals 4
    .parameter "packageName"

    .prologue
    .line 1422
    const/4 v1, 0x0

    .line 1423
    .local v1, imageData:[B
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1425
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 1433
    :goto_0
    return-object v2

    .line 1426
    :catch_0
    move-exception v0

    .line 1427
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getCustomApplicationIcon: Failed talking with Application control policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1430
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 854
    const-string v1, "ApplicationPolicy.getApplicationInstallationEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 855
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 857
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 862
    :goto_0
    return v1

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 862
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationInstallationMode()I
    .locals 3

    .prologue
    .line 606
    const-string v1, "ApplicationPolicy.getApplicationInstallationMode"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 607
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppInstallationMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 615
    :goto_0
    return v1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getApplicationMemoryUsage(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1072
    const-string v1, "ApplicationPolicy.getApplicationMemoryUsage"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1073
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1075
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationMemoryUsage(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1080
    :goto_0
    return-wide v1

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 950
    const-string v1, "ApplicationPolicy.getApplicationName"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 951
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 953
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 958
    :goto_0
    return-object v1

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 958
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationNetworkStats()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1449
    const-string v1, "ApplicationPolicy.getApplicationNetworkStats"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1450
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1452
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getNetworkStats()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1457
    :goto_0
    return-object v1

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1457
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationNotificationMode()I
    .locals 3

    .prologue
    .line 2880
    const-string v1, "ApplicationPolicy.getApplicationNotificationMode"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2881
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2883
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationNotificationMode(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2888
    :goto_0
    return v1

    .line 2884
    :catch_0
    move-exception v0

    .line 2885
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2888
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 800
    const-string v1, "ApplicationPolicy.getApplicationStateEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 801
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 803
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 808
    :goto_0
    return v1

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationStateList(Z)[Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 1771
    const-string v1, "ApplicationPolicy.getApplicationStateList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1772
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1774
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateList(Z)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1779
    :goto_0
    return-object v1

    .line 1775
    :catch_0
    move-exception v0

    .line 1776
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1779
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 992
    const-string v1, "ApplicationPolicy.getApplicationTotalSize"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 993
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 995
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationTotalSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1000
    :goto_0
    return-wide v1

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 906
    const-string v1, "ApplicationPolicy.getApplicationUninstallationEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 907
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 909
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 914
    :goto_0
    return v1

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationUninstallationMode()I
    .locals 3

    .prologue
    .line 2047
    const-string v1, "ApplicationPolicy.getApplicationUninstallationMode"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2048
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2050
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationUninstallationMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2056
    :goto_0
    return v1

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2056
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 972
    const-string v1, "ApplicationPolicy.getApplicationVersion"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 973
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 975
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 980
    :goto_0
    return-object v1

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 3

    .prologue
    .line 1350
    const-string v1, "ApplicationPolicy.getAvgNoAppUsagePerMonth"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1351
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1353
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1358
    :goto_0
    return-object v1

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1358
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 928
    const-string v1, "ApplicationPolicy.getInstalledApplicationsIDList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 929
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 931
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 936
    :goto_0
    return-object v1

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 517
    const-string v1, "ApplicationPolicy.getInstalledManagedApplicationsList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 518
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 520
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledManagedApplicationsList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 525
    :goto_0
    return-object v1

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManagedApplicationStatus(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 3
    .parameter "pkg"

    .prologue
    .line 550
    const-string v1, "ApplicationPolicy.getManagedApplicationStatus"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 551
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 553
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 558
    :goto_0
    return-object v1

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostCpuUsageApps(IZ)Ljava/util/List;
    .locals 3
    .parameter "appCount"
    .parameter "showAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1163
    const-string v1, "ApplicationPolicy.getMostCpuUsageApps"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1164
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1166
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->getTopNCPUUsageApp(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1172
    :goto_0
    return-object v1

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostDataUsageApps(I)Ljava/util/List;
    .locals 3
    .parameter "appCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1226
    const-string v1, "ApplicationPolicy.getMostDataUsageApps"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1227
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1229
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNDataUsageApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1234
    :goto_0
    return-object v1

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1234
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostMemoryUsageApps(IZ)Ljava/util/List;
    .locals 3
    .parameter "appCount"
    .parameter "showAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1197
    const-string v1, "ApplicationPolicy.getMostMemoryUsageApps"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1198
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1200
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->getTopNMemoryUsageApp(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1205
    :goto_0
    return-object v1

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1205
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesFromForceStopBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2095
    const-string v1, "ApplicationPolicy.getPackagesFromForceStopBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2096
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2098
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromForceStopBlackList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2103
    :goto_0
    return-object v1

    .line 2099
    :catch_0
    move-exception v0

    .line 2100
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2103
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesFromForceStopWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2199
    const-string v1, "ApplicationPolicy.getPackagesFromForceStopWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2200
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2202
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromForceStopWhiteList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2207
    :goto_0
    return-object v1

    .line 2203
    :catch_0
    move-exception v0

    .line 2204
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2207
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesFromNotificationBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2639
    const-string v1, "ApplicationPolicy.getPackagesFromNotificationBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2640
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2642
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/enterprise/IApplicationPolicy;->getAppNotificationBlackList(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2647
    :goto_0
    return-object v1

    .line 2643
    :catch_0
    move-exception v0

    .line 2644
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2647
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesFromNotificationWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2790
    const-string v1, "ApplicationPolicy.getPackagesFromNotificationWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2791
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2793
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/enterprise/IApplicationPolicy;->getAppNotificationWhiteList(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2798
    :goto_0
    return-object v1

    .line 2794
    :catch_0
    move-exception v0

    .line 2795
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2798
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesFromWidgetBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2399
    const-string v1, "ApplicationPolicy.getPackagesFromWidgetBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2400
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2402
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromWidgetBlackList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2407
    :goto_0
    return-object v1

    .line 2403
    :catch_0
    move-exception v0

    .line 2404
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2407
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesFromWidgetWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2298
    const-string v1, "ApplicationPolicy.getPackagesFromWidgetWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2299
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2301
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getPackagesFromWidgetWhiteList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2306
    :goto_0
    return-object v1

    .line 2302
    :catch_0
    move-exception v0

    .line 2303
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2306
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    .line 313
    const-string v1, "ApplicationPolicy.installApplication"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 322
    :goto_0
    return v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "showMsg"

    .prologue
    .line 3327
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3329
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3334
    :goto_0
    return v1

    .line 3330
    :catch_0
    move-exception v0

    .line 3331
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3334
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3
    .parameter "aPacakageName"
    .parameter "aPackageURI"

    .prologue
    .line 884
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 886
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 892
    :goto_0
    return v1

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 256
    const-string v1, "ApplicationPolicy.isApplicationInstalled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 264
    :goto_0
    return v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 282
    const-string v1, "ApplicationPolicy.isApplicationRunning"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationRunning(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 290
    :goto_0
    return v1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 1818
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1820
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1825
    :goto_0
    return v1

    .line 1821
    :catch_0
    move-exception v0

    .line 1822
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1825
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2899
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2901
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2906
    :goto_0
    return v1

    .line 2902
    :catch_0
    move-exception v0

    .line 2903
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2906
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1881
    const-string v1, "ApplicationPolicy.removeAppPackageNameFromBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1882
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1884
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1889
    :goto_0
    return v1

    .line 1885
    :catch_0
    move-exception v0

    .line 1886
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1889
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1966
    const-string v1, "ApplicationPolicy.removeAppPackageNameFromWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1967
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1969
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1974
    :goto_0
    return v1

    .line 1970
    :catch_0
    move-exception v0

    .line 1971
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1974
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "appPermission"

    .prologue
    .line 1512
    const-string v1, "ApplicationPolicy.removeAppPermissionFromBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1513
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1515
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1520
    :goto_0
    return v1

    .line 1516
    :catch_0
    move-exception v0

    .line 1517
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1520
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "appSignature"

    .prologue
    .line 1618
    const-string v1, "ApplicationPolicy.removeAppSignatureFromBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1619
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1621
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1626
    :goto_0
    return v1

    .line 1622
    :catch_0
    move-exception v0

    .line 1623
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1626
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppSignatureFromWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "appSignature"

    .prologue
    .line 3527
    const-string v1, "ApplicationPolicy.removeAppSignatureFromWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3528
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3530
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppSignatureFromWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3535
    :goto_0
    return v1

    .line 3531
    :catch_0
    move-exception v0

    .line 3532
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3535
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePackagesFromForceStopBlackList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3425
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.removePackagesFromForceStopBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3426
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3428
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3433
    :goto_0
    return v1

    .line 3429
    :catch_0
    move-exception v0

    .line 3430
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3433
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePackagesFromForceStopWhiteList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3467
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.removePackagesFromForceStopWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3468
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3470
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removePackagesFromForceStopWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3475
    :goto_0
    return v1

    .line 3471
    :catch_0
    move-exception v0

    .line 3472
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3475
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePackagesFromNotificationBlackList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2596
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.removePackagesFromNotificationBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2597
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2599
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppNotificationBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2604
    :goto_0
    return v1

    .line 2600
    :catch_0
    move-exception v0

    .line 2601
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2604
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePackagesFromNotificationWhiteList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2746
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.removeAppNotificationWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2747
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2749
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppNotificationWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2754
    :goto_0
    return v1

    .line 2750
    :catch_0
    move-exception v0

    .line 2751
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2754
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePackagesFromWidgetBlackList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2487
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.removePackagesFromWidgetBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2488
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2490
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removePackagesFromWidgetBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2495
    :goto_0
    return v1

    .line 2491
    :catch_0
    move-exception v0

    .line 2492
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2495
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePackagesFromWidgetWhiteList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2443
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.removePackagesFromWidgetWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2444
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2446
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removePackagesFromWidgetWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2451
    :goto_0
    return v1

    .line 2447
    :catch_0
    move-exception v0

    .line 2448
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2451
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public restoreApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 3
    .parameter "pkgName"
    .parameter "data"

    .prologue
    .line 3102
    const-string v1, "ApplicationPolicy.restoreApplicationData"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3103
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3105
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->restoreApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3110
    :goto_0
    return v1

    .line 3106
    :catch_0
    move-exception v0

    .line 3107
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed restore App Data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3110
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAppInstallToSdCard(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 3287
    const-string v1, "ApplicationPolicy.setAppInstallToSdCard"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 3288
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3290
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->setAppInstallToSdCard(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3295
    :goto_0
    return v1

    .line 3291
    :catch_0
    move-exception v0

    .line 3292
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3295
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 665
    const-string v1, "ApplicationPolicy.setApplicationInstallationDisabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 666
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 668
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 635
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 637
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 694
    const-string v1, "ApplicationPolicy.setApplicationInstallationEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 695
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 697
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationMode(I)Z
    .locals 3
    .parameter "installationMode"

    .prologue
    .line 586
    const-string v1, "ApplicationPolicy.setApplicationInstallationMode"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 587
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 589
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->setAppInstallationMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 594
    :goto_0
    return v1

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationNotificationMode(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 2836
    const-string v1, "ApplicationPolicy.setApplicationNotificationMode"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2837
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2839
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationNotificationMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2844
    :goto_0
    return v1

    .line 2840
    :catch_0
    move-exception v0

    .line 2841
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2844
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    .line 403
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 410
    :goto_0
    return v1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationState(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"
    .parameter "enableApp"
    .parameter "appControlStateDisableCause"
    .parameter "appControlStateDisableCauseMetadata"

    .prologue
    .line 435
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 437
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 442
    :goto_0
    return v1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 3
    .parameter "pkgList"
    .parameter "state"

    .prologue
    .line 1800
    const-string v1, "ApplicationPolicy.setApplicationStateList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1801
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1803
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1808
    :goto_0
    return-object v1

    .line 1804
    :catch_0
    move-exception v0

    .line 1805
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1808
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 751
    const-string v1, "ApplicationPolicy.setApplicationUninstallationDisabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 752
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 754
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 721
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 723
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 780
    const-string v1, "ApplicationPolicy.setApplicationUninstallationEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 781
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 783
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationMode(I)Z
    .locals 3
    .parameter "uninstallationMode"

    .prologue
    .line 2027
    const-string v1, "ApplicationPolicy.setApplicationUninstallationMode"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2028
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2030
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2035
    :goto_0
    return v1

    .line 2031
    :catch_0
    move-exception v0

    .line 2032
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2035
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAsManagedApp(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 1695
    const-string v1, "ApplicationPolicy.setAsManagedApp"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1696
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1698
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->setAsManagedApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1703
    :goto_0
    return v1

    .line 1699
    :catch_0
    move-exception v0

    .line 1700
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1703
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 463
    const-string v2, "ApplicationPolicy.setDisableApplication"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 466
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 471
    :cond_0
    :goto_0
    return v1

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 490
    const-string v1, "ApplicationPolicy.setEnableApplication"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 498
    :goto_0
    return v1

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 1744
    const-string v1, "ApplicationPolicy.startApp"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1745
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1747
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->startApp(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1752
    :goto_0
    return v1

    .line 1748
    :catch_0
    move-exception v0

    .line 1749
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1752
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopApp(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 1718
    const-string v1, "ApplicationPolicy.stopApp"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1719
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1721
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->stopApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1726
    :goto_0
    return v1

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1726
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 371
    const-string v1, "ApplicationPolicy.uninstallApplication"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 374
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 380
    :goto_0
    return v1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public uninstallApplications(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPolicy.uninstallApplications"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateApplication(Ljava/lang/String;)Z
    .locals 4
    .parameter "apkFilePath"

    .prologue
    const/4 v1, 0x0

    .line 340
    const-string v2, "ApplicationPolicy.updateApplication"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 343
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 348
    :cond_0
    :goto_0
    return v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 229
    const-string v1, "ApplicationPolicy.wipeApplicationData"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Landroid/app/enterprise/ApplicationPolicy;->getService()Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->wipeApplicationData(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 237
    :goto_0
    return v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
