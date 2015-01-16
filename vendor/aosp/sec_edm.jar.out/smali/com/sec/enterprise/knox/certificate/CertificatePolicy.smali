.class public Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# static fields
.field public static final ACTION_CERTIFICATE_FAILURE:Ljava/lang/String; = "edm.intent.certificate.action.certificate.failure"

.field public static final ACTION_REFRESH_CREDENTIALS_UI:Ljava/lang/String; = "edm.intent.action.REFRESH_UI"

.field public static final APP_INFO_PKGNAME:Ljava/lang/String; = "appInfoPkgName"

.field public static final CERTIFICATE_FAIL_ALG_NON_FIPS_APPROVED:I = 0x9

.field public static final CERTIFICATE_FAIL_ALTSUBJECT_MISMATCH:I = 0x6

.field public static final CERTIFICATE_FAIL_BAD_CERTIFICATE:I = 0x7

.field public static final CERTIFICATE_FAIL_EXPIRED:I = 0x4

.field public static final CERTIFICATE_FAIL_INSTALL_PARSE_CERTIFICATE_ENCODING:I = 0xb

.field public static final CERTIFICATE_FAIL_INSTALL_PARSE_INCONSISTENT_CERTIFICATES:I = 0xc

.field public static final CERTIFICATE_FAIL_INSTALL_PARSE_NO_CERTIFICATES:I = 0xa

.field public static final CERTIFICATE_FAIL_NOT_YET_VALID:I = 0x3

.field public static final CERTIFICATE_FAIL_REVOKED:I = 0x2

.field public static final CERTIFICATE_FAIL_SERVER_CHAIN_PROBE:I = 0x8

.field public static final CERTIFICATE_FAIL_SUBJECT_MISMATCH:I = 0x5

.field public static final CERTIFICATE_FAIL_UNABLE_TO_CHECK_REVOCATION_STATUS:I = 0xd

.field public static final CERTIFICATE_FAIL_UNSPECIFIED:I = 0x0

.field public static final CERTIFICATE_FAIL_UNTRUSTED:I = 0x1

.field public static final EXTRA_CERTIFICATE_FAILURE_MESSAGE:Ljava/lang/String; = "certificate_failure_message"

.field public static final EXTRA_CERTIFICATE_FAILURE_MODULE:Ljava/lang/String; = "certificate_failure_module"

.field public static final INSTALLER_MODULE:Ljava/lang/String; = "installer_module"

.field public static final IS_MARKET_INSTALLATION:Ljava/lang/String; = "isMarketInstallation"

.field public static final PACKAGE_MODULE:Ljava/lang/String; = "package_manager_module"

.field private static TAG:Ljava/lang/String; = null

.field public static final WEBKIT_MODULE:Ljava/lang/String; = "webkit_module"

.field public static final WIFI_MODULE:Ljava/lang/String; = "wifi_module"

.field private static gCertificatePolicy:Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mAppService:Landroid/app/enterprise/IApplicationPolicy;

.field private final mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "CertificatePolicy"

    sput-object v0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "certificate_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    .line 95
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mAppService:Landroid/app/enterprise/IApplicationPolicy;

    .line 97
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    .locals 2
    .parameter "context"

    .prologue
    .line 182
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    sget-object v0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->gCertificatePolicy:Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->gCertificatePolicy:Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    .line 186
    :cond_0
    sget-object v0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->gCertificatePolicy:Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    monitor-exit v1

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addTrustedCaCertificateList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, certificates:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-string v4, "CertificatePolicy.addTrustedCaCertificateList"

    invoke-static {v4}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v4, :cond_0

    .line 225
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 228
    .local v0, cert:Ljava/security/cert/X509Certificate;
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4, v0}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 233
    .local v2, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with certificate policy"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 231
    .restart local v1       #certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v4, v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->addTrustedCaCertificateList(Ljava/util/List;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1
.end method

.method public addUntrustedCaCertificateList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, certificates:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-string v4, "CertificatePolicy.addUntrustedCaCertificateList"

    invoke-static {v4}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 420
    iget-object v4, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v4, :cond_0

    .line 422
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v1, certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 425
    .local v0, cert:Ljava/security/cert/X509Certificate;
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4, v0}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 430
    .local v2, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with certificate policy"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 428
    .restart local v1       #certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v4, v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->addUntrustedCaCertificateList(Ljava/util/List;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1
.end method

