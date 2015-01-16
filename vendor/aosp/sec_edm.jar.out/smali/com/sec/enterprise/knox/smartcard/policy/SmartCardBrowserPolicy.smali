.class public Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;
.source "SmartCardBrowserPolicy.java"


# static fields
.field public static final ACTION_ENABLED_BROWSER_SMARTCARD_AUTHENTICATION:Ljava/lang/String; = "edm.intent.action.smartcard.browser.authentication"

.field public static final EXTRA_AUTHENTICATION_ENABLED:Ljava/lang/String; = "edm.intent.extra.smartcard.authentication.enabled"

.field private static mSmartCardBrowserPolicy:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;-><init>(Landroid/content/Context;)V

    .line 83
    const-string v0, "smartcard_browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    .line 85
    iget-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartCardBrowserPolicy API - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;
    .locals 3
    .parameter "context"

    .prologue
    .line 128
    sget-object v1, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->mSmartCardBrowserPolicy:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->mSmartCardBrowserPolicy:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

    .line 133
    :cond_0
    sget-object v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->mSmartCardBrowserPolicy:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addUrlsToCredentialsExceptionList(Ljava/util/List;)Z
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
    .line 310
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SmartCardBrowserPolicy.addUrlsToCredentialsExceptionList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;->addUrlsToCredentialsExceptionList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 318
    :goto_0
    return v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addUrlsToCredentialsRequiredList(Ljava/util/List;)Z
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
    .line 184
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SmartCardBrowserPolicy.isAuthenticationEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;->addUrlsToCredentialsRequiredList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearUrlsFromCredentialsExceptionList()Z
    .locals 3

    .prologue
    .line 374
    const-string v1, "SmartCardBrowserPolicy.clearUrlsFromCredentialsExceptionList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;->clearUrlsFromCredentialsExceptionList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 382
    :goto_0
    return v1

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearUrlsFromCredentialsRequiredList()Z
    .locals 3

    .prologue
    .line 248
    const-string v1, "SmartCardBrowserPolicy.clearUrlsFromCredentialsRequiredList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;->clearUrlsFromCredentialsRequiredList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 256
    :goto_0
    return v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrlsCredentialsExceptionLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    const-string v1, "SmartCardBrowserPolicy.getUrlsCredentialsExceptionLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;->getUrlsCredentialsExceptionLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 409
    :goto_0
    return-object v1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrlsCredentialsRequiredLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    const-string v1, "SmartCardBrowserPolicy.getUrlsCredentialsRequiredLists"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;->getUrlsCredentialsRequiredLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 283
    :goto_0
    return-object v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAuthenticationEnabled()Z
    .locals 3

    .prologue
    .line 103
    const-string v1, "SmartCardBrowserPolicy.isAuthenticationEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;->isAuthenticationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCredentialRequired(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    .line 427
    const-string v1, "SmartCardBrowserPolicy.isCredentialRequired"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;->isCredentialRequired(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 435
    :goto_0
    return v1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeUrlsFromCredentialsExceptionList(Ljava/util/List;)Z
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
    .line 345
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SmartCardBrowserPolicy.removeUrlsFromCredentialsExceptionList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;->removeUrlsFromCredentialsExceptionList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 353
    :goto_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeUrlsFromCredentialsRequiredList(Ljava/util/List;)Z
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
    .line 219
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SmartCardBrowserPolicy.removeUrlsFromCredentialsRequiredList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->lService:Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy;->removeUrlsFromCredentialsRequiredList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 227
    :goto_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to SmartCard policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
