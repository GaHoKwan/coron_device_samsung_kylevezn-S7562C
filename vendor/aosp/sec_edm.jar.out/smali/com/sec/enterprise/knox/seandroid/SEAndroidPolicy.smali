.class public Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;
.super Ljava/lang/Object;
.source "SEAndroidPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SEAndroidPolicy"

.field private static mSEAndroidPolicy:Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "seandroid_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    .line 53
    iput-object p1, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    sget-object v1, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidPolicy:Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidPolicy:Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;

    .line 74
    :cond_0
    sget-object v0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidPolicy:Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isReloadSEPropertieSet()Z
    .locals 3

    .prologue
    .line 263
    const-string v1, "SEAndroidPolicy.isReloadSEPropertieSet"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    if-eqz v1, :cond_0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;->isReloadSEPropertieSet()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 271
    :goto_0
    return v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Failed to setSEappContexts"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFileContexts([B)Z
    .locals 3
    .parameter "fileContexts"

    .prologue
    .line 106
    const-string v1, "SEAndroidPolicy.setFileContexts"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;->setFileContexts([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Failed to setFileContexts"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPropertyContexts([B)Z
    .locals 3
    .parameter "propertyContexts"

    .prologue
    .line 145
    const-string v1, "SEAndroidPolicy.setPropertyContexts"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;->setPropertyContexts([B)Z
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
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Failed to setPropertyContexts"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSELinuxPolicy([B)Z
    .locals 3
    .parameter "sePolicy"

    .prologue
    .line 184
    const-string v1, "SEAndroidPolicy.setSELinuxPolicy"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    if-eqz v1, :cond_0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;->setSELinuxPolicy([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    :goto_0
    return v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Failed to setSELinuxPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSEappContexts([B)Z
    .locals 3
    .parameter "seappContexts"

    .prologue
    .line 223
    const-string v1, "SEAndroidPolicy.setSEappContexts"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    if-eqz v1, :cond_0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/seandroid/SEAndroidPolicy;->mSEAndroidService:Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy;->setSEappContexts([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SEAndroidPolicy"

    const-string v2, "Failed to setSEappContexts"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
