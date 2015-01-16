.class public Landroid/app/enterprise/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/SecurityPolicy$1;
    }
.end annotation


# static fields
.field public static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field public static final KEYSTORE_KEY_NOT_FOUND:I = 0x7

.field public static final KEYSTORE_LOCKED:I = 0x2

.field public static final KEYSTORE_NO_ERROR:I = 0x1

.field public static final KEYSTORE_PERMISSION_DENIED:I = 0x6

.field public static final KEYSTORE_SYSTEM_ERROR:I = 0x4

.field public static final KEYSTORE_UNDEFINED_ACTION:I = 0x9

.field public static final KEYSTORE_UNINITIALIZED:I = 0x3

.field public static final KEYSTORE_VALUE_CORRUPTED:I = 0x8

.field public static final KEYSTORE_WRONG_PASSWORD:I = 0xa

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_CERTIFICATE:Ljava/lang/String; = ".crt"

.field public static final TYPE_PKCS12:Ljava/lang/String; = ".p12"

.field public static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field public static final WIPE_EXTERNAL_MEMORY:I = 0x2

.field public static final WIPE_INTERNAL_EXTERNAL_MEMORY:I = 0x3

.field public static final WIPE_INTERNAL_MEMORY:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDPM:Landroid/app/admin/DevicePolicyManager;

.field private final mService:Landroid/app/enterprise/ISecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "SecurityPolicy"

    sput-object v0, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Landroid/app/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 118
    const-string v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    .line 120
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 122
    return-void
.end method