.method public clearTrustedCaCertificateList()Z
    .locals 3

    .prologue
    .line 338
    const-string v1, "CertificatePolicy.clearTrustedCaCertificateList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->clearTrustedCaCertificateList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 346
    :goto_0
    return v1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearUntrustedCaCertificateList()Z
    .locals 3

    .prologue
    .line 480
    const-string v1, "CertificatePolicy.clearUntrustedCaCertificateList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->clearUntrustedCaCertificateList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 488
    :goto_0
    return v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableCertificateFailureNotification(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 558
    const-string v1, "CertificatePolicy.enableCertificateFailureNotification"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_0

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->enableCertificateFailureNotification(Z)Z
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
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableOcspCheck(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pkgName"
    .parameter "enable"

    .prologue
    .line 629
    const-string v1, "CertificatePolicy.enableOcspCheck"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mAppService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mAppService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->enableOcspCheck(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 637
    :goto_0
    return v1

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableRevocationCheck(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pkgName"
    .parameter "enable"

    .prologue
    .line 605
    const-string v1, "CertificatePolicy.enableRevocationCheck"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mAppService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mAppService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->enableRevocationCheck(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 613
    :goto_0
    return v1

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSignatureIdentityInformation(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 495
    const-string v1, "CertificatePolicy.enableSignatureIdentityInformation"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_0

    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->enableSignatureIdentityInformation(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 503
    :goto_0
    return v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIdentitiesFromSignatures([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    const-string v1, "CertificatePolicy.getIdentitiesFromSignatures"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_0

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->getIdentitiesFromSignatures([Landroid/content/pm/Signature;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 548
    :goto_0
    return-object v1

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTrustedCaCertificateList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    const-string v1, "CertificatePolicy.getTrustedCaCertificateList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->getTrustedCaCertificateList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 279
    :goto_0
    return-object v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUntrustedCaCertificateList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    const-string v1, "CertificatePolicy.getUntrustedCaCertificateList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_0

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->getUntrustedCaCertificateList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 472
    :goto_0
    return-object v1

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCaCertificateDisabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "certAlias"

    .prologue
    .line 402
    const-string v1, "CertificatePolicy.isCaCertificateDisabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isCaCertificateDisabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 410
    :goto_0
    return v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Certificate policy API isCaCertificateDisabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCaCertificateTrusted([BZ)Z
    .locals 9
    .parameter "certBytes"
    .parameter "showMsg"

    .prologue
    const/4 v5, 0x0

    .line 290
    const-string v6, "CertificatePolicy.isCaCertificateTrusted"

    invoke-static {v6}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 291
    iget-object v6, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v6, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, cert:Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 296
    .local v1, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 297
    .local v4, in:Ljava/io/InputStream;
    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    :try_start_1
    new-instance v2, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v2, v0}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 304
    .local v2, certInfo:Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v6, v2, p2}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isCaCertificateTrusted(Landroid/app/enterprise/CertificateInfo;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 309
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    .end local v2           #certInfo:Landroid/app/enterprise/CertificateInfo;
    .end local v4           #in:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v5

    .line 298
    :catch_0
    move-exception v3

    .line 299
    .local v3, e:Ljava/lang/Exception;
    sget-object v6, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem converting certificate! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 306
    .local v3, e:Landroid/os/RemoteException;
    sget-object v6, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v7, "Failed talking with certificate policy"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isCertificateFailureNotificationEnabled()Z
    .locals 3

    .prologue
    .line 575
    const-string v1, "CertificatePolicy.isCertificateFailureNotificationEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 576
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_0

    .line 578
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isCertificateFailureNotificationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 583
    :goto_0
    return v1

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOcspCheckEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 641
    const-string v1, "CertificatePolicy.isOcspCheckEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mAppService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mAppService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isOcspCheckEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 649
    :goto_0
    return v1

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRevocationCheckEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 617
    const-string v1, "CertificatePolicy.isRevocationCheckEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mAppService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mAppService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 625
    :goto_0
    return v1

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSignatureIdentityInformationEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 510
    const-string v2, "CertificatePolicy.isSignatureIdentityInformationEnabled"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v2, :cond_0

    .line 513
    :try_start_0
    iget-object v2, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isSignatureIdentityInformationEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 518
    :cond_0
    :goto_0
    return v1

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSignatureIdentityInformationEnabled(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 525
    const-string v1, "CertificatePolicy.isSignatureIdentityInformationEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_0

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isSignatureIdentityInformationEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 533
    :goto_0
    return v1

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "module"
    .parameter "msg"
    .parameter "showMsg"

    .prologue
    .line 594
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v1, :cond_0

    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTrustedCaCertificateList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, certificates:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-string v4, "CertificatePolicy.removeTrustedCaCertificateList"

    invoke-static {v4}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v4, :cond_0

    .line 381
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v1, certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 384
    .local v0, cert:Ljava/security/cert/X509Certificate;
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4, v0}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 389
    .local v2, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with certificate policy"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 387
    .restart local v1       #certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v4, v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->removeTrustedCaCertificateList(Ljava/util/List;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1
.end method

.method public removeUntrustedCaCertificateList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, certificates:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-string v4, "CertificatePolicy.removeUntrustedCaCertificateList"

    invoke-static {v4}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 443
    iget-object v4, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-eqz v4, :cond_0

    .line 445
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v1, certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 448
    .local v0, cert:Ljava/security/cert/X509Certificate;
    new-instance v4, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v4, v0}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 453
    .local v2, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with certificate policy"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 451
    .restart local v1       #certList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->mService:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v4, v1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->removeUntrustedCaCertificateList(Ljava/util/List;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1
.end method
