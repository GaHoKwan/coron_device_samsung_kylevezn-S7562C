.class public Landroid/app/enterprise/VpnPolicy;
.super Ljava/lang/Object;
.source "VpnPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final VPN_NEW_PROFILE:Ljava/lang/String; = "com.android.server.enterprise.VPN_NEW_PROFILE"


# instance fields
.field private final lService:Landroid/app/enterprise/IVpnInfoPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "VpnPolicy"

    sput-object v0, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IVpnInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    .line 51
    sget-object v0, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vpn policy API -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method


# virtual methods
.method public allowOnlySecureConnections(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1852
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1853
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->allowOnlySecureConnections(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1858
    :goto_0
    return v1

    .line 1855
    :catch_0
    move-exception v0

    .line 1856
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API allowOnlySecureConnections "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1858
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkRacoonSecurity([Ljava/lang/String;)Z
    .locals 3
    .parameter "racoon"

    .prologue
    .line 1911
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1912
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->checkRacoonSecurity([Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1917
    :goto_0
    return v1

    .line 1914
    :catch_0
    move-exception v0

    .line 1915
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API checkRacoonSecurity "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1917
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public createProfile(Landroid/app/enterprise/VpnAdminProfile;)Z
    .locals 3
    .parameter "profile"

    .prologue
    .line 121
    const-string v1, "VpnPolicy.createProfile"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 123
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->createProfile(Landroid/app/enterprise/VpnAdminProfile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_0
    return v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API createProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)V
    .locals 3
    .parameter "profileName"

    .prologue
    .line 155
    const-string v1, "VpnPolicy.deleteProfile"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 157
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->deleteProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API deleteProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDnsDomains(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "profileName"
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
    .line 1584
    const-string v1, "VpnPolicy.getDnsDomains"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1586
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1587
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getDnsDomains(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1593
    :goto_0
    return-object v1

    .line 1590
    :catch_0
    move-exception v0

    .line 1591
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getDnsDomains "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1593
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDnsServers(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "profileName"
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
    .line 1472
    const-string v1, "VpnPolicy.getDnsServers"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1474
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1475
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getDnsServers(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1480
    :goto_0
    return-object v1

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getDnsServers "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1480
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getForwardRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "profileName"
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
    .line 1701
    const-string v1, "VpnPolicy.getForwardRoutes"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1703
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1704
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getForwardRoutes(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1709
    :goto_0
    return-object v1

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getForwardRoutes "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1709
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIPSecCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 581
    const-string v1, "VpnPolicy.getIPSecCaCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 583
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 589
    :goto_0
    return-object v1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIPSecPreSharedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 476
    const-string v1, "VpnPolicy.getIPSecPreSharedKey"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 478
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getPresharedKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 484
    :goto_0
    return-object v1

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getSharedSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIPSecUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 695
    const-string v1, "VpnPolicy.getIPSecUserCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 697
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 703
    :goto_0
    return-object v1

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 906
    const-string v2, "VpnPolicy.getId"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 907
    const/4 v1, 0x0

    .line 909
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 910
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 915
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 912
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIpSecIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 1801
    const-string v1, "VpnPolicy.getIpSecIdentifier"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1803
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1804
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getIpSecIdentifier(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1809
    :goto_0
    return-object v1

    .line 1806
    :catch_0
    move-exception v0

    .line 1807
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getIpSecIdentifier "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1809
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 1230
    const-string v1, "VpnPolicy.getL2TPSecret"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1232
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1233
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1238
    :goto_0
    return-object v1

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getL2TPSecret "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1238
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 871
    const-string v2, "VpnPolicy.getServerName"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 872
    const/4 v1, 0x0

    .line 874
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 875
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getServerName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 880
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 877
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 878
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getServerName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 963
    const-string v2, "VpnPolicy.getState"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 964
    const/4 v1, 0x0

    .line 966
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 967
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 972
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 969
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 970
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 835
    const-string v2, "VpnPolicy.getType"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 836
    const/4 v1, 0x0

    .line 838
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 839
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 844
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 841
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 842
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 1014
    const-string v2, "VpnPolicy.getUserName"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1015
    const/4 v1, 0x0

    .line 1017
    .local v1, userName:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 1018
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1023
    .end local v1           #userName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1020
    .restart local v1       #userName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1021
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 1295
    const-string v1, "VpnPolicy.getUserNameById"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1297
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1298
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1304
    :goto_0
    return-object v1

    .line 1301
    :catch_0
    move-exception v0

    .line 1302
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1304
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 1050
    const-string v2, "VpnPolicy.getUserPassword"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1051
    const/4 v1, 0x0

    .line 1053
    .local v1, userPwd:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 1054
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserPwd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1059
    .end local v1           #userPwd:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1056
    .restart local v1       #userPwd:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1057
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 1325
    const-string v1, "VpnPolicy.getUserPwdById"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1327
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1328
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1334
    :goto_0
    return-object v1

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1334
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVpnList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1134
    const-string v1, "VpnPolicy.getVpnList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1136
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1137
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IVpnInfoPolicy;->getVPNList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1142
    :goto_0
    return-object v1

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getVpnList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1142
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminProfile(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileName"

    .prologue
    .line 1084
    const-string v2, "VpnPolicy.isAdminProfile"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1085
    const/4 v1, 0x0

    .line 1087
    .local v1, isAdminProfile:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 1088
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v3, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/enterprise/IVpnInfoPolicy;->isAdminProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1093
    .end local v1           #isAdminProfile:Z
    :cond_0
    :goto_0
    return v1

    .line 1090
    .restart local v1       #isAdminProfile:Z
    :catch_0
    move-exception v0

    .line 1091
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API isAdminProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isL2TPSecretEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"

    .prologue
    .line 1265
    const-string v1, "VpnPolicy.isL2TPSecretEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1267
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1268
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->isL2TPSecretEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1274
    :goto_0
    return v1

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1274
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOnlySecureConnectionsAllowed()Z
    .locals 3

    .prologue
    .line 1895
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1896
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IVpnInfoPolicy;->isOnlySecureConnectionsAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1901
    :goto_0
    return v1

    .line 1898
    :catch_0
    move-exception v0

    .line 1899
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isOnlySecureConnectionsAllowed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1901
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"

    .prologue
    .line 766
    const-string v1, "VpnPolicy.isPPTPEncryptionEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 768
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 774
    :goto_0
    return v1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDnsDomains(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "profileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1531
    .local p2, searchDomains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "VpnPolicy.setDnsDomains"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1533
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1534
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setDnsDomains(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1539
    :goto_0
    return v1

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setDnsDomains "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1539
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDnsServers(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "profileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1419
    .local p2, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "VpnPolicy.setDnsServers"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1421
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1422
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setDnsServers(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1427
    :goto_0
    return v1

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setDnsServers "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1427
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setForwardRoutes(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "profileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1648
    .local p2, routes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "VpnPolicy.setForwardRoutes"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1650
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1651
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setForwardRoutes(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1656
    :goto_0
    return v1

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setForwardRoutes "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1656
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIPSecCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 534
    const-string v1, "VpnPolicy.setIPSecCaCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 536
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 542
    :goto_0
    return v1

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIPSecPreSharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "psk"

    .prologue
    .line 440
    const-string v1, "VpnPolicy.setIPSecPreSharedKey"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 442
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 448
    :goto_0
    return v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setSharedSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIPSecUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 660
    const-string v1, "VpnPolicy.setIPSecUserCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 662
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 668
    :goto_0
    return v1

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "profileName"
    .parameter "id"

    .prologue
    .line 275
    const-string v1, "VpnPolicy.setId"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 277
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setId(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIpSecIdentifier(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "ipSecIdentifier"

    .prologue
    .line 1755
    const-string v1, "VpnPolicy.setIpSecIdentifier"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1757
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1758
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setIpSecIdentifier(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1763
    :goto_0
    return v1

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setIpSecIdentifier "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1763
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "enabled"
    .parameter "secret"

    .prologue
    .line 1194
    const-string v1, "VpnPolicy.setL2TPSecret"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1196
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1197
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1202
    :goto_0
    return v1

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setL2TPSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1202
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPPTPEncryptionEnabled(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "profileName"
    .parameter "enabled"

    .prologue
    .line 732
    const-string v1, "VpnPolicy.setPPTPEncryptionEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 734
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 740
    :goto_0
    return v1

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "oldProfileName"
    .parameter "newProfileName"

    .prologue
    .line 189
    const-string v1, "VpnPolicy.setProfileName"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServerName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "profileName"
    .parameter "serverName"

    .prologue
    .line 223
    const-string v1, "VpnPolicy.setServerName"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 225
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setServerName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "userName"

    .prologue
    .line 328
    const-string v1, "VpnPolicy.setUserName"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 330
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 336
    :goto_0
    return v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "userPassword"

    .prologue
    .line 382
    const-string v1, "VpnPolicy.setUserPassword"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 384
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 390
    :goto_0
    return v1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVpnProfile(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 1355
    const-string v1, "VpnPolicy.setVpnProfile"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1357
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 1358
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1364
    :goto_0
    return v1

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setVpnProfile "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1364
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
