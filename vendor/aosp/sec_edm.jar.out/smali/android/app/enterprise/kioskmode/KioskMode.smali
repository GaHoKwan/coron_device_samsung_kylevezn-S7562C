.class public Landroid/app/enterprise/kioskmode/KioskMode;
.super Ljava/lang/Object;
.source "KioskMode.java"


# static fields
.field public static final ACTION_DISABLE_KIOSK_MODE_RESULT:Ljava/lang/String; = "edm.intent.action.disable.kiosk.mode.result"

.field public static final ACTION_ENABLE_KIOSK_MODE_RESULT:Ljava/lang/String; = "edm.intent.action.enable.kiosk.mode.result"

.field public static final ACTION_UNEXPECTED_KIOSK_BEHAVIOR:Ljava/lang/String; = "edm.intent.action.unexpected.kiosk.behavior"

.field private static final DEFAULT_KIOSK_PKG:Ljava/lang/String; = "com.sec.android.kiosk"

.field public static final ERROR_KIOSK_ALREADY_ENABLED:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PACKAGE_NOT_FOUND:I = -0x3

.field public static final ERROR_PERMISSION_DENIED:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final EXTRA_KIOSK_RESULT:Ljava/lang/String; = "edm.intent.extra.kiosk.mode.result"

.field public static MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "KioskMode"

.field public static TASK_MANAGER_PKGNAME:Ljava/lang/String;

.field private static gKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/enterprise/kioskmode/KioskMode;->mSync:Ljava/lang/Object;

    .line 71
    const-string v0, "com.sec.android.app.controlpanel"

    sput-object v0, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    .line 74
    const-string v0, "com.sec.minimode.taskcloser"

    sput-object v0, Landroid/app/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "kioskmode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    .line 134
    iput-object p1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mContext:Landroid/content/Context;

    .line 135
    return-void
.end method

