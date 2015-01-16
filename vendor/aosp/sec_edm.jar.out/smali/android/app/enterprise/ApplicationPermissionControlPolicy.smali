.class public Landroid/app/enterprise/ApplicationPermissionControlPolicy;
.super Ljava/lang/Object;
.source "ApplicationPermissionControlPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "ApplicationPermissionControlPolicy"

    sput-object v0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "apppermission_control_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    .line 58
    return-void
.end method


# virtual methods
.method public addPackagesToPermissionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "permission"
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
    .line 61
    .local p2, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPermissionControlPolicy.addPackagesToPermissionBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    if-eqz v1, :cond_0

    .line 64
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPermissionControlPolicy;->addPackagesToPermissionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application permission control policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackagesToPermissionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "permission"
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
    .line 109
    .local p2, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPermissionControlPolicy.addPackagesToPermissionWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPermissionControlPolicy;->addPackagesToPermissionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application permission control policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearPackagesFromPermissionBlackList()Z
    .locals 3

    .prologue
    .line 97
    const-string v1, "ApplicationPermissionControlPolicy.clearPackagesFromPermissionBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    if-eqz v1, :cond_0

    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPermissionControlPolicy;->clearPackagesFromPermissionBlackList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    :goto_0
    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application permission control policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearPackagesFromPermissionWhiteList()Z
    .locals 3

    .prologue
    .line 145
    const-string v1, "ApplicationPermissionControlPolicy.clearPackagesFromPermissionWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPermissionControlPolicy;->clearPackagesFromPermissionWhiteList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 153
    :goto_0
    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application permission control policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "pkgName"
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
    .line 169
    const-string v1, "ApplicationPermissionControlPolicy.getApplicationGrantedPermissions"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    if-eqz v1, :cond_0

    .line 172
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPermissionControlPolicy;->getApplicationGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application permission control policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesFromPermissionBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const-string v1, "ApplicationPermissionControlPolicy.getPackagesFromPermissionBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPermissionControlPolicy;->getPackagesFromPermissionBlackList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application permission control policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesFromPermissionWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    const-string v1, "ApplicationPermissionControlPolicy.getPackagesFromPermissionWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPermissionControlPolicy;->getPackagesFromPermissionWhiteList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application permission control policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPermissionBlockedList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, PermissionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    if-eqz v1, :cond_0

    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPermissionControlPolicy;->getPermissionBlockedList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application permission control policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePackagesFromPermissionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "permission"
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
    .line 73
    .local p2, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPermissionControlPolicy.removePackagesFromPermissionBlackList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPermissionControlPolicy;->removePackagesFromPermissionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application permission control policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePackagesFromPermissionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "permission"
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
    .line 121
    .local p2, pkgNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ApplicationPermissionControlPolicy.removePackagesFromPermissionWhiteList"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->mService:Landroid/app/enterprise/IApplicationPermissionControlPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPermissionControlPolicy;->removePackagesFromPermissionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPermissionControlPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application permission control policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
