.class public Landroid/app/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;,
        Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_ENTERPRISE_LICENSE_EXPIRING:Ljava/lang/String; = "android.intent.action.sec.ENTERPRISE_LICENSE_EXPIRING"

.field public static final ACTION_ENTERPRISE_MIGRATION:Ljava/lang/String; = "android.intent.action.sec.ENTERPRISE_MIGRATION"

.field public static final ACTION_NOTIFY_STORAGE_CARD:Ljava/lang/String; = "secedm.src.android.app.enterprise.action.NOTIFY_STORAGE_CARD"

.field public static final APN_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "apn_settings_policy"

.field public static final APPLICATION_POLICY_SERVICE:Ljava/lang/String; = "application_policy"

.field public static final APPPERMISSION_POLICY_SERVICE:Ljava/lang/String; = "apppermission_control_policy"

.field public static final AUDIT_LOG:Ljava/lang/String; = "auditlog"

.field public static final BLUETOOTH_POLICY_SERVICE:Ljava/lang/String; = "bluetooth_policy"

.field public static final BROWSER_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "browser_policy"

.field public static final CALLING_POLICY_SERVICE:Ljava/lang/String; = "calling_policy"

.field public static final CERTIFICATE_POLICY_SERVICE:Ljava/lang/String; = "certificate_policy"

.field public static final DATA_FADE_POLICY_SERVICE:Ljava/lang/String; = "data_fade_policy"

.field public static final DATE_TIME_POLICY_SERVICE:Ljava/lang/String; = "date_time_policy"

.field public static final DEVICE_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "device_account_policy"

.field public static final DEVICE_INVENTORY_SERVICE:Ljava/lang/String; = "device_info"

.field public static final DO_KEYGUARD:Ljava/lang/String; = "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

.field public static final EAS_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "eas_account_policy"

.field public static final EMAIL_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "email_account_policy"

.field public static final EMAIL_POLICY_SERVICE:Ljava/lang/String; = "email_policy"

.field public static final ENTERPRISE_LICENSE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_license_policy"

.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final ENTERPRISE_VPN_POLICY_SERVICE:Ljava/lang/String; = "enterprise_vpn_policy"

.field public static final ERROR_CRYPTO_CHECK_FAILURE:I = -0x5

.field public static final ERROR_INVALID_FILE:I = -0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_ACTIVE_ADMIN:I = -0x2

.field public static final ERROR_PACKAGE_NAME_MISMATCH:I = -0x4

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_CURRENT_VERSION:Ljava/lang/String; = "currentVersion"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final EXTRA_LICENSE_EXPIRATION_TIME:Ljava/lang/String; = "licenseExpirationTime"

.field public static final EXTRA_MIGRATION_RESULT:Ljava/lang/String; = "migrationResult"

.field public static final FIREWALL_POLICY_SERVICE:Ljava/lang/String; = "firewall_policy"

.field public static final GEOFENCING:Ljava/lang/String; = "geofencing"

.field public static final KIOSKMODE:Ljava/lang/String; = "kioskmode"

.field public static final LDAP_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "ldap_account_policy"

.field public static final LICENSE_LOG_API:Ljava/lang/String; = "api_call"

.field public static final LICENSE_LOG_END:Ljava/lang/String; = "log_end"

.field public static final LICENSE_LOG_SERVICE:Ljava/lang/String; = "license_log_service"

.field public static final LICENSE_LOG_START:Ljava/lang/String; = "log_start"

.field public static final LOCATION_POLICY_SERVICE:Ljava/lang/String; = "location_policy"

.field public static final LOG_MANAGER_SERVICE:Ljava/lang/String; = "log_manager_service"

.field public static final MISC_POLICY_SERVICE:Ljava/lang/String; = "misc_policy"

.field public static final MTP_BLOCKED:Ljava/lang/String; = "secedm.src.android.app.enterprise.action.MTP_BLOCKED"

.field public static final PASSWORD_POLICY_SERVICE:Ljava/lang/String; = "password_policy"

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final PHONE_RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "phone_restriction_policy"

.field public static final REMOTE_INJECTION_SERVICE:Ljava/lang/String; = "remoteinjection"

.field public static final RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field public static final RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "restriction_policy"

