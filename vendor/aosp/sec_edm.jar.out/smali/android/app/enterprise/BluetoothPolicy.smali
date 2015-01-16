.class public Landroid/app/enterprise/BluetoothPolicy;
.super Ljava/lang/Object;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/BluetoothPolicy$BluetoothProfile;,
        Landroid/app/enterprise/BluetoothPolicy$BluetoothUUID;
    }
.end annotation


# static fields
.field public static final NO_PROFILE:I = -0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IBluetoothPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "BluetoothPolicy"

    sput-object v0, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    .line 372
    return-void
.end method

.method private convertBluetoothProfile(I)Ljava/lang/String;
    .locals 1
    .parameter "profile"

    .prologue
    .line 908
    packed-switch p1, :pswitch_data_0

    .line 924
    const-string v0, ""

    :goto_0
    return-object v0

    .line 910
    :pswitch_0
    const-string v0, "Profile: A2DP\n"

    goto :goto_0

    .line 912
    :pswitch_1
    const-string v0, "Profile: Headset and Handsfree\n"

    goto :goto_0

    .line 914
    :pswitch_2
    const-string v0, "Profile: HEALTH\n"

    goto :goto_0

    .line 916
    :pswitch_3
    const-string v0, "Profile: INPUT DEVICE\n"

    goto :goto_0

    .line 918
    :pswitch_4
    const-string v0, "Profile: MAP\n"

    goto :goto_0

    .line 920
    :pswitch_5
    const-string v0, "Profile: PAN\n"

    goto :goto_0

    .line 922
    :pswitch_6
    const-string v0, "Profile: PBAP\n"

    goto :goto_0

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public activateBluetoothDeviceRestriction(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1906
    const-string v1, "BluetoothPolicy.activateBluetoothDeviceRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1907
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1909
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->activateBluetoothDeviceRestriction(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1914
    :goto_0
    return v1

    .line 1910
    :catch_0
    move-exception v0

    .line 1911
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1914
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public activateBluetoothUUIDRestriction(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1404
    const-string v1, "BluetoothPolicy.activateBluetoothUUIDRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1405
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1407
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->activateBluetoothUUIDRestriction(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1412
    :goto_0
    return v1

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1412
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addBluetoothDevicesToBlackList(Ljava/util/List;)Z
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
    .line 1491
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "BluetoothPolicy.addBluetoothDevicesToBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1492
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1494
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->addBluetoothDevicesToBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1499
    :goto_0
    return v1

    .line 1495
    :catch_0
    move-exception v0

    .line 1496
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1499
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addBluetoothDevicesToWhiteList(Ljava/util/List;)Z
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
    .line 1711
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "BluetoothPolicy.addBluetoothDevicesToWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1712
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1714
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->addBluetoothDevicesToWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1719
    :goto_0
    return v1

    .line 1715
    :catch_0
    move-exception v0

    .line 1716
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1719
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addBluetoothUUIDsToBlackList(Ljava/util/List;)Z
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
    .line 976
    .local p1, UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "BluetoothPolicy.addBluetoothUUIDsToBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 977
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 979
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->addBluetoothUUIDsToBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 984
    :goto_0
    return v1

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addBluetoothUUIDsToWhiteList(Ljava/util/List;)Z
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
    .line 1205
    .local p1, UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "BluetoothPolicy.addBluetoothUUIDsToWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1208
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->addBluetoothUUIDsToWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1213
    :goto_0
    return v1

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1213
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowBluetooth(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 458
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 460
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->allowBluetooth(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 465
    :goto_0
    return v1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowCallerIDDisplay(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2043
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 2045
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->allowCallerIDDisplay(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2050
    :goto_0
    return v1

    .line 2046
    :catch_0
    move-exception v0

    .line 2047
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to block caller id display "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowOutgoingCalls(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 524
    const-string v1, "BluetoothPolicy.allowOutgoingCalls"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 527
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->allowOutgoingCalls(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 532
    :goto_0
    return v1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .parameter "tag"
    .parameter "profile"
    .parameter "device"

    .prologue
    const/16 v7, 0xa

    .line 865
    const-string v2, ""

    .line 866
    .local v2, localName:Ljava/lang/String;
    const-string v1, ""

    .line 867
    .local v1, localAddress:Ljava/lang/String;
    const-string v5, ""

    .line 868
    .local v5, remoteName:Ljava/lang/String;
    const-string v4, ""

    .line 869
    .local v4, remoteAddress:Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 870
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    .line 872
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 874
    :cond_0
    if-eqz p3, :cond_1

    .line 875
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 876
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 879
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 880
    .local v3, logMsg:Ljava/lang/StringBuilder;
    const/4 v6, -0x1

    if-eq p2, v6, :cond_2

    .line 881
    invoke-direct {p0, p2}, Landroid/app/enterprise/BluetoothPolicy;->convertBluetoothProfile(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 884
    const-string v6, "Remote Address: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 888
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 889
    const-string v6, "Remote Name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 893
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 894
    const-string v6, "Local Address: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 898
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 899
    const-string v6, "Local Name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 904
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Landroid/app/enterprise/BluetoothPolicy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 852
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 854
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IBluetoothPolicy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearBluetoothDevicesFromBlackList()Z
    .locals 3

    .prologue
    .line 1596
    const-string v1, "BluetoothPolicy.clearBluetoothDevicesFromBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1597
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1599
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->clearBluetoothDevicesFromBlackList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1604
    :goto_0
    return v1

    .line 1600
    :catch_0
    move-exception v0

    .line 1601
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1604
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearBluetoothDevicesFromWhiteList()Z
    .locals 3

    .prologue
    .line 1816
    const-string v1, "BluetoothPolicy.clearBluetoothDevicesFromWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1817
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1819
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->clearBluetoothDevicesFromWhiteList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1824
    :goto_0
    return v1

    .line 1820
    :catch_0
    move-exception v0

    .line 1821
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1824
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearBluetoothUUIDsFromBlackList()Z
    .locals 3

    .prologue
    .line 1087
    const-string v1, "BluetoothPolicy.clearBluetoothUUIDsFromBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1090
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->clearBluetoothUUIDsFromBlackList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1095
    :goto_0
    return v1

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearBluetoothUUIDsFromWhiteList()Z
    .locals 3

    .prologue
    .line 1314
    const-string v1, "BluetoothPolicy.clearBluetoothUUIDsFromWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1315
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1317
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->clearBluetoothUUIDsFromWhiteList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1322
    :goto_0
    return v1

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1322
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowBluetoothDataTransfer()Z
    .locals 3

    .prologue
    .line 403
    const-string v1, "BluetoothPolicy.getAllowBluetoothDataTransfer"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 406
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBluetoothPolicy;->getAllowBluetoothDataTransfer(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 411
    :goto_0
    return v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBluetoothDevicesFromBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1627
    const-string v1, "BluetoothPolicy.getBluetoothDevicesFromBlackLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1628
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1630
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getAllBluetoothDevicesBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1635
    :goto_0
    return-object v1

    .line 1631
    :catch_0
    move-exception v0

    .line 1632
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1635
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBluetoothDevicesFromWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1847
    const-string v1, "BluetoothPolicy.getBluetoothDevicesFromWhiteLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1848
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1850
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getAllBluetoothDevicesWhiteLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1855
    :goto_0
    return-object v1

    .line 1851
    :catch_0
    move-exception v0

    .line 1852
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1855
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBluetoothLog()Ljava/util/List;
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
    .line 835
    const-string v1, "BluetoothPolicy.getBluetoothLog"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 836
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 838
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getBluetoothLog()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 843
    :goto_0
    return-object v1

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 843
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBluetoothUUIDsFromBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1117
    const-string v1, "BluetoothPolicy.getBluetoothUUIDsFromBlackLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1120
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getAllBluetoothUUIDsBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1125
    :goto_0
    return-object v1

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1125
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBluetoothUUIDsFromWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1345
    const-string v1, "BluetoothPolicy.getBluetoothUUIDsFromWhiteLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1346
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1348
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getAllBluetoothUUIDsWhiteLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1353
    :goto_0
    return-object v1

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1353
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEffectiveBluetoothDevicesBlackLists()Ljava/util/List;
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
    .line 1655
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1657
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getEffectiveBluetoothDevicesBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1662
    :goto_0
    return-object v1

    .line 1658
    :catch_0
    move-exception v0

    .line 1659
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1662
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEffectiveBluetoothDevicesWhiteLists()Ljava/util/List;
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
    .line 1875
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1877
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getEffectiveBluetoothDevicesWhiteLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1882
    :goto_0
    return-object v1

    .line 1878
    :catch_0
    move-exception v0

    .line 1879
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1882
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEffectiveBluetoothUUIDsBlackLists()Ljava/util/List;
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
    .line 1145
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1147
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getEffectiveBluetoothUUIDsBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1152
    :goto_0
    return-object v1

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEffectiveBluetoothUUIDsWhiteLists()Ljava/util/List;
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
    .line 1373
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1375
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getEffectiveBluetoothUUIDsWhiteLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1380
    :goto_0
    return-object v1

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1380
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "deviceAddress"

    .prologue
    .line 1999
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 2001
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2006
    :goto_0
    return v1

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2006
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBluetoothDeviceRestrictionActive()Z
    .locals 3

    .prologue
    .line 1936
    const-string v1, "BluetoothPolicy.isBluetoothDeviceRestrictionActive"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1937
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1939
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isBluetoothDeviceRestrictionActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1944
    :goto_0
    return v1

    .line 1940
    :catch_0
    move-exception v0

    .line 1941
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1944
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 3

    .prologue
    .line 439
    const/4 v1, 0x1

    .line 442
    .local v1, enabled:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IBluetoothPolicy;->isBluetoothEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 447
    :goto_0
    return v2

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    move v2, v1

    .line 447
    goto :goto_0
.end method

.method public isBluetoothLogEnabled()Z
    .locals 3

    .prologue
    .line 823
    const-string v1, "BluetoothPolicy.isBluetoothLogEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 826
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isBluetoothLogEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 831
    :goto_0
    return v1

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "uuid"

    .prologue
    .line 1968
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1970
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1975
    :goto_0
    return v1

    .line 1971
    :catch_0
    move-exception v0

    .line 1972
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1975
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBluetoothUUIDRestrictionActive()Z
    .locals 3

    .prologue
    .line 1435
    const-string v1, "BluetoothPolicy.isBluetoothUUIDRestrictionActive"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1436
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1438
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isBluetoothUUIDRestrictionActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1443
    :goto_0
    return v1

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1443
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCallerIDDisplayAllowed()Z
    .locals 3

    .prologue
    .line 2081
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 2083
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isCallerIDDisplayAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2088
    :goto_0
    return v1

    .line 2084
    :catch_0
    move-exception v0

    .line 2085
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getting caller id display status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDesktopConnectivityEnabled()Z
    .locals 3

    .prologue
    .line 798
    const-string v1, "BluetoothPolicy.isDesktopConnectivityEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 799
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 801
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isDesktopConnectivityEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 806
    :goto_0
    return v1

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDiscoverableEnabled()Z
    .locals 3

    .prologue
    .line 756
    const-string v1, "BluetoothPolicy.isDiscoverableEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 759
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isDiscoverableEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 764
    :goto_0
    return v1

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLimitedDiscoverableEnabled()Z
    .locals 3

    .prologue
    .line 585
    const-string v1, "BluetoothPolicy.isLimitedDiscoverableEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 588
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isLimitedDiscoverableEnabled()Z
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
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOutgoingCallsAllowed()Z
    .locals 3

    .prologue
    .line 542
    const-string v1, "BluetoothPolicy.isOutgoingCallsAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 545
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isOutgoingCallsAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 550
    :goto_0
    return v1

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPairingEnabled()Z
    .locals 3

    .prologue
    .line 501
    const-string v1, "BluetoothPolicy.isPairingEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 504
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isPairingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 509
    :goto_0
    return v1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isProfileEnabled(I)Z
    .locals 3
    .parameter "profile"

    .prologue
    .line 715
    const-string v1, "BluetoothPolicy.isProfileEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 718
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 723
    :goto_0
    return v1

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRequiredPasswordForDiscovery()Z
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public isRequiredPasswordForEnable()Z
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public removeBluetoothDevicesFromBlackList(Ljava/util/List;)Z
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
    .line 1546
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "BluetoothPolicy.removeBluetoothDevicesFromBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1547
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1549
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->removeBluetoothDevicesFromBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1554
    :goto_0
    return v1

    .line 1550
    :catch_0
    move-exception v0

    .line 1551
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1554
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z
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
    .line 1766
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "BluetoothPolicy.removeBluetoothDevicesFromWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1767
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1769
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1774
    :goto_0
    return v1

    .line 1770
    :catch_0
    move-exception v0

    .line 1771
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1774
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeBluetoothUUIDsFromBlackList(Ljava/util/List;)Z
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
    .line 1036
    .local p1, UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "BluetoothPolicy.removeBluetoothUUIDsFromBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1037
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1039
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->removeBluetoothUUIDsFromBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1044
    :goto_0
    return v1

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1044
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeBluetoothUUIDsFromWhiteList(Ljava/util/List;)Z
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
    .line 1263
    .local p1, UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "BluetoothPolicy.removeBluetoothUUIDsFromWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1264
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 1266
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->removeBluetoothUUIDsFromWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1271
    :goto_0
    return v1

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1271
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowBluetoothDataTransfer(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 386
    const-string v1, "BluetoothPolicy.setAllowBluetoothDataTransfer"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 389
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setAllowBluetoothDataTransfer(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 394
    :goto_0
    return v1

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBluetoothLogEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 811
    const-string v1, "BluetoothPolicy.setBluetoothLogEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 812
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 814
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setBluetoothLogEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 819
    :goto_0
    return v1

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBluetoothState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 423
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 425
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setBluetooth(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 430
    :goto_0
    return v1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDesktopConnectivityState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 780
    const-string v1, "BluetoothPolicy.setDesktopConnectivityState"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 783
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setDesktopConnectivityState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 788
    :goto_0
    return v1

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDiscoverableState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 739
    const-string v1, "BluetoothPolicy.setDiscoverableState"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 742
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setDiscoverableState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 747
    :goto_0
    return v1

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitedDiscoverableState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 567
    const-string v1, "BluetoothPolicy.setLimitedDiscoverableState"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 570
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setLimitedDiscoverableState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 575
    :goto_0
    return v1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPairingState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 483
    const-string v1, "BluetoothPolicy.setPairingState"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 486
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setPairingState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 491
    :goto_0
    return v1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProfileState(ZI)Z
    .locals 3
    .parameter "enable"
    .parameter "profile"

    .prologue
    .line 695
    const-string v1, "BluetoothPolicy.setProfileState"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 698
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IBluetoothPolicy;->setProfileState(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 703
    :goto_0
    return v1

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequiredPasswordForDiscovery(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public setRequiredPasswordForEnable(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 658
    const/4 v0, 0x0

    return v0
.end method
