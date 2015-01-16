.class public Landroid/app/enterprise/RestrictionPolicy;
.super Ljava/lang/Object;
.source "RestrictionPolicy.java"


# static fields
.field public static final ALLOW_SETTINGS_CHANGES:Ljava/lang/String; = "edm.intent.action.allow.settings"

.field public static final EXTERNAL_STORAGE_PATH_SD:Ljava/lang/String; = "/storage/extSdCard"

.field public static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field public static final MTP_DISABLED:Ljava/lang/String; = "edm.intent.action.disable.mtp"

.field public static final SVOICE_PACKAGE:Ljava/lang/String; = "com.vlingo.midas"

.field private static TAG:Ljava/lang/String; = null

.field public static TASK_MANAGER_PKGNAME:Ljava/lang/String; = null

.field public static final USB_HOST_STORAGE_PATH:Ljava/lang/String; = "/storage/UsbDrive"

.field public static final WFD_DISABLE:Ljava/lang/String; = "com.android.server.enterprise.WFD_DISABLE"

.field public static final settingsExceptions:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mService:Landroid/app/enterprise/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const-string v0, "RestrictionPolicy"

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    .line 72
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.ActivityPicker"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.AppWidgetPickActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.settings.ChooseLockAdditionalPin"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.settings.ChooseLockFaceWarning"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.settings.ChooseLockGeneric"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.settings.ChooseLockMotion"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.settings.ChooseLockPassword"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings.ChooseLockPattern"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.settings.ConfirmLockPassword"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.settings.ConfirmLockPattern"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.settings.DeviceAdminAdd"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.android.settings.bluetooth.DevicePickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.settings.Settings$WifiP2pDevicePickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.settings.wfd.WfdPickerActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.android.settings.bluetooth.BluetoothPairingDialog"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.android.settings.bluetooth.BluetoothEnableActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.android.settings.bluetooth.BluetoothEnablingActivity"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .line 100
    const-string v0, "com.sec.android.app.controlpanel"

    sput-object v0, Landroid/app/enterprise/RestrictionPolicy;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Landroid/app/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 116
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 118
    const-string v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    .line 120
    return-void
.end method