.method private formatInternalStorage(ZZ)Z
    .locals 3
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    .line 508
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 510
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->formatInternalStorage(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 515
    :goto_0
    return v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "fileList"
    .parameter "filters"

    .prologue
    .line 482
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 484
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 489
    :goto_0
    return-object v1

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private formatStorageCard(Z)Z
    .locals 1
    .parameter "isExternal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v0, p1}, Landroid/app/enterprise/ISecurityPolicy;->formatStorageCard(Z)Z

    move-result v0

    .line 529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "oldpassword"
    .parameter "newpassword"

    .prologue
    .line 285
    const-string v1, "SecurityPolicy.changeCredentialStoragePassword"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 288
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
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
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed changeCredentialStoragePassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearInstalledCertificates()Z
    .locals 3

    .prologue
    .line 422
    const-string v1, "SecurityPolicy.clearInstalledCertificates"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 425
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->clearInstalledCertificates()Z
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
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed clearInstalledCertificates"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCredentialStorageStatus()I
    .locals 3

    .prologue
    .line 302
    const-string v1, "SecurityPolicy.getCredentialStorageStatus"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 307
    .local v0, ks:Landroid/security/KeyStore;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy$1;->$SwitchMap$android$security$KeyStore$State:[I

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 315
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 309
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 311
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 313
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "path"
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
    .line 738
    const-string v1, "SecurityPolicy.getFileNamesOnDevice"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 741
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 746
    :goto_0
    return-object v1

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "path"
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
    .line 767
    const-string v1, "SecurityPolicy.getFileNamesWithAttributes"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 768
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 770
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 775
    :goto_0
    return-object v1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFileNamesWithAttributesRecursive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "path"
    .parameter "filePath"

    .prologue
    .line 812
    const-string v1, "SecurityPolicy.getFileNamesWithAttributesRecursive"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 815
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->getFileNamesWithAttributesRecursive(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 820
    :goto_0
    return v1

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 820
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledCertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .locals 3
    .parameter "certificateName"

    .prologue
    .line 217
    const-string v1, "SecurityPolicy.getInstalledCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getInstalledCertificate(Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "type"
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
    .line 240
    const-string v1, "SecurityPolicy.getInstalledCertificateNames"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 243
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 248
    :goto_0
    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getInstalledCertificateNames"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledCertificates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    const-string v1, "SecurityPolicy.getInstalledCertificates"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 208
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->getInstalledCertificates()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    :goto_0
    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "admin"

    .prologue
    .line 649
    const-string v0, "SecurityPolicy.getRequireDeviceEncryption"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "admin"

    .prologue
    .line 674
    const-string v0, "SecurityPolicy.getRequireStorageCardEncryption"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getSystemCertificates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const-string v1, "SecurityPolicy.getSystemCertificates"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->getSystemCertificates()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    :goto_0
    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "value"
    .parameter "name"
    .parameter "password"

    .prologue
    .line 377
    const-string v1, "SecurityPolicy.installCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 380
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/ISecurityPolicy;->installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 385
    :goto_0
    return v1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 3
    .parameter "type"
    .parameter "value"

    .prologue
    .line 140
    const-string v1, "SecurityPolicy.installCertificateWithType"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->installCertificateWithType(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public installCertificatesFromSdCard()V
    .locals 3

    .prologue
    .line 158
    const-string v1, "SecurityPolicy.installCertificatesFromSdCard"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->installCertificatesFromSdCard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isExternalStorageEncrypted()Z
    .locals 3

    .prologue
    .line 616
    const-string v1, "SecurityPolicy.isExternalStorageEncrypted"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 619
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->isExternalStorageEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 624
    :goto_0
    return v1

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInternalStorageEncrypted()Z
    .locals 3

    .prologue
    .line 592
    const-string v1, "SecurityPolicy.isInternalStorageEncrypted"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 593
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 595
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->isInternalStorageEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 600
    :goto_0
    return v1

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public powerOffDevice()V
    .locals 3

    .prologue
    .line 711
    const-string v1, "SecurityPolicy.powerOffDevice"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 714
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->powerOffDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 3
    .parameter "pathOrig"
    .parameter "output"

    .prologue
    .line 845
    const-string v1, "SecurityPolicy.readFile"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 846
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 848
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->readFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 853
    :goto_0
    return v1

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAccountsByType(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 692
    const-string v1, "SecurityPolicy.removeAccountsByType"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 695
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->removeAccountsByType(Ljava/lang/String;)Z
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
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "type"

    .prologue
    .line 401
    const-string v1, "SecurityPolicy.removeCertificate"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
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
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed unlockCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetCredentialStorage()Z
    .locals 3

    .prologue
    .line 352
    const-string v1, "SecurityPolicy.resetCredentialStorage"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 355
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->resetCredentialStorage()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 360
    :goto_0
    return v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed resetCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCredentialStoragePassword(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 262
    const-string v1, "SecurityPolicy.setCredentialStoragePassword"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 265
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setCredentialStoragePassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :goto_0
    return v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setCredentialStoragePassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 3
    .parameter "isEncrypt"

    .prologue
    .line 569
    const-string v1, "SecurityPolicy.setExternalStorageEncryption"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 572
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setExternalStorageEncryption(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 3
    .parameter "isEncrypt"

    .prologue
    .line 546
    const-string v1, "SecurityPolicy.setInternalStorageEncryption"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 549
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setInternalStorageEncryption(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 638
    const-string v0, "SecurityPolicy.setRequireDeviceEncryption"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    .line 640
    return-void
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 663
    const-string v0, "SecurityPolicy.setRequireStorageCardEncryption"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V

    .line 665
    return-void
.end method

.method public unlockCredentialStorage(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 331
    const-string v1, "SecurityPolicy.unlockCredentialStorage"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 334
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->unlockCredentialStorage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 339
    :goto_0
    return v1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed unlockCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wipeDevice(I)Z
    .locals 5
    .parameter "flags"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 447
    const-string v2, "SecurityPolicy.wipeDevice"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, result:Z
    iget-object v2, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v2, :cond_3

    .line 451
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    if-ne p1, v4, :cond_1

    .line 453
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Landroid/app/enterprise/SecurityPolicy;->formatStorageCard(Z)Z

    move-result v1

    .line 455
    :cond_1
    if-eq p1, v3, :cond_2

    if-ne p1, v4, :cond_3

    .line 457
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/app/enterprise/SecurityPolicy;->formatStorageCard(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 464
    :cond_3
    :goto_0
    return v1

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with misc info policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
