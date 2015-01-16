.class public Landroid/app/enterprise/geofencing/Geofencing;
.super Ljava/lang/Object;
.source "Geofencing.java"


# static fields
.field public static final ACTION_DEVICE_INSIDE_GEOFENCE:Ljava/lang/String; = "edm.intent.action.device.inside"

.field public static final ACTION_DEVICE_LOCATION_UNAVAILABLE:Ljava/lang/String; = "edm.intent.action.device.location.unavailable"

.field public static final ACTION_DEVICE_OUTSIDE_GEOFENCE:Ljava/lang/String; = "edm.intent.action.device.outside"

.field public static final ERROR_GEOFENCING_FAILED:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final INTENT_EXTRA_ID:Ljava/lang/String; = "edm.intent.extra.geofence.id"

.field private static final TAG:Ljava/lang/String; = "Geofencing"

.field public static final TYPE_CIRCLE:I = 0x1

.field public static final TYPE_LINEAR:I = 0x3

.field public static final TYPE_POLYGON:I = 0x2

.field private static gGeofencing:Landroid/app/enterprise/geofencing/Geofencing;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/enterprise/geofencing/Geofencing;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v0, "geofencing"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/geofencing/IGeofencing;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    .line 113
    iput-object p1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/enterprise/geofencing/Geofencing;
    .locals 3
    .parameter "context"

    .prologue
    .line 131
    sget-object v1, Landroid/app/enterprise/geofencing/Geofencing;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Landroid/app/enterprise/geofencing/Geofencing;->gGeofencing:Landroid/app/enterprise/geofencing/Geofencing;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/app/enterprise/geofencing/Geofencing;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/enterprise/geofencing/Geofencing;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/enterprise/geofencing/Geofencing;->gGeofencing:Landroid/app/enterprise/geofencing/Geofencing;

    .line 135
    :cond_0
    sget-object v0, Landroid/app/enterprise/geofencing/Geofencing;->gGeofencing:Landroid/app/enterprise/geofencing/Geofencing;

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public createGeofence(Landroid/app/enterprise/geofencing/Geofence;)I
    .locals 4
    .parameter "geofence"

    .prologue
    .line 214
    const-string v2, "Geofencing.createGeofence"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v2, :cond_0

    .line 217
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    invoke-interface {v2, p1}, Landroid/app/enterprise/geofencing/IGeofencing;->createGeofence(Landroid/app/enterprise/geofencing/Geofence;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 224
    :goto_0
    return v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Geofencing"

    const-string v3, "Failed talking with geofencing service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public destroyGeofence(I)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 257
    const-string v1, "Geofencing.destroyGeofence"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v1, :cond_0

    .line 260
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    invoke-interface {v1, p1}, Landroid/app/enterprise/geofencing/IGeofencing;->destroyGeofence(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 266
    :goto_0
    return v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGeofences()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/Geofence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    const-string v1, "Geofencing.getGeofences"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v1, :cond_0

    .line 300
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    invoke-interface {v1}, Landroid/app/enterprise/geofencing/IGeofencing;->getGeofences()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinDistanceParameter()F
    .locals 4

    .prologue
    .line 555
    const-string v2, "Geofencing.getMinDistanceParameter"

    invoke-static {v2}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 556
    iget-object v2, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v2, :cond_0

    .line 558
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    invoke-interface {v2}, Landroid/app/enterprise/geofencing/IGeofencing;->getMinDistanceParameter()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 565
    :goto_0
    return v1

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Geofencing"

    const-string v3, "Failed talking with geofencing service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/high16 v1, -0x4080

    goto :goto_0
.end method

.method public getMinTimeParameter()J
    .locals 5

    .prologue
    .line 499
    const-string v3, "Geofencing.getMinTimeParameter"

    invoke-static {v3}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 500
    iget-object v3, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v3, :cond_0

    .line 502
    :try_start_0
    iget-object v3, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    invoke-interface {v3}, Landroid/app/enterprise/geofencing/IGeofencing;->getMinTimeParameter()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 509
    :goto_0
    return-wide v1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Geofencing"

    const-string v4, "Failed talking with geofencing service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public isDeviceInsideGeofence()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    const-string v1, "Geofencing.isDeviceInsideGeofence"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v1, :cond_0

    .line 449
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    invoke-interface {v1}, Landroid/app/enterprise/geofencing/IGeofencing;->isDeviceInsideGeofence()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 455
    :goto_0
    return-object v1

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGeofencingEnabled()Z
    .locals 3

    .prologue
    .line 418
    const-string v1, "Geofencing.isGeofencingEnabled"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v1, :cond_0

    .line 421
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    invoke-interface {v1}, Landroid/app/enterprise/geofencing/IGeofencing;->isGeofencingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    :goto_0
    return v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMinDistanceParameter(F)Z
    .locals 3
    .parameter "distance"

    .prologue
    .line 527
    const-string v1, "Geofencing.setMinDistanceParameter"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v1, :cond_0

    .line 530
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    invoke-interface {v1, p1}, Landroid/app/enterprise/geofencing/IGeofencing;->setMinDistanceParameter(F)Z
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
    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMinTimeParameter(J)Z
    .locals 3
    .parameter "time"

    .prologue
    .line 471
    const-string v1, "Geofencing.setMinTimeParameter"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v1, :cond_0

    .line 474
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/geofencing/IGeofencing;->setMinTimeParameter(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 480
    :goto_0
    return v1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startGeofencing()Z
    .locals 3

    .prologue
    .line 346
    const-string v1, "Geofencing.startGeofencing"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v1, :cond_0

    .line 349
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    invoke-interface {v1}, Landroid/app/enterprise/geofencing/IGeofencing;->startGeofencing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 355
    :goto_0
    return v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopGeofencing()Z
    .locals 3

    .prologue
    .line 390
    const-string v1, "Geofencing.stopGeofencing"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    if-eqz v1, :cond_0

    .line 393
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/geofencing/Geofencing;->mGeofenceService:Landroid/app/enterprise/geofencing/IGeofencing;

    invoke-interface {v1}, Landroid/app/enterprise/geofencing/IGeofencing;->stopGeofencing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 399
    :goto_0
    return v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Geofencing"

    const-string v2, "Failed talking with geofencing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