# virtual methods
.method public allowAndroidBeam(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2215
    const-string v1, "RestrictionPolicy.allowAndroidBeam"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2216
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2218
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowAndroidBeam(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2223
    :goto_0
    return v1

    .line 2219
    :catch_0
    move-exception v0

    .line 2220
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2223
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowAudioRecord(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1769
    const-string v1, "RestrictionPolicy.allowAudioRecord"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1770
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1772
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowAudioRecord(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1777
    :goto_0
    return v1

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1777
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowBackgroundProcessLimit(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2003
    const-string v1, "RestrictionPolicy.allowBackgroundProcessLimit"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2004
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2006
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowBackgroundProcessLimit(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2011
    :goto_0
    return v1

    .line 2007
    :catch_0
    move-exception v0

    .line 2008
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2011
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowBluetooth(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 325
    const-string v0, "RestrictionPolicy.allowBluetooth"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->allowBluetooth(Z)Z

    move-result v0

    return v0
.end method

.method public allowClipboardShare(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2101
    const-string v1, "RestrictionPolicy.allowClipboardShare"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2102
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2104
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowClipboardShare(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2109
    :goto_0
    return v1

    .line 2105
    :catch_0
    move-exception v0

    .line 2106
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2109
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowFactoryReset(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1094
    const-string v1, "RestrictionPolicy.allowFactoryReset"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1095
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1097
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowFactoryReset(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1102
    :goto_0
    return v1

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1102
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowGoogleCrashReport(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1407
    const-string v1, "RestrictionPolicy.allowGoogleCrashReport"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1408
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1410
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowGoogleCrashReport(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1415
    :goto_0
    return v1

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1415
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowKillingActivitiesOnLeave(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2036
    const-string v1, "RestrictionPolicy.allowKillingActivitiesOnLeave"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2037
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2039
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowKillingActivitiesOnLeave(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2044
    :goto_0
    return v1

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2044
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowOTAUpgrade(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1274
    const-string v1, "RestrictionPolicy.allowOTAUpgrade"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1275
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1277
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowOTAUpgrade(Z)Z
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
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1282
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowPowerOff(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1675
    const-string v1, "RestrictionPolicy.allowPowerOff"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1676
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1678
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowPowerOff(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1683
    :goto_0
    return v1

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1683
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowSBeam(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2182
    const-string v1, "RestrictionPolicy.allowSBeam"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2183
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2185
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowSBeam(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2190
    :goto_0
    return v1

    .line 2186
    :catch_0
    move-exception v0

    .line 2187
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2190
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowSDCardWrite(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1341
    const-string v1, "RestrictionPolicy.allowSDCardWrite"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1342
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1344
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowSDCardWrite(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1349
    :goto_0
    return v1

    .line 1345
    :catch_0
    move-exception v0

    .line 1346
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1349
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowSVoice(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2142
    const-string v1, "RestrictionPolicy.allowSVoice"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2143
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2145
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowSVoice(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2150
    :goto_0
    return v1

    .line 2146
    :catch_0
    move-exception v0

    .line 2147
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2150
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowSettingsChanges(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 779
    const-string v1, "RestrictionPolicy.allowSettingsChanges"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 782
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowSettingsChanges(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 787
    :goto_0
    return v1

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowStatusBarExpansion(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1599
    const-string v1, "RestrictionPolicy.allowStatusBarExpansion"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1600
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1602
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowStatusBarExpansion(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1607
    :goto_0
    return v1

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1607
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowStopSystemApp(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1918
    const-string v1, "RestrictionPolicy.allowStopSystemApp"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1919
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1921
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowStopSystemApp(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1926
    :goto_0
    return v1

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1926
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowUsbHostStorage(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2250
    const-string v1, "RestrictionPolicy.allowUsbHostStorage"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2251
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2253
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowUsbHostStorage(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2258
    :goto_0
    return v1

    .line 2254
    :catch_0
    move-exception v0

    .line 2255
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2258
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowUserMobileDataLimit(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 2069
    const-string v1, "RestrictionPolicy.allowUserMobileDataLimit"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2070
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2072
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowUserMobileDataLimit(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2077
    :goto_0
    return v1

    .line 2073
    :catch_0
    move-exception v0

    .line 2074
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2077
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowVideoRecord(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1843
    const-string v1, "RestrictionPolicy.allowVideoRecord"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1844
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1846
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowVideoRecord(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1851
    :goto_0
    return v1

    .line 1847
    :catch_0
    move-exception v0

    .line 1848
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1851
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowVpn(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1206
    const-string v1, "RestrictionPolicy.allowVpn"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1207
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1209
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowVpn(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1214
    :goto_0
    return v1

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1214
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowWallpaperChange(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1488
    const-string v1, "RestrictionPolicy.allowWallpaperChange"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1489
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1491
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowWallpaperChange(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1496
    :goto_0
    return v1

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1496
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowWiFi(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 309
    const-string v0, "RestrictionPolicy.allowWiFi"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public allowWifiDirect(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1961
    const-string v1, "RestrictionPolicy.allowWifiDirect"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1962
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1964
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->allowWifiDirect(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1969
    :goto_0
    return v1

    .line 1965
    :catch_0
    move-exception v0

    .line 1966
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1969
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAndroidBeamAllowed()Z
    .locals 1

    .prologue
    .line 2227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isAndroidBeamAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 2236
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2238
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isAndroidBeamAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2243
    :goto_0
    return v1

    .line 2239
    :catch_0
    move-exception v0

    .line 2240
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2243
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isAudioRecordAllowed()Z
    .locals 1

    .prologue
    .line 1805
    const-string v0, "RestrictionPolicy.isAudioRecordAllowed"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1806
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/RestrictionPolicy;->isAudioRecordAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isAudioRecordAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1784
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1786
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isAudioRecordAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1791
    :goto_0
    return v1

    .line 1787
    :catch_0
    move-exception v0

    .line 1788
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1791
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBackgroundDataEnabled()Z
    .locals 3

    .prologue
    .line 1029
    const-string v1, "RestrictionPolicy.isBackgroundDataEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1030
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1032
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isBackgroundDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1037
    :goto_0
    return v1

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1037
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBackgroundProcessLimitAllowed()Z
    .locals 3

    .prologue
    .line 2019
    const-string v1, "RestrictionPolicy.isBackgroundProcessLimitAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2020
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2022
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isBackgroundProcessLimitAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2027
    :goto_0
    return v1

    .line 2023
    :catch_0
    move-exception v0

    .line 2024
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2027
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBackupAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 692
    const-string v1, "RestrictionPolicy.isBackupAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 695
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isBackupAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 700
    :goto_0
    return v1

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBluetoothEnabled(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 192
    const-string v0, "RestrictionPolicy.isBluetoothEnabled"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public isBluetoothTetheringEnabled()Z
    .locals 3

    .prologue
    .line 445
    const-string v1, "RestrictionPolicy.isBluetoothTetheringEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 448
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isBluetoothTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 453
    :goto_0
    return v1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCameraEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 235
    const-string v1, "RestrictionPolicy.isCameraEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 238
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isCameraEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 243
    :goto_0
    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCellularDataAllowed()Z
    .locals 3

    .prologue
    .line 733
    const-string v1, "RestrictionPolicy.isCellularDataAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 736
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isCellularDataAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 741
    :goto_0
    return v1

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isClipboardAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 859
    const-string v1, "RestrictionPolicy.isClipboardAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 860
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 862
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isClipboardAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 867
    :goto_0
    return v1

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isClipboardShareAllowed()Z
    .locals 3

    .prologue
    .line 2116
    const-string v1, "RestrictionPolicy.isClipboardShareAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2117
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2119
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isClipboardShareAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2124
    :goto_0
    return v1

    .line 2120
    :catch_0
    move-exception v0

    .line 2121
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2124
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isFactoryResetAllowed()Z
    .locals 3

    .prologue
    .line 1115
    const-string v1, "RestrictionPolicy.isFactoryResetAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1116
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1118
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isFactoryResetAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1123
    :goto_0
    return v1

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isGoogleCrashReportAllowed()Z
    .locals 3

    .prologue
    .line 1431
    const-string v1, "RestrictionPolicy.isGoogleCrashReportAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1432
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1434
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isGoogleCrashReportAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1439
    :goto_0
    return v1

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHomeKeyEnabled()Z
    .locals 1

    .prologue
    .line 1155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isHomeKeyEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1159
    const-string v1, "RestrictionPolicy.isHomeKeyEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1160
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1162
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isHomeKeyEnabled(Z)Z
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
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isKillingActivitiesOnLeaveAllowed()Z
    .locals 3

    .prologue
    .line 2052
    const-string v1, "RestrictionPolicy.isKillingActivitiesOnLeaveAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2053
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2055
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isKillingActivitiesOnLeaveAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2060
    :goto_0
    return v1

    .line 2056
    :catch_0
    move-exception v0

    .line 2057
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2060
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 286
    const-string v1, "RestrictionPolicy.isMicrophoneEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMockLocationEnabled()Z
    .locals 3

    .prologue
    .line 649
    const-string v1, "RestrictionPolicy.isMockLocationEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 652
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isMockLocationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 657
    :goto_0
    return v1

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNFCEnabled()Z
    .locals 3

    .prologue
    .line 1069
    const-string v1, "RestrictionPolicy.isNFCEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1070
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1072
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isNFCEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1077
    :goto_0
    return v1

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1077
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNonMarketAppAllowed()Z
    .locals 3

    .prologue
    .line 987
    const-string v1, "RestrictionPolicy.isNonMarketAppAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 988
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 990
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isNonMarketAppAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 995
    :goto_0
    return v1

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOTAUpgradeAllowed()Z
    .locals 3

    .prologue
    .line 1298
    const-string v1, "RestrictionPolicy.isOTAUpgradeAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1299
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1301
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isOTAUpgradeAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1306
    :goto_0
    return v1

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1306
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPowerOffAllowed()Z
    .locals 1

    .prologue
    .line 1714
    const-string v0, "RestrictionPolicy.isPowerOffAllowed"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1715
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1722
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1724
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isPowerOffAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1729
    :goto_0
    return v1

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1729
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSBeamAllowed()Z
    .locals 1

    .prologue
    .line 2194
    const-string v0, "RestrictionPolicy.isSBeamAllowed"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/RestrictionPolicy;->isSBeamAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isSBeamAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 2204
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2206
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isSBeamAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2211
    :goto_0
    return v1

    .line 2207
    :catch_0
    move-exception v0

    .line 2208
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2211
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSDCardWriteAllowed()Z
    .locals 3

    .prologue
    .line 1365
    const-string v1, "RestrictionPolicy.isSDCardWriteAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1366
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1368
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isSDCardWriteAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1373
    :goto_0
    return v1

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1373
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSVoiceAllowed()Z
    .locals 1

    .prologue
    .line 2164
    const-string v0, "RestrictionPolicy.isSVoiceAllowed"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isSVoiceAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 2172
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2174
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isSVoiceAllowed(Z)Z
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
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2179
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 486
    const-string v1, "RestrictionPolicy.isScreenCaptureEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 489
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isScreenCaptureEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 494
    :goto_0
    return v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSdCardEnabled()Z
    .locals 3

    .prologue
    .line 797
    const-string v1, "RestrictionPolicy.isSdCardEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 800
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isSdCardEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 805
    :goto_0
    return v1

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 816
    const-string v1, "RestrictionPolicy.isSettingsChangesAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 817
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 819
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 824
    :goto_0
    return v1

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isStatusBarExpansionAllowed()Z
    .locals 1

    .prologue
    .line 1623
    const-string v0, "RestrictionPolicy.isStatusBarExpansionAllowed"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1624
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isStatusBarExpansionAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1631
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1633
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1638
    :goto_0
    return v1

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1638
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isStopSystemAppAllowed()Z
    .locals 3

    .prologue
    .line 1941
    const-string v1, "RestrictionPolicy.isStopSystemAppAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1942
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1944
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isStopSystemAppAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1949
    :goto_0
    return v1

    .line 1945
    :catch_0
    move-exception v0

    .line 1946
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1949
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTetheringEnabled()Z
    .locals 3

    .prologue
    .line 565
    const-string v1, "RestrictionPolicy.isTetheringEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 568
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 573
    :goto_0
    return v1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbDebuggingEnabled()Z
    .locals 3

    .prologue
    .line 526
    const-string v1, "RestrictionPolicy.isUsbDebuggingEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 529
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbDebuggingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 534
    :goto_0
    return v1

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbHostStorageAllowed()Z
    .locals 1

    .prologue
    .line 2279
    const-string v0, "RestrictionPolicy.isUsbHostStorageAllowed"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isUsbHostStorageAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 2265
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2267
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbHostStorageAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2272
    :goto_0
    return v1

    .line 2268
    :catch_0
    move-exception v0

    .line 2269
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2272
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbKiesAvailable(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 901
    const-string v1, "RestrictionPolicy.isUsbKiesAvailable"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 902
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 904
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbKiesAvailable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 909
    :goto_0
    return v1

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbMassStorageEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 608
    const-string v1, "RestrictionPolicy.isUsbMassStorageEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 611
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbMassStorageEnabled(Z)Z
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
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbMediaPlayerAvailable(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 947
    const-string v1, "RestrictionPolicy.isUsbMediaPlayerAvailable"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 950
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 955
    :goto_0
    return v1

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUsbTetheringEnabled()Z
    .locals 3

    .prologue
    .line 363
    const-string v1, "RestrictionPolicy.isUsbTetheringEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 366
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isUsbTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 371
    :goto_0
    return v1

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserMobileDataLimitAllowed()Z
    .locals 3

    .prologue
    .line 2085
    const-string v1, "RestrictionPolicy.isUserMobileDataLimitAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 2086
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 2088
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isUserMobileDataLimitAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2093
    :goto_0
    return v1

    .line 2089
    :catch_0
    move-exception v0

    .line 2090
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2093
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVideoRecordAllowed()Z
    .locals 1

    .prologue
    .line 1879
    const-string v0, "RestrictionPolicy.isVideoRecordAllowed"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1880
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/RestrictionPolicy;->isVideoRecordAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isVideoRecordAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1858
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1860
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isVideoRecordAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1865
    :goto_0
    return v1

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1865
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVpnAllowed()Z
    .locals 3

    .prologue
    .line 1229
    const-string v1, "RestrictionPolicy.isVpnAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1230
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1232
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isVpnAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1237
    :goto_0
    return v1

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1237
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWallpaperChangeAllowed()Z
    .locals 3

    .prologue
    .line 1529
    const-string v1, "RestrictionPolicy.isWallpaperChangeAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1530
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1532
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/enterprise/IRestrictionPolicy;->isWallpaperChangeAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1537
    :goto_0
    return v1

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWallpaperChangeAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1544
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1546
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isWallpaperChangeAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1551
    :goto_0
    return v1

    .line 1547
    :catch_0
    move-exception v0

    .line 1548
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1551
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWiFiEnabled(Z)Z
    .locals 1
    .parameter "showMsg"

    .prologue
    .line 155
    const-string v0, "RestrictionPolicy.isWiFiEnabled"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isWifiDirectAllowed()Z
    .locals 1

    .prologue
    .line 1977
    const-string v0, "RestrictionPolicy.isWifiDirectAllowed"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1978
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isWifiDirectAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1987
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1989
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isWifiDirectAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1994
    :goto_0
    return v1

    .line 1990
    :catch_0
    move-exception v0

    .line 1991
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1994
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWifiTetheringEnabled()Z
    .locals 3

    .prologue
    .line 406
    const-string v1, "RestrictionPolicy.isWifiTetheringEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 409
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRestrictionPolicy;->isWifiTetheringEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 414
    :goto_0
    return v1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowNonMarketApps(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 970
    const-string v1, "RestrictionPolicy.setAllowNonMarketApps"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 973
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setAllowNonMarketApps(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 978
    :goto_0
    return v1

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackgroundData(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1011
    const-string v1, "RestrictionPolicy.setBackgroundData"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1012
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1014
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBackgroundData(Z)Z
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
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackup(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 672
    const-string v1, "RestrictionPolicy.setBackup"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 675
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBackup(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 680
    :goto_0
    return v1

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBluetoothState(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 177
    const-string v0, "RestrictionPolicy.setBluetoothState"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/BluetoothPolicy;->setBluetoothState(Z)Z

    move-result v0

    return v0
.end method

.method public setBluetoothTethering(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 428
    const-string v1, "RestrictionPolicy.setBluetoothTethering"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 431
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setBluetoothTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 436
    :goto_0
    return v1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCameraState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 213
    const-string v1, "RestrictionPolicy.setCameraState"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setCamera(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 221
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCellularData(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 715
    const-string v1, "RestrictionPolicy.setCellularData"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 718
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setCellularData(Z)Z
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
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setClipboardEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 839
    const-string v1, "RestrictionPolicy.setClipboardEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 840
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 842
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setClipboardEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 847
    :goto_0
    return v1

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnableNFC(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1052
    const-string v1, "RestrictionPolicy.setEnableNFC"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1053
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1055
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setEnableNFC(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1060
    :goto_0
    return v1

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeKeyState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1138
    const-string v1, "RestrictionPolicy.setHomeKeyState"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1139
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 1141
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setHomeKeyState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1146
    :goto_0
    return v1

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMicrophoneState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 264
    const-string v1, "RestrictionPolicy.setMicrophoneState"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 267
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setMicrophoneState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMockLocation(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 631
    const-string v1, "RestrictionPolicy.setMockLocation"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 634
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setMockLocation(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 639
    :goto_0
    return v1

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScreenCapture(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 467
    const-string v1, "RestrictionPolicy.setScreenCapture"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 470
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setScreenCapture(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 475
    :goto_0
    return v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSdCardState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 756
    const-string v1, "RestrictionPolicy.setSdCardState"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 759
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setSdCardState(Z)Z
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
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTethering(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 548
    const-string v1, "RestrictionPolicy.setTethering"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 551
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 556
    :goto_0
    return v1

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbDebuggingEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 509
    const-string v1, "RestrictionPolicy.setUsbDebuggingEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 512
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbDebuggingEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 517
    :goto_0
    return v1

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbKiesAvailability(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 882
    const-string v1, "RestrictionPolicy.setUsbKiesAvailability"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 885
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbKiesAvailability(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 890
    :goto_0
    return v1

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 890
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbMassStorage(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 588
    const-string v1, "RestrictionPolicy.setUsbMassStorage"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 591
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbMassStorage(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 596
    :goto_0
    return v1

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbMediaPlayerAvailability(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 924
    const-string v1, "RestrictionPolicy.setUsbMediaPlayerAvailability"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 925
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 927
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbMediaPlayerAvailability(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 932
    :goto_0
    return v1

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbTethering(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 346
    const-string v1, "RestrictionPolicy.setUsbTethering"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 349
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setUsbTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    :goto_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWiFiState(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 140
    const-string v0, "RestrictionPolicy.setWiFiState"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Landroid/app/enterprise/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/WifiPolicy;->setWifi(Z)Z

    move-result v0

    return v0
.end method

.method public setWifiTethering(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 389
    const-string v1, "RestrictionPolicy.setWifiTethering"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    if-eqz v1, :cond_0

    .line 392
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RestrictionPolicy;->mService:Landroid/app/enterprise/IRestrictionPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRestrictionPolicy;->setWifiTethering(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    :goto_0
    return v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