.field public static final ROAMING_POLICY_SERVICE:Ljava/lang/String; = "roaming_policy"

.field public static final SEANDROID_POLICY:Ljava/lang/String; = "seandroid_policy"

.field public static final SECURITY_POLICY_SERVICE:Ljava/lang/String; = "security_policy"

.field public static final SMARTCARD_BROWSER_POLICY_SERVICE:Ljava/lang/String; = "smartcard_browser_policy"

.field public static final SMARTCARD_EMAIL_POLICY_SERVICE:Ljava/lang/String; = "smartcard_email_policy"

.field public static final SMARTCARD_VPN_POLICY_SERVICE:Ljava/lang/String; = "smartcard_vpn_policy"

.field private static TAG:Ljava/lang/String; = null

.field public static final VPN_POLICY_SERVICE:Ljava/lang/String; = "vpn_policy"

.field public static final WIFI_POLICY_SERVICE:Ljava/lang/String; = "wifi_policy"

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1


# instance fields
.field private mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

.field private mApnSettingsPolicyCreated:Z

.field private mAppPermissionControlPolicy:Landroid/app/enterprise/ApplicationPermissionControlPolicy;

.field private mAppPermissionControlPolicyCreated:Z

.field private mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

.field private mApplicationPolicyCreated:Z

.field private mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

.field private mBluetoothPolicyCreated:Z

.field private mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

.field private mBrowserPolicyCreated:Z

.field private mCallingPolicy:Landroid/app/enterprise/CallingPolicy;

.field private mCallingPolicyCreated:Z

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDateTimePolicy:Landroid/app/enterprise/DateTimePolicy;

.field private mDateTimePolicyCreated:Z

.field private mDeviceAccountPolicy:Landroid/app/enterprise/DeviceAccountPolicy;

.field private mDeviceAccountPolicyCreated:Z

.field private mDeviceInventory:Landroid/app/enterprise/DeviceInventory;

.field private mDeviceInventoryCreated:Z

.field private mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

.field private mEasAccountPolicyCreated:Z

.field private mEmailAccountPolicy:Landroid/app/enterprise/EmailAccountPolicy;

.field private mEmailAccountPolicyCreated:Z

.field private mEmailPolicy:Landroid/app/enterprise/EmailPolicy;

.field private mEmailPolicyCreated:Z

.field private mEnterpriseVpnPolicy:Landroid/app/enterprise/EnterpriseVpnPolicy;

.field private mEnterpriseVpnPolicyCreated:Z

.field private mFirewallPolicy:Landroid/app/enterprise/FirewallPolicy;

.field private mFirewallPolicyCreated:Z

.field private mLDAPAccountPolicy:Landroid/app/enterprise/LDAPAccountPolicy;

.field private mLDAPAccountPolicyCreated:Z

.field private mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

.field private mLocationPolicyCreated:Z

.field private mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

.field private mMiscPolicyCreated:Z

.field private mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mPasswordPolicyCreated:Z

.field private mPhonePolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

.field private mPhonePolicyCreated:Z

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRestrictionPolicyCreated:Z

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

.field private mRoamingPolicyCreated:Z

.field private mSecurityPolicy:Landroid/app/enterprise/SecurityPolicy;

.field private mSecurityPolicyCreated:Z

.field private mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

.field private mVpnPolicyCreated:Z

.field private mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

