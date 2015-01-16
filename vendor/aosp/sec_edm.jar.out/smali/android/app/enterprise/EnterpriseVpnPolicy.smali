.class public Landroid/app/enterprise/EnterpriseVpnPolicy;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final VPN_CERT_TYPE_AUTOMATIC:Ljava/lang/String; = "Automatic"

.field public static final VPN_CERT_TYPE_DISABLED:Ljava/lang/String; = "Disabled"

.field public static final VPN_CERT_TYPE_MANUAL:Ljava/lang/String; = "Manual"

.field public static final VPN_TYPE_ANYCONNECT:Ljava/lang/String; = "anyconnect"


# instance fields
.field private final mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "EnterpriseVpnPolicy"

    sput-object v0, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "enterprise_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    .line 64
    return-void
.end method


# virtual methods
.method public getAllEnterpriseVpnConnections()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnterpriseVpnConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    const-string v1, "EnterpriseVpnPolicy.getAllEnterpriseVpnConnections"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 170
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->getAllEnterpriseVpnConnections()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    :goto_0
    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API getAllEnterpriseVpnConnections"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClientCertificates(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    const-string v1, "EnterpriseVpnPolicy.getClientCertificates"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 229
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->getClientCertificates(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 237
    :goto_0
    return-object v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API getClientCertificates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseVpnConnection;
    .locals 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 82
    const-string v1, "EnterpriseVpnPolicy.getEnterpriseVpnConnection"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->getEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseVpnConnection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API getEnterpriseVpnConnection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installClientCertificate(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "pkcs12Blob"
    .parameter "password"

    .prologue
    .line 201
    const-string v1, "EnterpriseVpnPolicy.installClientCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 203
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->installClientCertificate(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    :goto_0
    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API installCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 143
    const-string v1, "EnterpriseVpnPolicy.removeEnterpriseVpnConnection"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 145
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->removeEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API removeEnterpriseVpnConnection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnterpriseVpnConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Z
    .locals 3
    .parameter "vpn"
    .parameter "oldName"

    .prologue
    .line 114
    const-string v1, "EnterpriseVpnPolicy.setEnterpriseVpnConnection"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 116
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->setEnterpriseVpnConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 126
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API setEnterpriseVpnConnection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
