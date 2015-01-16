.class public Landroid/app/enterprise/RoamingPolicy;
.super Ljava/lang/Object;
.source "RoamingPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IRoamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "RoamingPolicy"

    sput-object v0, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "roaming_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    .line 58
    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .locals 3

    .prologue
    .line 189
    const-string v1, "RoamingPolicy.isRoamingDataEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRoamingPushEnabled()Z
    .locals 3

    .prologue
    .line 143
    const-string v1, "RoamingPolicy.isRoamingPushEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingPushEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 151
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRoamingSyncEnabled()Z
    .locals 3

    .prologue
    .line 95
    const-string v1, "RoamingPolicy.isRoamingSyncEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingSyncEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRoamingVoiceCallsEnabled()Z
    .locals 3

    .prologue
    .line 251
    const-string v1, "RoamingPolicy.isRoamingVoiceCallsEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 254
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingVoiceCallsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 259
    :goto_0
    return v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRoamingData(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 169
    const-string v1, "RoamingPolicy.setRoamingData"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 172
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRoamingPush(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 121
    const-string v1, "RoamingPolicy.setRoamingPush"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingPush(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRoamingSync(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 76
    const-string v1, "RoamingPolicy.setRoamingSync"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingSync(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRoamingVoiceCalls(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 228
    const-string v1, "RoamingPolicy.setRoamingVoiceCalls"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    .line 231
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingVoiceCalls(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