.field private mWifiPolicyCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "EnterpriseDeviceManager"

    sput-object v0, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    .line 844
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicyCreated:Z

    .line 845
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    .line 846
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    .line 847
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicyCreated:Z

    .line 848
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    .line 849
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    .line 850
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicyCreated:Z

    .line 851
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    .line 852
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    .line 853
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicyCreated:Z

    .line 854
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    .line 855
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    .line 856
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicyCreated:Z

    .line 857
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    .line 858
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    .line 859
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicyCreated:Z

    .line 860
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    .line 861
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicyCreated:Z

    .line 862
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    .line 863
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mAppPermissionControlPolicyCreated:Z

    .line 864
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailPolicyCreated:Z

    .line 865
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLDAPAccountPolicyCreated:Z

    .line 866
    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    .line 123
    iput-object p1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    .line 128
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 129
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 131
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 143
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0, p0, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 144
    .local v0, me:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v1, v0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .end local v0           #me:Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_0
    return-object v0

    .restart local v0       #me:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getService()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 135
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 138
    :cond_0
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public enforceActiveAdminPermission(Ljava/lang/String;)V
    .locals 3
    .parameter "reqPermission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-direct {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 586
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 460
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 462
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 467
    :goto_0
    return-object v1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 478
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getActiveAdmins()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 483
    :goto_0
    return-object v1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdminRemovable()Z
    .locals 3

    .prologue
    .line 656
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 658
    :try_start_0
    const-string v1, "EnterpriseDeviceManager.getAdminRemovable"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getAdminRemovable(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 664
    :goto_0
    return v1

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAdminRemovable(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 644
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 646
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getAdminRemovable(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 651
    :goto_0
    return v1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getApnSettingsPolicy()Landroid/app/enterprise/ApnSettingsPolicy;
    .locals 2

    .prologue
    .line 1037
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1038
    const-class v1, Landroid/app/enterprise/ApnSettingsPolicy;

    monitor-enter v1

    .line 1039
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1040
    new-instance v0, Landroid/app/enterprise/ApnSettingsPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/ApnSettingsPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicyCreated:Z

    .line 1043
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

    return-object v0

    .line 1043
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getApplicationPermissionControlPolicy()Landroid/app/enterprise/ApplicationPermissionControlPolicy;
    .locals 2

    .prologue
    .line 1223
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mAppPermissionControlPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1224
    const-class v1, Landroid/app/enterprise/ApplicationPermissionControlPolicy;

    monitor-enter v1

    .line 1225
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mAppPermissionControlPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1226
    new-instance v0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/ApplicationPermissionControlPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mAppPermissionControlPolicy:Landroid/app/enterprise/ApplicationPermissionControlPolicy;

    .line 1227
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mAppPermissionControlPolicyCreated:Z

    .line 1229
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mAppPermissionControlPolicy:Landroid/app/enterprise/ApplicationPermissionControlPolicy;

    return-object v0

    .line 1229
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;
    .locals 2

    .prologue
    .line 884
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    if-nez v0, :cond_1

    .line 885
    const-class v1, Landroid/app/enterprise/ApplicationPolicy;

    monitor-enter v1

    .line 886
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Landroid/app/enterprise/ApplicationPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/ApplicationPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    .line 888
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    .line 890
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    return-object v0

    .line 890
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;
    .locals 2

    .prologue
    .line 1139
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1140
    const-class v1, Landroid/app/enterprise/BluetoothPolicy;

    monitor-enter v1

    .line 1141
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1142
    new-instance v0, Landroid/app/enterprise/BluetoothPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/BluetoothPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    .line 1143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    .line 1145
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    return-object v0

    .line 1145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;
    .locals 2

    .prologue
    .line 1156
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1157
    const-class v1, Landroid/app/enterprise/BrowserPolicy;

    monitor-enter v1

    .line 1158
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1159
    new-instance v0, Landroid/app/enterprise/BrowserPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/BrowserPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    .line 1162
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    return-object v0

    .line 1162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCallingPolicy()Landroid/app/enterprise/CallingPolicy;
    .locals 2

    .prologue
    .line 1088
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1089
    const-class v1, Landroid/app/enterprise/CallingPolicy;

    monitor-enter v1

    .line 1090
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1091
    new-instance v0, Landroid/app/enterprise/CallingPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/CallingPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicy:Landroid/app/enterprise/CallingPolicy;

    .line 1092
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicyCreated:Z

    .line 1094
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicy:Landroid/app/enterprise/CallingPolicy;

    return-object v0

    .line 1094
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentFailedPasswordAttempts()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    return v0
.end method

.method public getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;
    .locals 2

    .prologue
    .line 1207
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    if-nez v0, :cond_1

    .line 1208
    const-class v1, Landroid/app/enterprise/DateTimePolicy;

    monitor-enter v1

    .line 1209
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    if-nez v0, :cond_0

    .line 1210
    new-instance v0, Landroid/app/enterprise/DateTimePolicy;

    invoke-direct {v0}, Landroid/app/enterprise/DateTimePolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/app/enterprise/DateTimePolicy;

    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    .line 1213
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/app/enterprise/DateTimePolicy;

    return-object v0

    .line 1213
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDeviceAccountPolicy()Landroid/app/enterprise/DeviceAccountPolicy;
    .locals 3

    .prologue
    .line 1330
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1331
    const-class v1, Landroid/app/enterprise/DeviceAccountPolicy;

    monitor-enter v1

    .line 1332
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Landroid/app/enterprise/DeviceAccountPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/DeviceAccountPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/app/enterprise/DeviceAccountPolicy;

    .line 1334
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    .line 1336
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/app/enterprise/DeviceAccountPolicy;

    return-object v0

    .line 1336
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDeviceInventory()Landroid/app/enterprise/DeviceInventory;
    .locals 2

    .prologue
    .line 1020
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    if-nez v0, :cond_1

    .line 1021
    const-class v1, Landroid/app/enterprise/DeviceInventory;

    monitor-enter v1

    .line 1022
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    if-nez v0, :cond_0

    .line 1023
    new-instance v0, Landroid/app/enterprise/DeviceInventory;

    invoke-direct {v0}, Landroid/app/enterprise/DeviceInventory;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/app/enterprise/DeviceInventory;

    .line 1024
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    .line 1026
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/app/enterprise/DeviceInventory;

    return-object v0

    .line 1026
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getEmailAccountPolicy()Landroid/app/enterprise/EmailAccountPolicy;
    .locals 2

    .prologue
    .line 986
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicyCreated:Z

    if-nez v0, :cond_1

    .line 987
    const-class v1, Landroid/app/enterprise/EmailAccountPolicy;

    monitor-enter v1

    .line 988
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicyCreated:Z

    if-nez v0, :cond_0

    .line 989
    new-instance v0, Landroid/app/enterprise/EmailAccountPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/EmailAccountPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicy:Landroid/app/enterprise/EmailAccountPolicy;

    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicyCreated:Z

    .line 992
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicy:Landroid/app/enterprise/EmailAccountPolicy;

    return-object v0

    .line 992
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getEmailPolicy()Landroid/app/enterprise/EmailPolicy;
    .locals 2

    .prologue
    .line 1293
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1294
    const-class v1, Landroid/app/enterprise/EmailPolicy;

    monitor-enter v1

    .line 1295
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1296
    new-instance v0, Landroid/app/enterprise/EmailPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/EmailPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailPolicy:Landroid/app/enterprise/EmailPolicy;

    .line 1297
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailPolicyCreated:Z

    .line 1299
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailPolicy:Landroid/app/enterprise/EmailPolicy;

    return-object v0

    .line 1299
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getEnterpriseKeyVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .locals 1

    .prologue
    .line 730
    sget-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;->ENTERPRISE_KEY_VERSION_1:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

    return-object v0
.end method

.method public getEnterpriseSdkVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;
    .locals 1

    .prologue
    .line 753
    sget-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_3:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v0
.end method

.method public getEnterpriseVpnPolicy()Landroid/app/enterprise/EnterpriseVpnPolicy;
    .locals 2

    .prologue
    .line 1173
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1174
    const-class v1, Landroid/app/enterprise/EnterpriseVpnPolicy;

    monitor-enter v1

    .line 1175
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1176
    new-instance v0, Landroid/app/enterprise/EnterpriseVpnPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseVpnPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicy:Landroid/app/enterprise/EnterpriseVpnPolicy;

    .line 1177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicyCreated:Z

    .line 1179
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicy:Landroid/app/enterprise/EnterpriseVpnPolicy;

    return-object v0

    .line 1179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getExchangeAccountPolicy()Landroid/app/enterprise/ExchangeAccountPolicy;
    .locals 2

    .prologue
    .line 901
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicyCreated:Z

    if-nez v0, :cond_1

    .line 902
    const-class v1, Landroid/app/enterprise/ExchangeAccountPolicy;

    monitor-enter v1

    .line 903
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicyCreated:Z

    if-nez v0, :cond_0

    .line 904
    new-instance v0, Landroid/app/enterprise/ExchangeAccountPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/ExchangeAccountPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicyCreated:Z

    .line 907
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

    return-object v0

    .line 907
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFirewallPolicy()Landroid/app/enterprise/FirewallPolicy;
    .locals 3

    .prologue
    .line 1122
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1123
    const-class v1, Landroid/app/enterprise/FirewallPolicy;

    monitor-enter v1

    .line 1124
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Landroid/app/enterprise/FirewallPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/FirewallPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/app/enterprise/FirewallPolicy;

    .line 1126
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    .line 1128
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/app/enterprise/FirewallPolicy;

    return-object v0

    .line 1128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLDAPAccountPolicy()Landroid/app/enterprise/LDAPAccountPolicy;
    .locals 3

    .prologue
    .line 1313
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLDAPAccountPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1314
    const-class v1, Landroid/app/enterprise/LDAPAccountPolicy;

    monitor-enter v1

    .line 1315
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLDAPAccountPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1316
    new-instance v0, Landroid/app/enterprise/LDAPAccountPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/LDAPAccountPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLDAPAccountPolicy:Landroid/app/enterprise/LDAPAccountPolicy;

    .line 1317
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLDAPAccountPolicyCreated:Z

    .line 1319
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLDAPAccountPolicy:Landroid/app/enterprise/LDAPAccountPolicy;

    return-object v0

    .line 1319
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLocationPolicy()Landroid/app/enterprise/LocationPolicy;
    .locals 2

    .prologue
    .line 1071
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1072
    const-class v1, Landroid/app/enterprise/LocationPolicy;

    monitor-enter v1

    .line 1073
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Landroid/app/enterprise/LocationPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/LocationPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    .line 1075
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    .line 1077
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    return-object v0

    .line 1077
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMaximumFailedPasswordsForWipe()I
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMaximumTimeToLock()J
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 407
    const-string v0, "EnterpriseDeviceManager.getMinPasswordComplexChars"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMiscPolicy()Landroid/app/enterprise/MiscPolicy;
    .locals 3

    .prologue
    .line 935
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    if-nez v0, :cond_1

    .line 936
    const-class v1, Landroid/app/enterprise/MiscPolicy;

    monitor-enter v1

    .line 937
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    if-nez v0, :cond_0

    .line 938
    new-instance v0, Landroid/app/enterprise/MiscPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/MiscPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    .line 941
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    return-object v0

    .line 941
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .parameter "admin"

    .prologue
    .line 420
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 332
    const-string v0, "EnterpriseDeviceManager.getPasswordExpires"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 369
    const-string v0, "EnterpriseDeviceManager.getPasswordHistory"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordMaximumLength(I)I
    .locals 1
    .parameter "quality"

    .prologue
    .line 230
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLength()I
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;
    .locals 3

    .prologue
    .line 1003
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1004
    const-class v1, Landroid/app/enterprise/PasswordPolicy;

    monitor-enter v1

    .line 1005
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1006
    new-instance v0, Landroid/app/enterprise/PasswordPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/PasswordPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 1007
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    .line 1009
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    return-object v0

    .line 1009
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPasswordQuality()I
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;
    .locals 2

    .prologue
    .line 1190
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    if-nez v0, :cond_1

    .line 1191
    const-class v1, Landroid/app/enterprise/PhoneRestrictionPolicy;

    monitor-enter v1

    .line 1192
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    if-nez v0, :cond_0

    .line 1193
    new-instance v0, Landroid/app/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/PhoneRestrictionPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    .line 1196
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

    return-object v0

    .line 1196
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3
    .parameter "admin"
    .parameter "result"

    .prologue
    .line 568
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 570
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .locals 3

    .prologue
    .line 952
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    if-nez v0, :cond_1

    .line 953
    const-class v1, Landroid/app/enterprise/RestrictionPolicy;

    monitor-enter v1

    .line 954
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    if-nez v0, :cond_0

    .line 955
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    .line 958
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0

    .line 958
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;
    .locals 2

    .prologue
    .line 918
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    if-nez v0, :cond_1

    .line 919
    const-class v1, Landroid/app/enterprise/RoamingPolicy;

    monitor-enter v1

    .line 920
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    if-nez v0, :cond_0

    .line 921
    new-instance v0, Landroid/app/enterprise/RoamingPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/RoamingPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    .line 924
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    return-object v0

    .line 924
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;
    .locals 3

    .prologue
    .line 969
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicyCreated:Z

    if-nez v0, :cond_1

    .line 970
    const-class v1, Landroid/app/enterprise/SecurityPolicy;

    monitor-enter v1

    .line 971
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicyCreated:Z

    if-nez v0, :cond_0

    .line 972
    new-instance v0, Landroid/app/enterprise/SecurityPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/SecurityPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicyCreated:Z

    .line 975
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicy:Landroid/app/enterprise/SecurityPolicy;

    return-object v0

    .line 975
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getVpnPolicy()Landroid/app/enterprise/VpnPolicy;
    .locals 2

    .prologue
    .line 1054
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1055
    const-class v1, Landroid/app/enterprise/VpnPolicy;

    monitor-enter v1

    .line 1056
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1057
    new-instance v0, Landroid/app/enterprise/VpnPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/VpnPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicyCreated:Z

    .line 1060
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    return-object v0

    .line 1060
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWifiPolicy()Landroid/app/enterprise/WifiPolicy;
    .locals 2

    .prologue
    .line 1105
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    if-nez v0, :cond_1

    .line 1106
    const-class v1, Landroid/app/enterprise/WifiPolicy;

    monitor-enter v1

    .line 1107
    :try_start_0
    iget-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    if-nez v0, :cond_0

    .line 1108
    new-instance v0, Landroid/app/enterprise/WifiPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/WifiPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    .line 1109
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    .line 1111
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    return-object v0

    .line 1111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasAnyActiveAdmin()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1244
    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v2, :cond_0

    .line 1245
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "No EnterpriseDeviceManager service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :goto_0
    return v1

    .line 1249
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->hasAnyActiveAdmin()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get hasAnyActiveAdmin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "admin"
    .parameter "usesPolicy"

    .prologue
    .line 516
    invoke-direct {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 518
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 523
    :goto_0
    return v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActivePasswordSufficient()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v0

    return v0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "who"

    .prologue
    .line 443
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 445
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 450
    :goto_0
    return v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "adminReceiver"

    .prologue
    .line 1275
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 1277
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->isAdminRemovable(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1282
    :goto_0
    return v1

    .line 1278
    :catch_0
    move-exception v0

    .line 1279
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1282
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public lockNow()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    .line 289
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1260
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 1262
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->packageHasActiveAdmins(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1267
    :goto_0
    return v1

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1267
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 430
    const-string v0, "EnterpriseDeviceManager.reboot"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reboot(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "adminReceiver"

    .prologue
    .line 540
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 542
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "adminReceiver"

    .prologue
    .line 554
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 556
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 1
    .parameter "password"
    .parameter "flags"

    .prologue
    .line 263
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public selfUpdateAdmin(Ljava/lang/String;)I
    .locals 3
    .parameter "apkFilePath"

    .prologue
    .line 710
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 712
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->selfUpdateAdmin(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 717
    :goto_0
    return v1

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "adminReceiver"
    .parameter "refreshing"

    .prologue
    .line 493
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAdminRemovable(Z)Z
    .locals 3
    .parameter "removable"

    .prologue
    .line 620
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 622
    :try_start_0
    const-string v1, "EnterpriseDeviceManager.setAdminRemovable"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 628
    :goto_0
    return v1

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAdminRemovable(ZLjava/lang/String;)Z
    .locals 3
    .parameter "removable"
    .parameter "packageName"

    .prologue
    .line 609
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 611
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 616
    :goto_0
    return v1

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForWipe(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 245
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 246
    return-void
.end method

.method public setMaximumTimeToLock(J)V
    .locals 2
    .parameter "timeMs"

    .prologue
    .line 271
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 272
    return-void
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 393
    const-string v0, "EnterpriseDeviceManager.setMinPasswordComplexChars"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 395
    return-void
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 318
    const-string v0, "EnterpriseDeviceManager.setPasswordExpires"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 320
    return-void
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 355
    const-string v0, "EnterpriseDeviceManager.setPasswordHistory"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 357
    return-void
.end method

.method public setPasswordMinimumLength(I)V
    .locals 2
    .parameter "length"

    .prologue
    .line 216
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 217
    return-void
.end method

.method public setPasswordQuality(I)V
    .locals 2
    .parameter "quality"

    .prologue
    .line 202
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 203
    return-void
.end method

.method public wipeData(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 296
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 297
    return-void
.end method
