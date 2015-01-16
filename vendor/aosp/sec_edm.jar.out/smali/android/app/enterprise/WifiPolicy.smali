.class public Landroid/app/enterprise/WifiPolicy;
.super Ljava/lang/Object;
.source "WifiPolicy.java"


# static fields
.field public static final ACTION_DISABLE_NETWORK:Ljava/lang/String; = "edm.intent.action.disable"

.field public static final ACTION_ENABLE_NETWORK:Ljava/lang/String; = "edm.intent.action.enable"

.field public static final ACTION_LOCK_KEYSTORE:Ljava/lang/String; = "edm.intent.action.lock"

.field public static final CERTIFICATE_SECURITY_LEVEL_HIGH:I = 0x1

.field public static final CERTIFICATE_SECURITY_LEVEL_LOW:I = 0x0

.field public static final SECURITY_LEVEL_EAP_FAST:I = 0x4

.field public static final SECURITY_LEVEL_EAP_LEAP:I = 0x3

.field public static final SECURITY_LEVEL_EAP_PEAP:I = 0x5

.field public static final SECURITY_LEVEL_EAP_TLS:I = 0x7

.field public static final SECURITY_LEVEL_EAP_TTLS:I = 0x6

.field public static final SECURITY_LEVEL_OPEN:I = 0x0

.field public static final SECURITY_LEVEL_WEP:I = 0x1

.field public static final SECURITY_LEVEL_WPA:I = 0x2

.field public static final SECURITY_TYPE_OPEN:Ljava/lang/String; = "Open"

.field public static final SECURITY_TYPE_WPA_PSK:Ljava/lang/String; = "WPA_PSK"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IWifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "WifiPolicy"

    sput-object v0, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-string v0, "wifi_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IWifiPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    .line 103
    return-void
.end method

