.class public Landroid/app/enterprise/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field public static final ICCID_AVAILABLE:Ljava/lang/String; = "com.android.server.enterprise.ICCID_AVAILABLE"

.field public static final PERMISSION_NOTIFY_ICCID_AVAILABLE:Ljava/lang/String; = "android.permission.sec.MDM_NOTIFY_ICCID_AVAILABLE"

.field public static final PWD_CHANGE_ENFORCED:I = 0x1

.field public static final PWD_CHANGE_ENFORCED_CANCELLED:I = 0x2

.field public static final PWD_CHANGE_ENFORCED_NEW_PASSWORD:I = 0x3

.field public static final PWD_CHANGE_ENFORCE_CANCELLING:I = -0x1

.field public static final PWD_CHANGE_NOT_ENFORCED:I = 0x0

.field public static final PWD_CHANGE_TIMEOUT:Ljava/lang/String; = "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

.field public static final SIM_PIN_ALREADY_LOCKED:I = 0x4

.field public static final SIM_PIN_ALREADY_LOCKED_BY_ADMIN:I = 0xb

.field public static final SIM_PIN_ALREADY_UNLOCKED:I = 0x5

.field public static final SIM_PIN_BLOCKED_BY_PUK:I = 0x6

.field public static final SIM_PIN_DATABASE_ERROR:I = 0xa

.field public static final SIM_PIN_ERROR_UNKNOWN:I = 0x64

.field public static final SIM_PIN_FAILED:I = 0x1

.field public static final SIM_PIN_ID_NOT_READY:I = 0x9

.field public static final SIM_PIN_INCORRECT_CODE:I = 0x3

.field public static final SIM_PIN_INVALID_CODE:I = 0x2

.field public static final SIM_PIN_MAX_RETRIES_EXCEEDED:I = 0x8

.field public static final SIM_PIN_OWNED_BY_OTHER_ADMIN:I = 0xc

.field public static final SIM_PIN_SUCCESS:I

.field private static TAG:Ljava/lang/String;

.field public static final enforcePwdExceptions:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mService:Landroid/app/enterprise/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const-string v0, "PasswordPolicy"

    sput-object v0, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.SubSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.ChooseLockPassword"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.gsf.update.SystemUpdateInstallDialog"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.android.gsf.update.SystemUpdateDownloadDialog"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.phone.EmergencyDialer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.phone.OutgoingCallBroadcaster"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.phone.EmergencyOutgoingCallBroadcaster"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.phone.InCallScreen"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.internal.policy.impl.LockScreen"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.internal.policy.impl.PatternUnlockScreen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.internal.policy.impl.PasswordUnlockScreen"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/app/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 110
    const-string v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    .line 112
    return-void
.end method


