.class public Landroid/app/enterprise/DeviceAccountPolicy;
.super Ljava/lang/Object;
.source "DeviceAccountPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/enterprise/IDeviceAccountPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "DeviceAccountPolicy"

    sput-object v0, Landroid/app/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    .line 54
    const-string v0, "device_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDeviceAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    .line 57
    return-void
.end method


# virtual methods
.method public addAccountsToRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "type"
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
    .line 117
    .local p2, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IDeviceAccountPolicy;->addAccountsToRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 124
    :goto_0
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Security Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAccountsToRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "type"
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
    .line 336
    .local p2, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    if-eqz v1, :cond_0

    .line 338
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IDeviceAccountPolicy;->addAccountsToRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 343
    :goto_0
    return v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Security Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAccountsFromRemovalBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 271
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    if-eqz v1, :cond_0

    .line 273
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceAccountPolicy;->clearAccountsFromRemovalBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 278
    :goto_0
    return v1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Security Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAccountsFromRemovalWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 490
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    if-eqz v1, :cond_0

    .line 492
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceAccountPolicy;->clearAccountsFromRemovalWhiteList(Ljava/lang/String;)Z
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
    sget-object v1, Landroid/app/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Security Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountsFromRemovalBlackLists(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    if-eqz v1, :cond_0

    .line 223
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceAccountPolicy;->getAccountsFromRemovalBlackLists(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 228
    :goto_0
    return-object v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountsFromRemovalWhiteLists(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    if-eqz v1, :cond_0

    .line 442
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDeviceAccountPolicy;->getAccountsFromRemovalWhiteLists(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 447
    :goto_0
    return-object v1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportedAccountTypes()Ljava/util/List;
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
    .line 512
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    if-eqz v1, :cond_0

    .line 514
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 519
    :goto_0
    return-object v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "type"
    .parameter "account"
    .parameter "showMsg"

    .prologue
    .line 539
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    if-eqz v1, :cond_0

    .line 541
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IDeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 546
    :goto_0
    return v1

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Security Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeAccountsFromRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "type"
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
    .line 175
    .local p2, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    if-eqz v1, :cond_0

    .line 177
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IDeviceAccountPolicy;->removeAccountsFromRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 183
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Security Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAccountsFromRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "type"
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
    .line 394
    .local p2, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    if-eqz v1, :cond_0

    .line 396
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DeviceAccountPolicy;->mService:Landroid/app/enterprise/IDeviceAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IDeviceAccountPolicy;->removeAccountsFromRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 402
    :goto_0
    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Security Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