.method private getCallingPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 315
    .local v1, uid:I
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, packages:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;
    .locals 3
    .parameter "context"

    .prologue
    .line 151
    sget-object v1, Landroid/app/enterprise/kioskmode/KioskMode;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    sget-object v0, Landroid/app/enterprise/kioskmode/KioskMode;->gKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/enterprise/kioskmode/KioskMode;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/enterprise/kioskmode/KioskMode;->gKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 155
    :cond_0
    sget-object v0, Landroid/app/enterprise/kioskmode/KioskMode;->gKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    monitor-exit v1

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public allowHardwareKeys(Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .parameter
    .parameter "allow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    .local p1, hwKeyId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v6, "KioskMode.allowHardwareKeys"

    invoke-static {v6}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 672
    iget-object v6, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v6, :cond_1

    .line 674
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [I

    .line 675
    .local v4, keysArray:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 676
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v2

    .line 675
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 677
    :cond_0
    iget-object v6, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v6, v4, p2}, Landroid/app/enterprise/kioskmode/IKioskMode;->allowHardwareKeys([IZ)[I

    move-result-object v5

    .line 678
    .local v5, ret:[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v1, hwKeyIdsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 680
    aget v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 683
    .end local v1           #hwKeyIdsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #keysArray:[I
    .end local v5           #ret:[I
    :catch_0
    move-exception v0

    .line 684
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "KioskMode"

    const-string v7, "Failed talking with kiosk mode service"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method public allowTaskManager(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 532
    const-string v1, "KioskMode.allowTaskManager"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 535
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1, p1}, Landroid/app/enterprise/kioskmode/IKioskMode;->allowTaskManager(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 540
    :goto_0
    return v1

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableKioskMode()V
    .locals 4

    .prologue
    .line 292
    const-string v2, "KioskMode.disableKioskMode"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v2, :cond_0

    .line 295
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v2}, Landroid/app/enterprise/kioskmode/IKioskMode;->disableKioskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "KioskMode"

    const-string v3, "Failed talking with kiosk mode service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.disable.kiosk.mode.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "edm.intent.extra.kiosk.mode.result"

    const/16 v3, -0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    invoke-direct {p0}, Landroid/app/enterprise/kioskmode/KioskMode;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableKioskMode()V
    .locals 4

    .prologue
    .line 193
    const-string v2, "KioskMode.enableKioskMode"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v2, :cond_0

    .line 196
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    const-string v3, "com.sec.android.kiosk"

    invoke-interface {v2, v3}, Landroid/app/enterprise/kioskmode/IKioskMode;->enableKioskMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "KioskMode"

    const-string v3, "Failed talking with kiosk mode service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.enable.kiosk.mode.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "edm.intent.extra.kiosk.mode.result"

    const/16 v3, -0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    invoke-direct {p0}, Landroid/app/enterprise/kioskmode/KioskMode;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableKioskMode(Ljava/lang/String;)V
    .locals 4
    .parameter "kioskPackage"

    .prologue
    .line 245
    const-string v2, "KioskMode.enableKioskMode"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v2, :cond_0

    .line 248
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v2, p1}, Landroid/app/enterprise/kioskmode/IKioskMode;->enableKioskMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "KioskMode"

    const-string v3, "Failed talking with kiosk mode service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.enable.kiosk.mode.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "edm.intent.extra.kiosk.mode.result"

    const/16 v3, -0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    invoke-direct {p0}, Landroid/app/enterprise/kioskmode/KioskMode;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAllBlockedHardwareKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 774
    const-string v1, "KioskMode.getAllBlockedHardwareKeys"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 777
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getAllBlockedHardwareKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 782
    :goto_0
    return-object v1

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHardwareKeyList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 614
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getHardwareKeyList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 619
    :goto_0
    return-object v1

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKioskHomePackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 354
    const-string v1, "KioskMode.getKioskHomePackage"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 357
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getKioskHomePackage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 362
    :goto_0
    return-object v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideNavigationBar(Z)Z
    .locals 3
    .parameter "hide"

    .prologue
    .line 879
    const-string v1, "KioskMode.hideNavigationBar"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 880
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 882
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1, p1}, Landroid/app/enterprise/kioskmode/IKioskMode;->hideNavigationBar(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 887
    :goto_0
    return v1

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 887
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideStatusBar(Z)Z
    .locals 3
    .parameter "hide"

    .prologue
    .line 815
    const-string v1, "KioskMode.hideStatusBar"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 816
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 818
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1, p1}, Landroid/app/enterprise/kioskmode/IKioskMode;->hideStatusBar(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 823
    :goto_0
    return v1

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSystemBar(Z)Z
    .locals 3
    .parameter "hide"

    .prologue
    .line 417
    const-string v1, "KioskMode.hideSystemBar"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 420
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1, p1}, Landroid/app/enterprise/kioskmode/IKioskMode;->hideSystemBar(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 425
    :goto_0
    return v1

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHardwareKeyAllowed(I)Z
    .locals 3
    .parameter "hwKeyId"

    .prologue
    .line 722
    const-string v1, "KioskMode.isHardwareKeyAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 725
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isHardwareKeyAllowed(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 730
    :goto_0
    return v1

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isHardwareKeyAllowed(IZ)Z
    .locals 3
    .parameter "hwKeyId"
    .parameter "showMsg"

    .prologue
    .line 737
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 739
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isHardwareKeyAllowed(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 744
    :goto_0
    return v1

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isKioskModeEnabled()Z
    .locals 3

    .prologue
    .line 330
    const-string v1, "KioskMode.isKioskModeEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 333
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->isKioskModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 338
    :goto_0
    return v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNavigationBarHidden()Z
    .locals 3

    .prologue
    .line 904
    const-string v1, "KioskMode.isNavigationBarHidden"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 907
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->isNavigationBarHidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 912
    :goto_0
    return v1

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStatusBarHidden()Z
    .locals 3

    .prologue
    .line 840
    const-string v1, "KioskMode.isStatusBarHidden"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 841
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 843
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->isStatusBarHidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 848
    :goto_0
    return v1

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSystemBarHidden()Z
    .locals 3

    .prologue
    .line 441
    const-string v1, "KioskMode.isSystemBarHidden"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 444
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->isSystemBarHidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 449
    :goto_0
    return v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTaskManagerAllowed()Z
    .locals 3

    .prologue
    .line 571
    const-string v1, "KioskMode.isTaskManagerAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 574
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isTaskManagerAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 579
    :goto_0
    return v1

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTaskManagerAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 586
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 588
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1, p1}, Landroid/app/enterprise/kioskmode/IKioskMode;->isTaskManagerAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 593
    :goto_0
    return v1

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public wipeRecentTasks()Z
    .locals 3

    .prologue
    .line 476
    const-string v1, "KioskMode.wipeRecentTasks"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    if-eqz v1, :cond_0

    .line 479
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Landroid/app/enterprise/kioskmode/IKioskMode;

    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->wipeRecentTasks()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 484
    :goto_0
    return v1

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