# virtual methods
.method public addRequiredPasswordPattern(Ljava/lang/String;)Z
    .locals 3
    .parameter "regex"

    .prologue
    .line 285
    const-string v1, "PasswordPolicy.addRequiredPasswordPattern"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 288
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->addRequiredPasswordPattern(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 293
    :goto_0
    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAllRestrictions()Z
    .locals 3

    .prologue
    .line 309
    const-string v1, "PasswordPolicy.deleteAllRestrictions"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 312
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->deleteAllRestrictions()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 317
    :goto_0
    return v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableSimPinLock(Ljava/lang/String;)I
    .locals 3
    .parameter "pinCode"

    .prologue
    .line 1180
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 1182
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IPasswordPolicy;->lockUnlockCorporateSimCard(Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1187
    :goto_0
    return v1

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed disableSimPinLock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1187
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public enableSimPinLock(Ljava/lang/String;)I
    .locals 3
    .parameter "pinCode"

    .prologue
    .line 1164
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 1166
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IPasswordPolicy;->lockUnlockCorporateSimCard(Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1171
    :goto_0
    return v1

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed enableSimPinLock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public enforcePwdChange()Z
    .locals 3

    .prologue
    .line 422
    const-string v1, "PasswordPolicy.enforcePwdChange"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 425
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->enforcePwdChange()Z
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
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public excludeExternalStorageForFailedPasswordsWipe(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1120
    const-string v1, "PasswordPolicy.excludeExternalStorageForFailedPasswordsWipe"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1121
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 1123
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->excludeExternalStorageForFailedPasswordsWipe(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1128
    :goto_0
    return v1

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getForbiddenStrings(Z)Ljava/util/List;
    .locals 3
    .parameter "allAdmins"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 860
    const-string v1, "PasswordPolicy.getForbiddenStrings"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 861
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 863
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 868
    :goto_0
    return-object v1

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getDataForbidden!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumCharacterOccurences()I
    .locals 3

    .prologue
    .line 939
    const-string v1, "PasswordPolicy.getMaximumCharacterOccurences"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 940
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 942
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->getMaximumCharacterOccurences()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 947
    :goto_0
    return v1

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getMaxRepeatedCharacters!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 947
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumCharacterSequenceLength()I
    .locals 3

    .prologue
    .line 690
    const-string v1, "PasswordPolicy.getMaximumCharacterSequenceLength"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 693
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->getMaximumCharacterSequenceLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 698
    :goto_0
    return v1

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getMaximumCharacterSequenceLength!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForDeviceDisable()I
    .locals 3

    .prologue
    .line 528
    const-string v1, "PasswordPolicy.getMaximumFailedPasswordsForDeviceDisable"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 531
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->getMaximumFailedPasswordsForDisable()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 536
    :goto_0
    return v1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getMaximumFailedPasswordsForDeviceDisable!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumNumericSequenceLength()I
    .locals 3

    .prologue
    .line 608
    const-string v1, "PasswordPolicy.getMaximumNumericSequenceLength"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 611
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->getMaximumNumericSequenceLength()I
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
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getNumericSequencesForbidden!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 206
    const-string v0, "PasswordPolicy.getMinPasswordComplexChars"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMinimumCharacterChangeLength()I
    .locals 3

    .prologue
    .line 775
    const-string v1, "PasswordPolicy.getMinimumCharacterChangeLength"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 778
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->getMinimumCharacterChangeLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 783
    :goto_0
    return v1

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getMinCharacterChangeLength!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .parameter "admin"

    .prologue
    .line 218
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordChangeTimeout()I
    .locals 3

    .prologue
    .line 387
    const-string v1, "PasswordPolicy.getPasswordChangeTimeout"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 390
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->getPasswordChangeTimeout()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 395
    :goto_0
    return v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 142
    const-string v0, "PasswordPolicy.getPasswordExpires"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "admin"

    .prologue
    .line 175
    const-string v0, "PasswordPolicy.getPasswordHistory"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordLockDelay()I
    .locals 3

    .prologue
    .line 489
    const-string v1, "PasswordPolicy.getPasswordLockDelay"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 492
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->getPasswordLockDelay()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 497
    :goto_0
    return v1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getPasswordLockDelay!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPinCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "iccid"

    .prologue
    .line 1205
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 1207
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1212
    :goto_0
    return-object v1

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getPinCode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1212
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 329
    const-string v1, "PasswordPolicy.getRequiredPwdPatternRestrictions"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 332
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 337
    :goto_0
    return-object v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isChangeRequested()I
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->isChangeRequested()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 409
    :goto_0
    return v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExternalStorageForFailedPasswordsWipeExcluded()Z
    .locals 3

    .prologue
    .line 1145
    const-string v1, "PasswordPolicy.isExternalStorageForFailedPasswordsWipeExcluded"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1146
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 1148
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1153
    :goto_0
    return v1

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPasswordPatternMatched(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "password"
    .parameter "oldPassword"

    .prologue
    .line 346
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 348
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IPasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 353
    :goto_0
    return v1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPasswordVisibilityEnabled()Z
    .locals 3

    .prologue
    .line 1077
    const-string v1, "PasswordPolicy.isPasswordVisibilityEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1078
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 1080
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->isPasswordVisibilityEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1085
    :goto_0
    return v1

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1085
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .locals 3

    .prologue
    .line 1006
    const-string v1, "PasswordPolicy.isScreenLockPatternVisibilityEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1007
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 1009
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IPasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1014
    :goto_0
    return v1

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1014
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .locals 3
    .parameter "iccId"

    .prologue
    .line 1192
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 1194
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1199
    :goto_0
    return v1

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed isSimLockedByAdmin"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1199
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 227
    const-string v0, "PasswordPolicy.reboot"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reboot(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setForbiddenStrings(Ljava/util/List;)Z
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
    .line 830
    .local p1, forbiddenStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PasswordPolicy.setForbiddenStrings"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 831
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 833
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setForbiddenStrings(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 839
    :goto_0
    return v1

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setDataForbidden!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumCharacterOccurrences(I)Z
    .locals 3
    .parameter "count"

    .prologue
    .line 911
    const-string v1, "PasswordPolicy.setMaximumCharacterOccurrences"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 912
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 914
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setMaximumCharacterOccurrences(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 920
    :goto_0
    return v1

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setMaxRepeatedCharacters!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumCharacterSequenceLength(I)Z
    .locals 3
    .parameter "length"

    .prologue
    .line 661
    const-string v1, "PasswordPolicy.setMaximumCharacterSequenceLength"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 664
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setMaximumCharacterSequenceLength(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 670
    :goto_0
    return v1

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setMaximumCharacterSequenceLength!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForDeviceDisable(I)Z
    .locals 3
    .parameter "num"

    .prologue
    .line 511
    const-string v1, "PasswordPolicy.setMaximumFailedPasswordsForDeviceDisable"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 514
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setMaximumFailedPasswordsForDisable(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 519
    :goto_0
    return v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setMaximumFailedPasswordsForDeviceDisable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumNumericSequenceLength(I)Z
    .locals 3
    .parameter "length"

    .prologue
    .line 580
    const-string v1, "PasswordPolicy.setMaximumNumericSequenceLength"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 583
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setMaximumNumericSequenceLength(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 589
    :goto_0
    return v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setNumericSequencesForbidden!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 194
    const-string v0, "PasswordPolicy.setMinPasswordComplexChars"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 196
    return-void
.end method

.method public setMinimumCharacterChangeLength(I)Z
    .locals 3
    .parameter "length"

    .prologue
    .line 745
    const-string v1, "PasswordPolicy.setMinimumCharacterChangeLength"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 748
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setMinimumCharacterChangeLength(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 754
    :goto_0
    return v1

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setMinCharacterChangeLength!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordChangeTimeout(I)Z
    .locals 3
    .parameter "timeout"

    .prologue
    .line 369
    const-string v1, "PasswordPolicy.setPasswordChangeTimeout"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 372
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setPasswordChangeTimeout(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 377
    :goto_0
    return v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 129
    const-string v0, "PasswordPolicy.setPasswordExpires"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 131
    return-void
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 162
    const-string v0, "PasswordPolicy.setPasswordHistory"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Landroid/app/enterprise/PasswordPolicy;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 164
    return-void
.end method

.method public setPasswordLockDelay(I)Z
    .locals 3
    .parameter "time"

    .prologue
    .line 467
    const-string v1, "PasswordPolicy.setPasswordLockDelay"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 470
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setPasswordLockDelay(I)Z
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
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setPasswordLockDelay"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordVisibilityEnabled(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 1052
    const-string v1, "PasswordPolicy.setPasswordVisibilityEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1053
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 1055
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setPasswordVisibilityEnabled(Z)Z
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
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPwdChangeRequested(I)Z
    .locals 3
    .parameter "flag"

    .prologue
    .line 441
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 443
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setPwdChangeRequested(I)Z
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
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequiredPasswordPattern(Ljava/lang/String;)Z
    .locals 3
    .parameter "regex"

    .prologue
    .line 253
    const-string v1, "PasswordPolicy.setRequiredPasswordPattern"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 256
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setRequiredPasswordPattern(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 261
    :goto_0
    return v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScreenLockPatternVisibilityEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 982
    const-string v1, "PasswordPolicy.setScreenLockPatternVisibilityEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 983
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v1, :cond_0

    .line 985
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/PasswordPolicy;->mService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IPasswordPolicy;->setScreenLockPatternVisibilityEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 990
    :goto_0
    return v1

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 990
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
