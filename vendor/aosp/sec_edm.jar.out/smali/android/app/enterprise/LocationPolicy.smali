.class public Landroid/app/enterprise/LocationPolicy;
.super Ljava/lang/Object;
.source "LocationPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/ILocationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "LocationPolicy"

    sput-object v0, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "location_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ILocationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ILocationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    .line 51
    return-void
.end method


# virtual methods
.method public getAllLocationProviders()Ljava/util/List;
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
    .line 231
    const-string v1, "LocationPolicy.getAllLocationProviders"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 232
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, ">>> getAllLocationProviders"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ILocationPolicy;->getAllLocationProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 244
    :goto_0
    return-object v1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getAllLocationProviders - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocationProviderState(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    .line 159
    const-string v1, "LocationPolicy.getLocationProviderState"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->getIndividualLocationProvider(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "setIndividualLocationPolicy - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGPSOn()Z
    .locals 3

    .prologue
    .line 398
    const-string v1, "LocationPolicy.isGPSOn"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 399
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, ">>> isGPSOn"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    .line 402
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ILocationPolicy;->isGPSOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 407
    :goto_0
    return v1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isGPSOn - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGPSStateChangeAllowed()Z
    .locals 3

    .prologue
    .line 323
    const-string v1, "LocationPolicy.isGPSStateChangeAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 324
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, ">>> isGPSStateChangeAllowed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    .line 327
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ILocationPolicy;->isGPSStateChangeAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 332
    :goto_0
    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isGPSStateChangeAllowed - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 3
    .parameter "SProvider"

    .prologue
    .line 182
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 189
    :goto_0
    return v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isLocationPolicyEnabled - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGPSStateChangeAllowed(Z)Z
    .locals 3
    .parameter "allow"

    .prologue
    .line 300
    const-string v1, "LocationPolicy.setGPSStateChangeAllowed"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 301
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, ">>> setGPSStateChangeAllowed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    .line 304
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->setGPSStateChangeAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    :goto_0
    return v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "setGPSStateChangeAllowed - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLocationProviderState(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "provider"
    .parameter "enable"

    .prologue
    .line 101
    const-string v1, "LocationPolicy.setLocationProviderState"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ILocationPolicy;->setIndividualLocationProvider(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "setLocationProviderState - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startGPS(Z)Z
    .locals 3
    .parameter "start"

    .prologue
    .line 373
    const-string v1, "LocationPolicy.startGPS"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 374
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, ">>> startGPS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    .line 377
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->startGPS(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 382
    :goto_0
    return v1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "startGPS - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