.method public static getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2091
    const/4 v0, 0x0

    .line 2092
    .local v0, sec:I
    if-eqz p0, :cond_0

    .line 2093
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2094
    const/4 v0, 0x2

    .line 2118
    :cond_0
    :goto_0
    return v0

    .line 2095
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2097
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2098
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PEAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2099
    const/4 v0, 0x5

    goto :goto_0

    .line 2100
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2101
    const/4 v0, 0x6

    goto :goto_0

    .line 2102
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2103
    const/4 v0, 0x7

    goto :goto_0

    .line 2104
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LEAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2105
    const/4 v0, 0x3

    goto :goto_0

    .line 2106
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2107
    const/4 v0, 0x4

    goto :goto_0

    .line 2109
    :cond_7
    const/4 v0, 0x7

    goto :goto_0

    .line 2113
    :cond_8
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-nez v3, :cond_9

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_9

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-nez v3, :cond_9

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eqz v3, :cond_a

    :cond_9
    move v0, v2

    :goto_1
    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public activateWifiSsidRestriction(Z)Z
    .locals 3
    .parameter "activate"

    .prologue
    .line 2842
    const-string v1, "WifiPolicy.activateWifiSsidRestriction"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2843
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2845
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->activateWifiSsidRestriction(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2850
    :goto_0
    return v1

    .line 2846
    :catch_0
    move-exception v0

    .line 2847
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2850
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addBlockedNetwork(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1259
    const-string v1, "WifiPolicy.addBlockedNetwork"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1260
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1262
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->addBlockedNetwork(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1269
    :goto_0
    return v1

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "addBlockedNetwork - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1269
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addWifiSsidsToBlackList(Ljava/util/List;)Z
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
    .line 2441
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "WifiPolicy.addWifiSsidsToBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2442
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2444
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->addWifiSsidToBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2449
    :goto_0
    return v1

    .line 2445
    :catch_0
    move-exception v0

    .line 2446
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2449
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addWifiSsidsToWhiteList(Ljava/util/List;)Z
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
    .line 2657
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "WifiPolicy.addWifiSsidsToWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2658
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2660
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->addWifiSsidToWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2665
    :goto_0
    return v1

    .line 2661
    :catch_0
    move-exception v0

    .line 2662
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2665
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowOpenWifiAp(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2327
    const-string v1, "WifiPolicy.allowOpenWifiAp"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2328
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2330
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->allowOpenWifiAp(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2335
    :goto_0
    return v1

    .line 2331
    :catch_0
    move-exception v0

    .line 2332
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2335
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowWifiApSettingUserModification(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2253
    const-string v1, "WifiPolicy.allowWifiApSettingUserModification"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2254
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2256
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->allowWifiApSettingUserModification(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2261
    :goto_0
    return v1

    .line 2257
    :catch_0
    move-exception v0

    .line 2258
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2261
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearWifiSsidsFromBlackList()Z
    .locals 3

    .prologue
    .line 2547
    const-string v1, "WifiPolicy.clearWifiSsidsFromBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2548
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2550
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->clearWifiSsidBlackList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2555
    :goto_0
    return v1

    .line 2551
    :catch_0
    move-exception v0

    .line 2552
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2555
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearWifiSsidsFromWhiteList()Z
    .locals 3

    .prologue
    .line 2761
    const-string v1, "WifiPolicy.clearWifiSsidsFromWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2762
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2764
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->clearWifiSsidWhiteList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2769
    :goto_0
    return v1

    .line 2765
    :catch_0
    move-exception v0

    .line 2766
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2769
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 3
    .parameter "config"
    .parameter "netSSID"

    .prologue
    .line 2081
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2082
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2087
    :cond_0
    :goto_0
    return-void

    .line 2084
    :catch_0
    move-exception v0

    .line 2085
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API edmAddOrUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 3

    .prologue
    .line 1817
    const-string v1, "WifiPolicy.getAllowUserPolicyChanges"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1818
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1820
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getAllowUserPolicyChanges()Z
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
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getAllowUserPolicyChanges"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1825
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowUserProfiles(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1728
    const-string v1, "WifiPolicy.getAllowUserProfiles"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1729
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1731
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getAllowUserProfiles(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1736
    :goto_0
    return v1

    .line 1732
    :catch_0
    move-exception v0

    .line 1733
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getAllowUserProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1736
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAutomaticConnectionToWifi()Z
    .locals 3

    .prologue
    .line 1771
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1773
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getAutomaticConnectionToWifi()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1778
    :goto_0
    return v1

    .line 1774
    :catch_0
    move-exception v0

    .line 1775
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getAutomaticConnectionToWifi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1778
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBlockedNetworks()Ljava/util/List;
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
    .line 1307
    const-string v1, "WifiPolicy.getBlockedNetworks"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1308
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1310
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getBlockedNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1319
    :goto_0
    return-object v1

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getBlockedNetworks - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1319
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDHCPEnabled()Z
    .locals 3

    .prologue
    .line 1376
    const-string v1, "WifiPolicy.getDHCPEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1377
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1379
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDHCPEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1384
    :goto_0
    return v1

    .line 1380
    :catch_0
    move-exception v0

    .line 1381
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with setDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1384
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultGateway()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1476
    const-string v1, "WifiPolicy.getDefaultGateway"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1477
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1479
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultGateway()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1484
    :goto_0
    return-object v1

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1484
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultIp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1426
    const-string v1, "WifiPolicy.getDefaultIp"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1427
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1429
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultIp()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1434
    :goto_0
    return-object v1

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1434
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultPrimaryDNS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1527
    const-string v1, "WifiPolicy.getDefaultPrimaryDNS"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1528
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1530
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultPrimaryDNS()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1535
    :goto_0
    return-object v1

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getDefaultPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1535
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultSecondaryDNS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1577
    const-string v1, "WifiPolicy.getDefaultSecondaryDNS"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1578
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1580
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultSecondaryDNS()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1585
    :goto_0
    return-object v1

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getDefaultSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1585
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultSubnetMask()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1627
    const-string v1, "WifiPolicy.getDefaultSubnetMask"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1628
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1630
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultSubnetMask()Ljava/lang/String;
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
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getDefaultSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1635
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinimumRequiredSecurity()I
    .locals 3

    .prologue
    .line 1928
    const-string v1, "WifiPolicy.getMinimumRequiredSecurity"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1929
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1931
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getMinimumRequiredSecurity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1936
    :goto_0
    return v1

    .line 1932
    :catch_0
    move-exception v0

    .line 1933
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getSupportedSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1936
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 874
    const-string v1, "WifiPolicy.getNetworkAnonymousIdValue"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 876
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 877
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 883
    :goto_0
    return-object v1

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkAnonymousIdValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 760
    const-string v1, "WifiPolicy.getNetworkCaCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 762
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkCaCertification(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 768
    :goto_0
    return-object v1

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkCaCertification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 779
    const-string v1, "WifiPolicy.getNetworkClientCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 781
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 787
    :goto_0
    return-object v1

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkClientCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkDHCPEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 919
    const-string v1, "WifiPolicy.getNetworkDHCPEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 920
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 922
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkDHCPEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 927
    :goto_0
    return v1

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with getNetworkDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 722
    const-string v1, "WifiPolicy.getNetworkEAPType"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 724
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 730
    :goto_0
    return-object v1

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkEAPType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1027
    const-string v1, "WifiPolicy.getNetworkGateway"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1028
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1030
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1035
    :goto_0
    return-object v1

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1035
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 855
    const-string v1, "WifiPolicy.getNetworkPassword"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 857
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 863
    :goto_0
    return-object v1

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Wi-Fi policy API getNetworkIdentityValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 973
    const-string v1, "WifiPolicy.getNetworkIp"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 974
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 976
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkIp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 981
    :goto_0
    return-object v1

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 981
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 223
    const-string v1, "WifiPolicy.getNetworkLinkSecurity"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 225
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkLinkSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 798
    const-string v1, "WifiPolicy.getNetworkPSK"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 800
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 801
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 806
    :goto_0
    return-object v1

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPrivateKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 836
    const-string v1, "WifiPolicy.getNetworkPassword"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 838
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 839
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 844
    :goto_0
    return-object v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 741
    const-string v1, "WifiPolicy.getNetworkPhase2"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 743
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 749
    :goto_0
    return-object v1

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPhase2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1081
    const-string v1, "WifiPolicy.getNetworkPrimaryDNS"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1082
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1084
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1089
    :goto_0
    return-object v1

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1089
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 817
    const-string v1, "WifiPolicy.getNetworkPrivateKey"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 819
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 825
    :goto_0
    return-object v1

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPrivateKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkSSIDList()Ljava/util/List;
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
    .line 141
    const-string v1, "WifiPolicy.getNetworkSSIDList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 143
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkSSIDList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkSSID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1135
    const-string v1, "WifiPolicy.getNetworkSecondaryDNS"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1136
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1138
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1143
    :goto_0
    return-object v1

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1143
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1189
    const-string v1, "WifiPolicy.getNetworkSubnetMask"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1190
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1192
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1197
    :goto_0
    return-object v1

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1197
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 383
    const-string v1, "WifiPolicy.getNetworkWEPKey1"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 385
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 391
    :goto_0
    return-object v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 406
    const-string v1, "WifiPolicy.getNetworkWEPKey2"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 408
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    :goto_0
    return-object v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 429
    const-string v1, "WifiPolicy.getNetworkWEPKey3"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 431
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 437
    :goto_0
    return-object v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey3"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 452
    const-string v1, "WifiPolicy.getNetworkWEPKey4"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 454
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 460
    :goto_0
    return-object v1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey4"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKeyId(Ljava/lang/String;)I
    .locals 3
    .parameter "ssid"

    .prologue
    .line 703
    const-string v1, "WifiPolicy.getNetworkWEPKeyId"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 705
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKeyId(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 711
    :goto_0
    return v1

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKeyId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHidden()Z
    .locals 3

    .prologue
    .line 2045
    const-string v1, "WifiPolicy.getPasswordHidden"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2046
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2048
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getPasswordHidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2053
    :goto_0
    return v1

    .line 2049
    :catch_0
    move-exception v0

    .line 2050
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getPasswordHidden"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2053
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 3

    .prologue
    .line 1863
    const-string v1, "WifiPolicy.getPromptCredentialsEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1864
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1866
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getPromptCredentialsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1871
    :goto_0
    return v1

    .line 1867
    :catch_0
    move-exception v0

    .line 1868
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getPromptCredentialsEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1871
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTlsCertificateSecurityLevel()I
    .locals 3

    .prologue
    .line 1982
    const-string v1, "WifiPolicy.getTlsCertificateSecurityLevel"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1983
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1985
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getTlsCertificateSecurityLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1990
    :goto_0
    return v1

    .line 1986
    :catch_0
    move-exception v0

    .line 1987
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getTlsCertificateSecurityLevel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1990
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApSetting()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .prologue
    .line 2220
    const-string v1, "WifiPolicy.getWifiApSetting"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2221
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2223
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getWifiApSetting()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2228
    :goto_0
    return-object v1

    .line 2224
    :catch_0
    move-exception v0

    .line 2225
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2228
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1230
    const-string v1, "WifiPolicy.getWifiProfile"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1232
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1233
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
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
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getWifiProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1238
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiSsidsFromBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2591
    const-string v1, "WifiPolicy.getWifiSsidsFromBlackLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2592
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2594
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getAllWifiSsidBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2599
    :goto_0
    return-object v1

    .line 2595
    :catch_0
    move-exception v0

    .line 2596
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2599
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiSsidsFromWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2806
    const-string v1, "WifiPolicy.getWifiSsidsFromWhiteLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2807
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2809
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getAllWifiSsidWhiteLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2814
    :goto_0
    return-object v1

    .line 2810
    :catch_0
    move-exception v0

    .line 2811
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2814
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 2065
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2066
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2071
    :goto_0
    return v1

    .line 2068
    :catch_0
    move-exception v0

    .line 2069
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API isEnterpriseNetwork"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2071
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkBlocked(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "ssid"
    .parameter "showMsg"

    .prologue
    .line 1332
    const-string v1, "WifiPolicy.isNetworkBlocked"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1333
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1335
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1342
    :goto_0
    return v1

    .line 1336
    :catch_0
    move-exception v0

    .line 1337
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isNetworkBlocked - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1342
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkSecure(IZ)Z
    .locals 3
    .parameter "netId"
    .parameter "showMsg"

    .prologue
    .line 2003
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2005
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->isNetworkSecure(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2010
    :goto_0
    return v1

    .line 2006
    :catch_0
    move-exception v0

    .line 2007
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with isNetworkSecure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2010
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOpenWifiApAllowed()Z
    .locals 3

    .prologue
    .line 2367
    const-string v1, "WifiPolicy.isOpenWifiApAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2368
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2370
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->isOpenWifiApAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2375
    :goto_0
    return v1

    .line 2371
    :catch_0
    move-exception v0

    .line 2372
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2375
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWifiAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1682
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1684
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->isWifiAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1689
    :goto_0
    return v1

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with isWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1689
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWifiApSettingUserModificationAllowed()Z
    .locals 3

    .prologue
    .line 2294
    const-string v1, "WifiPolicy.isWifiApSettingUserModificationAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2295
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2297
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->isWifiApSettingUserModificationAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2302
    :goto_0
    return v1

    .line 2298
    :catch_0
    move-exception v0

    .line 2299
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2302
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWifiSsidRestrictionActive()Z
    .locals 3

    .prologue
    .line 2873
    const-string v1, "WifiPolicy.isWifiSsidRestrictionActive"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2874
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2876
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->isWifiSsidRestrictionActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2881
    :goto_0
    return v1

    .line 2877
    :catch_0
    move-exception v0

    .line 2878
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2881
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiStateChangeAllowed()Z
    .locals 3

    .prologue
    .line 2936
    const-string v1, "WifiPolicy.isWifiStateChangeAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2937
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2939
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->isWifiStateChangeAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2944
    :goto_0
    return v1

    .line 2940
    :catch_0
    move-exception v0

    .line 2941
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with isWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2944
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeBlockedNetwork(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1286
    const-string v1, "WifiPolicy.removeBlockedNetwork"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1287
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1289
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->removeBlockedNetwork(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1298
    :goto_0
    return v1

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "removeBlockedNetwork - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1298
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 169
    const-string v1, "WifiPolicy.removeNetworkConfiguration"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 171
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API removeNetworkConfiguration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeWifiSsidsFromBlackList(Ljava/util/List;)Z
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
    .line 2498
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "WifiPolicy.removeWifiSsidsFromBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2499
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2501
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->removeWifiSsidFromBlackList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2506
    :goto_0
    return v1

    .line 2502
    :catch_0
    move-exception v0

    .line 2503
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2506
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeWifiSsidsFromWhiteList(Ljava/util/List;)Z
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
    .line 2712
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "WifiPolicy.removeWifiSsidsFromWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2713
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2715
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->removeWifiSsidFromWhiteList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2720
    :goto_0
    return v1

    .line 2716
    :catch_0
    move-exception v0

    .line 2717
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2720
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowUserPolicyChanges(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1799
    const-string v1, "WifiPolicy.setAllowUserPolicyChanges"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1800
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1802
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setAllowUserPolicyChanges(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1807
    :goto_0
    return v1

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setAllowUserPolicyChanges"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1807
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowUserProfiles(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1708
    const-string v1, "WifiPolicy.setAllowUserProfiles"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1709
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1711
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setAllowUserProfiles(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1716
    :goto_0
    return v1

    .line 1712
    :catch_0
    move-exception v0

    .line 1713
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setAllowUserProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1716
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutomaticConnectionToWifi(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1754
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1756
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setAutomaticConnectionToWifi(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1761
    :goto_0
    return v1

    .line 1757
    :catch_0
    move-exception v0

    .line 1758
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setAutomaticConnectionToWifi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1761
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDHCPEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1355
    const-string v1, "WifiPolicy.setDHCPEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1356
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1358
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDHCPEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1363
    :goto_0
    return v1

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with setDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1363
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultGateway(Ljava/lang/String;)Z
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 1451
    const-string v1, "WifiPolicy.setDefaultGateway"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1452
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1454
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultGateway(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1459
    :goto_0
    return v1

    .line 1455
    :catch_0
    move-exception v0

    .line 1456
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1459
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultIp(Ljava/lang/String;)Z
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 1401
    const-string v1, "WifiPolicy.setDefaultIp"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1402
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1404
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultIp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1409
    :goto_0
    return v1

    .line 1405
    :catch_0
    move-exception v0

    .line 1406
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1409
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultPrimaryDNS(Ljava/lang/String;)Z
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 1501
    const-string v1, "WifiPolicy.setDefaultPrimaryDNS"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1502
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1504
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultPrimaryDNS(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1509
    :goto_0
    return v1

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1509
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultSecondaryDNS(Ljava/lang/String;)Z
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 1552
    const-string v1, "WifiPolicy.setDefaultSecondaryDNS"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1553
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1555
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultSecondaryDNS(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1560
    :goto_0
    return v1

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultSubnetMask(Ljava/lang/String;)Z
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 1602
    const-string v1, "WifiPolicy.setDefaultSubnetMask"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1603
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1605
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultSubnetMask(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1610
    :goto_0
    return v1

    .line 1606
    :catch_0
    move-exception v0

    .line 1607
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1610
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMinimumRequiredSecurity(I)Z
    .locals 3
    .parameter "secType"

    .prologue
    .line 1900
    const-string v1, "WifiPolicy.setMinimumRequiredSecurity"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1901
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1903
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setMinimumRequiredSecurity(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1908
    :goto_0
    return v1

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setMinimumRequiredSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1908
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 569
    const-string v1, "WifiPolicy.setNetworkAnonymousIdValue"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 571
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 578
    :goto_0
    return v1

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkAnonymousIdValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 656
    const-string v1, "WifiPolicy.setNetworkCaCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 658
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 659
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 664
    :goto_0
    return v1

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkClientCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 626
    const-string v1, "WifiPolicy.setNetworkClientCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 628
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 636
    :goto_0
    return v1

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkClientCertification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkDHCPEnabled(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "ssid"
    .parameter "enable"

    .prologue
    .line 897
    const-string v1, "WifiPolicy.setNetworkDHCPEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 898
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 900
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkDHCPEnabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 905
    :goto_0
    return v1

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with setNetworkDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "ipAddr"

    .prologue
    .line 1000
    const-string v1, "WifiPolicy.setNetworkGateway"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1001
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1003
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1008
    :goto_0
    return v1

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 539
    const-string v1, "WifiPolicy.setNetworkIdentityValue"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 541
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 547
    :goto_0
    return v1

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkIdentityValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "ipAddr"

    .prologue
    .line 946
    const-string v1, "WifiPolicy.setNetworkIp"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 947
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 949
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 954
    :goto_0
    return v1

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 198
    const-string v1, "WifiPolicy.setNetworkLinkSecurity"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 200
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 206
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkLinkSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "psk"

    .prologue
    .line 481
    const-string v1, "WifiPolicy.setNetworkPSK"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 483
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 489
    :goto_0
    return v1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPSK"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 510
    const-string v1, "WifiPolicy.setNetworkPassword"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 512
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 518
    :goto_0
    return v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 598
    const-string v1, "WifiPolicy.setNetworkPhase2"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 600
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 606
    :goto_0
    return v1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPhase2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "ipAddr"

    .prologue
    .line 1054
    const-string v1, "WifiPolicy.setNetworkPrimaryDNS"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1055
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1057
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1062
    :goto_0
    return v1

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1062
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 684
    const-string v1, "WifiPolicy.setNetworkPrivateKey"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 686
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 692
    :goto_0
    return v1

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPrivateKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSSID(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 120
    const-string v1, "WifiPolicy.setNetworkSSID"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setNetworkSSID(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 128
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkSSID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "ipAddr"

    .prologue
    .line 1108
    const-string v1, "WifiPolicy.setNetworkSecondaryDNS"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1109
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1111
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1116
    :goto_0
    return v1

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "ipAddr"

    .prologue
    .line 1162
    const-string v1, "WifiPolicy.setNetworkSubnetMask"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1163
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1165
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1170
    :goto_0
    return v1

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 279
    const-string v1, "WifiPolicy.setNetworkWEPKey1"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 281
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 306
    const-string v1, "WifiPolicy.setNetworkWEPKey2"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 308
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 314
    :goto_0
    return v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 333
    const-string v1, "WifiPolicy.setNetworkWEPKey3"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 335
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 341
    :goto_0
    return v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey3"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 360
    const-string v1, "WifiPolicy.setNetworkWEPKey4"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 362
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 368
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey4"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKeyId(Ljava/lang/String;I)Z
    .locals 3
    .parameter "ssid"
    .parameter "keyId"

    .prologue
    .line 252
    const-string v1, "WifiPolicy.setNetworkWEPKeyId"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 254
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKeyId(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 260
    :goto_0
    return v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKeyId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordHidden(Z)Z
    .locals 3
    .parameter "passHidden"

    .prologue
    .line 2028
    const-string v1, "WifiPolicy.setPasswordHidden"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2029
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2031
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setPasswordHidden(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2036
    :goto_0
    return v1

    .line 2032
    :catch_0
    move-exception v0

    .line 2033
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setPasswordHidden"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2036
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPromptCredentialsEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1845
    const-string v1, "WifiPolicy.setPromptCredentialsEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1846
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1848
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setPromptCredentialsEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1853
    :goto_0
    return v1

    .line 1849
    :catch_0
    move-exception v0

    .line 1850
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setPromptCredentialsEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1853
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTlsCertificateSecurityLevel(I)Z
    .locals 3
    .parameter "level"

    .prologue
    .line 1957
    const-string v1, "WifiPolicy.setTlsCertificateSecurityLevel"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1958
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1960
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setTlsCertificateSecurityLevel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1969
    :goto_0
    return v1

    .line 1961
    :catch_0
    move-exception v0

    .line 1962
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setTlsCertificateSecurityLevel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1969
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifi(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1647
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1649
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setWifi(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1654
    :goto_0
    return v1

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1654
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiAllowed(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1664
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1666
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setWifiAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1671
    :goto_0
    return v1

    .line 1667
    :catch_0
    move-exception v0

    .line 1668
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1671
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "securityType"
    .parameter "password"

    .prologue
    .line 2171
    const-string v1, "WifiPolicy.setWifiApSetting"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2172
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2174
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IWifiPolicy;->setWifiApSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2179
    :goto_0
    return v1

    .line 2175
    :catch_0
    move-exception v0

    .line 2176
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2179
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z
    .locals 3
    .parameter "profile"

    .prologue
    .line 1210
    const-string v1, "WifiPolicy.setWifiProfile"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1212
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1213
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1218
    :goto_0
    return v1

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setWifiProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1218
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiStateChangeAllowed(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2916
    const-string v1, "WifiPolicy.setWifiStateChangeAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2917
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 2919
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setWifiStateChangeAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2924
    :goto_0
    return v1

    .line 2920
    :catch_0
    move-exception v0

    .line 2921
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2924
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
