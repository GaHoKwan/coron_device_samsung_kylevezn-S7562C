.class public Landroid/app/enterprise/DeviceInventory;
.super Ljava/lang/Object;
.source "DeviceInventory.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IDeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "DeviceInventory"

    sput-object v0, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "device_info"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDeviceInfo$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    .line 65
    return-void
.end method


# virtual methods
.method public clearCallingLog()Z
    .locals 3

    .prologue
    .line 793
    const-string v1, "DeviceInventory.clearCallingLog"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 796
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->clearCallingLog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 801
    :goto_0
    return v1

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearSMSLog()Z
    .locals 3

    .prologue
    .line 651
    const-string v1, "DeviceInventory.clearSMSLog"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 654
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->clearSMSLog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 659
    :goto_0
    return v1

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dataUsageTimerActivation()V
    .locals 3

    .prologue
    .line 1058
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1060
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->dataUsageTimerActivation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableCallingCapture(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 677
    const-string v1, "DeviceInventory.enableCallingCapture"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 680
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->enableCallingCapture(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 685
    :goto_0
    return v1

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSMSCapture(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 541
    const-string v1, "DeviceInventory.enableSMSCapture"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 544
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->enableSMSCapture(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 549
    :goto_0
    return v1

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvailableCapacityExternal()J
    .locals 3

    .prologue
    .line 125
    const-string v1, "DeviceInventory.getAvailableCapacityExternal"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityExternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 133
    :goto_0
    return-wide v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAvailableCapacityInternal()J
    .locals 3

    .prologue
    .line 159
    const-string v1, "DeviceInventory.getAvailableCapacityInternal"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableCapacityInternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 167
    :goto_0
    return-wide v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getAvailableRamMemory()J
    .locals 3

    .prologue
    .line 514
    const-string v1, "DeviceInventory.getAvailableRamMemory"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 517
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getAvailableRamMemory()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 522
    :goto_0
    return-wide v1

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesReceivedNetwork()J
    .locals 3

    .prologue
    .line 971
    const-string v1, "DeviceInventory.getBytesReceivedNetwork"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 972
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 974
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesReceivedNetwork()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 979
    :goto_0
    return-wide v1

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesReceivedWiFi()J
    .locals 3

    .prologue
    .line 929
    const-string v1, "DeviceInventory.getBytesReceivedWiFi"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 930
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 932
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesReceivedWiFi()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 937
    :goto_0
    return-wide v1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 937
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesSentNetwork()J
    .locals 3

    .prologue
    .line 950
    const-string v1, "DeviceInventory.getBytesSentNetwork"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 953
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesSentNetwork()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 958
    :goto_0
    return-wide v1

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 958
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getBytesSentWiFi()J
    .locals 3

    .prologue
    .line 908
    const-string v1, "DeviceInventory.getBytesSentWiFi"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 909
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 911
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getBytesSentWiFi()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 916
    :goto_0
    return-wide v1

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getCellTowerCID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1221
    const-string v1, "DeviceInventory.getCellTowerCID"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1224
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getCellTowerCID()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1229
    :goto_0
    return-object v1

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCellTowerLAC()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1251
    const-string v1, "DeviceInventory.getCellTowerLAC"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1252
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1254
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getCellTowerLAC()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1259
    :goto_0
    return-object v1

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1259
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCellTowerPSC()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1281
    const-string v1, "DeviceInventory.getCellTowerPSC"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1282
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1284
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getCellTowerPSC()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1289
    :goto_0
    return-object v1

    .line 1285
    :catch_0
    move-exception v0

    .line 1286
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1289
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCellTowerRSSI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1311
    const-string v1, "DeviceInventory.getCellTowerRSSI"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1312
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1314
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getCellTowerRSSI()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1319
    :goto_0
    return-object v1

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1319
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1187
    const-string v1, "DeviceInventory.getDataCallLog"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1188
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1190
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallLog(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1195
    :goto_0
    return-object v1

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with phone restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataCallLoggingEnabled()Z
    .locals 3

    .prologue
    .line 1131
    const-string v1, "DeviceInventory.getDataCallLoggingEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1132
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1134
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallLoggingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1139
    :goto_0
    return v1

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1139
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataCallStatisticsEnabled()Z
    .locals 3

    .prologue
    .line 887
    const-string v1, "DeviceInventory.getDataCallStatisticsEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 890
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataCallStatisticsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 895
    :goto_0
    return v1

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to getDataCallStatisticsEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataUsageTimer()I
    .locals 3

    .prologue
    .line 1039
    const-string v1, "DeviceInventory.getDataUsageTimer"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1042
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDataUsageTimer()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1047
    :goto_0
    return v1

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1047
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDeviceMaker()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    const-string v1, "DeviceInventory.getDeviceMaker"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 318
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceMaker()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 323
    :goto_0
    return-object v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    const-string v1, "DeviceInventory.getDeviceName"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceOS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    const-string v1, "DeviceInventory.getDeviceOS"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 335
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOS()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    const-string v1, "DeviceInventory.getDeviceOSVersion"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 352
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceOSVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 357
    :goto_0
    return-object v1

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    const-string v1, "DeviceInventory.getDevicePlatform"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 369
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDevicePlatform()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 374
    :goto_0
    return-object v1

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceProcessorSpeed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 401
    const-string v1, "DeviceInventory.getDeviceProcessorSpeed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceProcessorSpeed()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 409
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceProcessorType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 384
    const-string v1, "DeviceInventory.getDeviceProcessorType"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 387
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDeviceProcessorType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 392
    :goto_0
    return-object v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDroppedCallsCount()I
    .locals 3

    .prologue
    .line 419
    const-string v1, "DeviceInventory.getDroppedCallsCount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 422
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getDroppedCallsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    :goto_0
    return v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getInboundSMSCaptured()Ljava/util/List;
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
    .line 606
    const-string v1, "DeviceInventory.getInboundSMSCaptured"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 607
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getInboundSMSCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 614
    :goto_0
    return-object v1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncomingCallingCaptured()Ljava/util/List;
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
    .line 772
    const-string v1, "DeviceInventory.getIncomingCallingCaptured"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 773
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 775
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getIncomingCallingCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 780
    :goto_0
    return-object v1

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMissedCallsCount()I
    .locals 3

    .prologue
    .line 436
    const-string v1, "DeviceInventory.getMissedCallsCount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 439
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getMissedCallsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 444
    :goto_0
    return v1

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    const-string v1, "DeviceInventory.getModelName"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 179
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    :goto_0
    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    const-string v1, "DeviceInventory.getModelNumber"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 196
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModelNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModemFirmware()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    const-string v1, "DeviceInventory.getModemFirmware"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 267
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getModemFirmware()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 272
    :goto_0
    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutboundSMSCaptured()Ljava/util/List;
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
    .line 582
    const-string v1, "DeviceInventory.getOutboundSMSCaptured"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getOutboundSMSCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 590
    :goto_0
    return-object v1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutgoingCallingCaptured()Ljava/util/List;
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
    .line 748
    const-string v1, "DeviceInventory.getOutgoingCallingCaptured"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 751
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getOutgoingCallingCaptured()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 756
    :goto_0
    return-object v1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlatformSDK()I
    .locals 3

    .prologue
    .line 281
    const-string v1, "DeviceInventory.getPlatformSDK"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 284
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformSDK()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 289
    :goto_0
    return v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    const-string v1, "DeviceInventory.getPlatformVersion"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 301
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlatformVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    const-string v1, "DeviceInventory.getPlatformVersionName"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 250
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getPlatformVersionName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 255
    :goto_0
    return-object v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    const-string v1, "DeviceInventory.getSerialNumber"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 233
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    :goto_0
    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSuccessCallsCount()I
    .locals 3

    .prologue
    .line 453
    const-string v1, "DeviceInventory.getSuccessCallsCount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 456
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getSuccessCallsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 461
    :goto_0
    return v1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTotalCapacityExternal()J
    .locals 3

    .prologue
    .line 108
    const-string v1, "DeviceInventory.getTotalCapacityExternal"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityExternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 116
    :goto_0
    return-wide v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getTotalCapacityInternal()J
    .locals 3

    .prologue
    .line 142
    const-string v1, "DeviceInventory.getTotalCapacityInternal"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalCapacityInternal()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 150
    :goto_0
    return-wide v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getTotalRamMemory()J
    .locals 3

    .prologue
    .line 492
    const-string v1, "DeviceInventory.getTotalRamMemory"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getTotalRamMemory()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 500
    :goto_0
    return-wide v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getWifiStatisticEnabled()Z
    .locals 3

    .prologue
    .line 837
    const-string v1, "DeviceInventory.getWifiStatisticEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 838
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 840
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->getWifiStatisticEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 845
    :goto_0
    return v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCallingCaptureEnabled()Z
    .locals 3

    .prologue
    .line 694
    const-string v1, "DeviceInventory.isCallingCaptureEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 695
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 697
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isCallingCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 702
    :goto_0
    return v1

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 3

    .prologue
    .line 90
    const-string v1, "DeviceInventory.isDeviceLocked"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceRooted()Z
    .locals 3

    .prologue
    .line 1343
    const-string v1, "DeviceInventory.isDeviceRooted"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1344
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1346
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceRooted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1351
    :goto_0
    return v1

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1351
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDeviceSecure()Z
    .locals 3

    .prologue
    .line 73
    const-string v1, "DeviceInventory.isDeviceSecure"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isDeviceSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSMSCaptureEnabled()Z
    .locals 3

    .prologue
    .line 558
    const-string v1, "DeviceInventory.isSMSCaptureEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 561
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->isSMSCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 566
    :goto_0
    return v1

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetCallsCount()Z
    .locals 3

    .prologue
    .line 470
    const-string v1, "DeviceInventory.resetCallsCount"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 473
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->resetCallsCount()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 478
    :goto_0
    return v1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetDataCallLogging(Ljava/lang/String;)Z
    .locals 3
    .parameter "time"

    .prologue
    .line 1159
    const-string v1, "DeviceInventory.resetDataCallLogging"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1160
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1162
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->resetDataCallLogging(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1167
    :goto_0
    return v1

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to resetDataCallLogging (String time)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetDataUsage()V
    .locals 3

    .prologue
    .line 991
    const-string v1, "DeviceInventory.resetDataUsage"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 992
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 994
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->resetDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataCallLoggingEnabled(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 1104
    const-string v1, "DeviceInventory.setDataCallLoggingEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1105
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1107
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataCallLoggingEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1112
    :goto_0
    return v1

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device inventory policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1112
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataCallStatisticsEnabled(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 864
    const-string v1, "DeviceInventory.setDataCallStatisticsEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 867
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataCallStatisticsEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 872
    :goto_0
    return v1

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setDataCallLoggingStatisticsEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataUsageTimer(I)Z
    .locals 3
    .parameter "seconds"

    .prologue
    .line 1018
    const-string v1, "DeviceInventory.setDataUsageTimer"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1019
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1021
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setDataUsageTimer(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1026
    :goto_0
    return v1

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiStatisticEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 820
    const-string v1, "DeviceInventory.setWifiStatisticEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 821
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 823
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceInfo;->setWifiStatisticEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 828
    :goto_0
    return v1

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "address"
    .parameter "timeStamp"
    .parameter "duration"
    .parameter "status"
    .parameter "isIncoming"

    .prologue
    .line 723
    iget-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v0, :cond_0

    .line 725
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IDeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    const/4 v0, 0x1

    .line 732
    :goto_0
    return v0

    .line 728
    :catch_0
    move-exception v6

    .line 729
    .local v6, e:Landroid/os/RemoteException;
    sget-object v0, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with device inventory policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "address"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "isInbound"

    .prologue
    .line 632
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 634
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IDeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateDataUsageState()V
    .locals 3

    .prologue
    .line 1075
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    if-eqz v1, :cond_0

    .line 1077
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceInventory;->mService:Landroid/app/enterprise/IDeviceInfo;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceInfo;->updateDataUsageState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
