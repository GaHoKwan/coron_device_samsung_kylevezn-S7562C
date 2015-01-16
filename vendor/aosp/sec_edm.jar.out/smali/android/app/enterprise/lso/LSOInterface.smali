.class public Landroid/app/enterprise/lso/LSOInterface;
.super Ljava/lang/Object;
.source "LSOInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static gLockscreenOverlay:Landroid/app/enterprise/lso/LSOInterface;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/enterprise/lso/LSOInterface;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "lockscreen_overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/lso/ILockscreenOverlay;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    .line 79
    iput-object p1, p0, Landroid/app/enterprise/lso/LSOInterface;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/enterprise/lso/LSOInterface;
    .locals 3
    .parameter "context"

    .prologue
    .line 96
    sget-object v1, Landroid/app/enterprise/lso/LSOInterface;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Landroid/app/enterprise/lso/LSOInterface;->gLockscreenOverlay:Landroid/app/enterprise/lso/LSOInterface;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/enterprise/lso/LSOInterface;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/enterprise/lso/LSOInterface;->gLockscreenOverlay:Landroid/app/enterprise/lso/LSOInterface;

    .line 100
    :cond_0
    sget-object v0, Landroid/app/enterprise/lso/LSOInterface;->gLockscreenOverlay:Landroid/app/enterprise/lso/LSOInterface;

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public canConfigure(I)Z
    .locals 4
    .parameter "feature"

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    if-nez v2, :cond_0

    .line 344
    const-string v2, "LSO"

    const-string v3, "LSO Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    return v1

    .line 349
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    invoke-interface {v2, p1}, Landroid/app/enterprise/lso/ILockscreenOverlay;->canConfigure(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LSO"

    const-string v3, "Failed talking with Lockscreen customization service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 352
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "LSO"

    const-string v3, "Caller does not have required permissions"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getData()Landroid/app/enterprise/lso/LSOItemData;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOInterface;->getData(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v0

    return-object v0
.end method

.method public getData(I)Landroid/app/enterprise/lso/LSOItemData;
    .locals 4
    .parameter "layer"

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    if-nez v2, :cond_0

    .line 195
    const-string v2, "LSO"

    const-string v3, "LSO Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-object v1

    .line 200
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    invoke-interface {v2, p1}, Landroid/app/enterprise/lso/ILockscreenOverlay;->getData(I)Landroid/app/enterprise/lso/LSOItemData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LSO"

    const-string v3, "Failed talking with Lockscreen customization service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPreferences()Landroid/app/enterprise/lso/LSOAttributeSet;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 515
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    if-nez v2, :cond_0

    .line 516
    const-string v2, "LSO"

    const-string v3, "LSO Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_0
    return-object v1

    .line 521
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    invoke-interface {v2}, Landroid/app/enterprise/lso/ILockscreenOverlay;->getPreferences()Landroid/app/enterprise/lso/LSOAttributeSet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LSO"

    const-string v3, "Failed talking with Lockscreen customization service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 524
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 525
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LSO"

    const-string v3, "Unhandled exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isConfigured(I)Z
    .locals 4
    .parameter "feature"

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    if-nez v2, :cond_0

    .line 301
    const-string v2, "LSO"

    const-string v3, "LSO Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_0
    return v1

    .line 306
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    invoke-interface {v2, p1}, Landroid/app/enterprise/lso/ILockscreenOverlay;->isConfigured(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LSO"

    const-string v3, "Failed talking with Lockscreen customization service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 107
    invoke-static {p2}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/lso/ILockscreenOverlay;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    .line 108
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    .line 114
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOInterface;->resetData(I)V

    .line 268
    return-void
.end method

.method public resetData()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LSOInterface;->resetData(I)V

    .line 275
    return-void
.end method

.method public resetData(I)V
    .locals 3
    .parameter "layer"

    .prologue
    .line 245
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    if-nez v1, :cond_0

    .line 246
    const-string v1, "LSO"

    const-string v2, "LSO Service is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/enterprise/lso/LSOInterface;->canConfigure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    new-instance v1, Ljava/security/AccessControlException;

    const-string v2, "Calling admin is not allowed to reset Lockscreen Overlay."

    invoke-direct {v1, v2}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    invoke-interface {v1, p1}, Landroid/app/enterprise/lso/ILockscreenOverlay;->resetData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LSO"

    const-string v2, "Failed talking with Lockscreen customization service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetWallpaper()V
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    if-nez v1, :cond_0

    .line 436
    const-string v1, "LSO"

    const-string v2, "LSO Service is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    return-void

    .line 440
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/app/enterprise/lso/LSOInterface;->canConfigure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    new-instance v1, Ljava/security/AccessControlException;

    const-string v2, "Calling admin is not allowed to reset wallpaper"

    invoke-direct {v1, v2}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    invoke-interface {v1}, Landroid/app/enterprise/lso/ILockscreenOverlay;->resetWallpaper()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LSO"

    const-string v2, "Failed talking with Lockscreen customization service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setData(Landroid/app/enterprise/lso/LSOItemData;)I
    .locals 1
    .parameter "lsoData"

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/enterprise/lso/LSOInterface;->setData(Landroid/app/enterprise/lso/LSOItemData;I)I

    move-result v0

    return v0
.end method

.method public setData(Landroid/app/enterprise/lso/LSOItemData;I)I
    .locals 3
    .parameter "lsoData"
    .parameter "layer"

    .prologue
    .line 147
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    if-nez v1, :cond_0

    .line 148
    const-string v1, "LSO"

    const-string v2, "LSO Service is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, -0x5

    .line 158
    :goto_0
    return v1

    .line 153
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/lso/ILockscreenOverlay;->setData(Landroid/app/enterprise/lso/LSOItemData;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LSO"

    const-string v2, "Failed talking with Lockscreen customization service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public setPreferences(Landroid/app/enterprise/lso/LSOAttributeSet;)I
    .locals 3
    .parameter "pref"

    .prologue
    .line 479
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    if-nez v1, :cond_0

    .line 480
    const-string v1, "LSO"

    const-string v2, "LSO Service is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v1, -0x5

    .line 492
    :goto_0
    return v1

    .line 485
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    invoke-interface {v1, p1}, Landroid/app/enterprise/lso/ILockscreenOverlay;->setPreferences(Landroid/app/enterprise/lso/LSOAttributeSet;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LSO"

    const-string v2, "Failed talking with Lockscreen customization service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x2

    goto :goto_0

    .line 488
    :catch_1
    move-exception v0

    .line 489
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LSO"

    const-string v2, "Unhandled exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setWallpaper(Ljava/lang/String;)I
    .locals 3
    .parameter "imageFilePath"

    .prologue
    .line 389
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    if-nez v1, :cond_0

    .line 390
    const-string v1, "LSO"

    const-string v2, "LSO Service is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v1, -0x5

    .line 402
    :goto_0
    return v1

    .line 395
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/lso/LSOInterface;->mLSOService:Landroid/app/enterprise/lso/ILockscreenOverlay;

    invoke-interface {v1, p1}, Landroid/app/enterprise/lso/ILockscreenOverlay;->setWallpaper(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LSO"

    const-string v2, "Failed talking with Lockscreen customization service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x2

    goto :goto_0

    .line 398
    :catch_1
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LSO"

    const-string v2, "Unhandled exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
