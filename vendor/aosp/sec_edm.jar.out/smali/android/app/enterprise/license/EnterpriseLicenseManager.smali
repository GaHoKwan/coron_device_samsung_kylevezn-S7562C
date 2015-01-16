.class public Landroid/app/enterprise/license/EnterpriseLicenseManager;
.super Ljava/lang/Object;
.source "EnterpriseLicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/license/EnterpriseLicenseManager$AgentCallback;
    }
.end annotation


# static fields
.field public static final ACTION_LICENSE_STATUS:Ljava/lang/String; = "edm.intent.action.license.status"

.field public static final EXTRA_LICENSE_STATUS:Ljava/lang/String; = "edm.intent.extra.license.status"

.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseManager"

.field private static gLicenseMgrInst:Landroid/app/enterprise/license/EnterpriseLicenseManager;

.field private static lService:Landroid/app/enterprise/license/IEnterpriseLicense;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field mAgent:Landroid/app/enterprise/license/EnterpriseLicenseManager$AgentCallback;

.field private mAgentCallback:Landroid/app/enterprise/license/IAgentCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->mAgent:Landroid/app/enterprise/license/EnterpriseLicenseManager$AgentCallback;

    .line 93
    new-instance v0, Landroid/app/enterprise/license/EnterpriseLicenseManager$1;

    invoke-direct {v0, p0}, Landroid/app/enterprise/license/EnterpriseLicenseManager$1;-><init>(Landroid/app/enterprise/license/EnterpriseLicenseManager;)V

    iput-object v0, p0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->mAgentCallback:Landroid/app/enterprise/license/IAgentCallback;

    .line 82
    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    .line 83
    iput-object p1, p0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/enterprise/license/EnterpriseLicenseManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    sget-object v1, Landroid/app/enterprise/license/EnterpriseLicenseManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->gLicenseMgrInst:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroid/app/enterprise/license/EnterpriseLicenseManager;

    invoke-direct {v0, p0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->gLicenseMgrInst:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    .line 109
    :cond_0
    sget-object v0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->gLicenseMgrInst:Landroid/app/enterprise/license/EnterpriseLicenseManager;

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getService()Landroid/app/enterprise/license/IEnterpriseLicense;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    if-nez v0, :cond_0

    .line 88
    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v0

    sput-object v0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    .line 90
    :cond_0
    sget-object v0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .parameter "apiName"

    .prologue
    .line 416
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 417
    sget-object v1, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    invoke-interface {v1, p0}, Landroid/app/enterprise/license/IEnterpriseLicense;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public activateLicense(Ljava/lang/String;)V
    .locals 3
    .parameter "licenseKey"

    .prologue
    .line 400
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 401
    sget-object v1, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    invoke-interface {v1, p1}, Landroid/app/enterprise/license/IEnterpriseLicense;->activateLicense(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;)Z
    .locals 3
    .parameter "status"
    .parameter "instanceId"
    .parameter "error"

    .prologue
    .line 285
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    sget-object v1, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/license/IEnterpriseLicense;->deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 292
    :goto_0
    return v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteApiCallDataByAdmin(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 347
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    sget-object v1, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    invoke-interface {v1, p1}, Landroid/app/enterprise/license/IEnterpriseLicense;->deleteApiCallDataByAdmin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    :goto_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;
    .locals 3

    .prologue
    .line 365
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 366
    sget-object v1, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    invoke-interface {v1}, Landroid/app/enterprise/license/IEnterpriseLicense;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 372
    :goto_0
    return-object v1

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApiCallData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 13
    .parameter "instanceId"

    .prologue
    .line 240
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 241
    const/4 v6, 0x0

    .line 242
    .local v6, json:Lorg/json/JSONObject;
    sget-object v10, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    invoke-interface {v10, p1}, Landroid/app/enterprise/license/IEnterpriseLicense;->getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 243
    .local v2, bundle:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 244
    new-instance v6, Lorg/json/JSONObject;

    .end local v6           #json:Lorg/json/JSONObject;
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 245
    .restart local v6       #json:Lorg/json/JSONObject;
    const-string v10, "api_call"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 246
    .local v1, b:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 247
    .local v8, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 248
    .local v0, arr:Lorg/json/JSONArray;
    const/4 v9, 0x0

    .line 249
    .local v9, temp:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 250
    .local v4, i:I
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 251
    .local v7, key:Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    .end local v9           #temp:Lorg/json/JSONObject;
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 252
    .restart local v9       #temp:Lorg/json/JSONObject;
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    invoke-virtual {v0, v4, v9}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    .end local v7           #key:Ljava/lang/String;
    :cond_0
    const-string v10, "log_start"

    const-string v11, "log_start"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 258
    const-string v10, "log_end"

    const-string v11, "log_end"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 259
    const-string v10, "api_call"

    invoke-virtual {v6, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #json:Lorg/json/JSONObject;
    .end local v8           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #temp:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-object v6

    .line 264
    :catch_0
    move-exception v3

    .line 265
    .local v3, e:Lorg/json/JSONException;
    const-string v10, "EnterpriseLicenseManager"

    const-string v11, "JSONException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v3           #e:Lorg/json/JSONException;
    :cond_2
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 266
    :catch_1
    move-exception v3

    .line 267
    .local v3, e:Landroid/os/RemoteException;
    const-string v10, "EnterpriseLicenseManager"

    const-string v11, "Failed talking to License policy service "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getApiCallDataByAdmin(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 13
    .parameter "packageName"

    .prologue
    .line 306
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 307
    const/4 v6, 0x0

    .line 308
    .local v6, json:Lorg/json/JSONObject;
    sget-object v10, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    invoke-interface {v10, p1}, Landroid/app/enterprise/license/IEnterpriseLicense;->getApiCallDataByAdmin(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 309
    .local v2, bundle:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 310
    new-instance v6, Lorg/json/JSONObject;

    .end local v6           #json:Lorg/json/JSONObject;
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .restart local v6       #json:Lorg/json/JSONObject;
    const-string v10, "api_call"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 312
    .local v1, b:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 313
    .local v8, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 314
    .local v0, arr:Lorg/json/JSONArray;
    const/4 v9, 0x0

    .line 315
    .local v9, temp:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 316
    .local v4, i:I
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 317
    .local v7, key:Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    .end local v9           #temp:Lorg/json/JSONObject;
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 318
    .restart local v9       #temp:Lorg/json/JSONObject;
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    invoke-virtual {v0, v4, v9}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 323
    .end local v7           #key:Ljava/lang/String;
    :cond_0
    const-string v10, "log_start"

    const-string v11, "log_start"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 324
    const-string v10, "log_end"

    const-string v11, "log_end"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 325
    const-string v10, "api_call"

    invoke-virtual {v6, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 335
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #json:Lorg/json/JSONObject;
    .end local v8           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #temp:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-object v6

    .line 330
    :catch_0
    move-exception v3

    .line 331
    .local v3, e:Lorg/json/JSONException;
    const-string v10, "EnterpriseLicenseManager"

    const-string v11, "JSONException"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .end local v3           #e:Lorg/json/JSONException;
    :cond_2
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 332
    :catch_1
    move-exception v3

    .line 333
    .local v3, e:Landroid/os/RemoteException;
    const-string v10, "EnterpriseLicenseManager"

    const-string v11, "Failed talking to License policy service "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getLicenseInfo(Ljava/lang/String;)Landroid/app/enterprise/license/LicenseInfo;
    .locals 3
    .parameter "instanceId"

    .prologue
    .line 383
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 384
    sget-object v1, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    invoke-interface {v1, p1}, Landroid/app/enterprise/license/IEnterpriseLicense;->getLicenseInfo(Ljava/lang/String;)Landroid/app/enterprise/license/LicenseInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 390
    :goto_0
    return-object v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRightsObject(Ljava/lang/String;)Landroid/app/enterprise/license/RightsObject;
    .locals 3
    .parameter "instanceId"

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    invoke-interface {v1, p1}, Landroid/app/enterprise/license/IEnterpriseLicense;->getRightsObject(Ljava/lang/String;)Landroid/app/enterprise/license/RightsObject;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z
    .locals 8
    .parameter "packageName"
    .parameter "packageVersion"
    .parameter "status"
    .parameter "instanceId"
    .parameter "RO"
    .parameter "error"

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/license/IEnterpriseLicense;->processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 184
    :goto_0
    return v0

    .line 180
    :catch_0
    move-exception v7

    .line 181
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "EnterpriseLicenseManager"

    const-string v1, "Failed talking to License policy service "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z
    .locals 3
    .parameter "status"
    .parameter "instanceId"
    .parameter "RO"
    .parameter "error"

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/license/IEnterpriseLicense;->processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 227
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerLicenseActivationCallback(Landroid/app/enterprise/license/EnterpriseLicenseManager$AgentCallback;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 123
    :try_start_0
    invoke-static {}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getService()Landroid/app/enterprise/license/IEnterpriseLicense;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    iput-object p1, p0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->mAgent:Landroid/app/enterprise/license/EnterpriseLicenseManager$AgentCallback;

    .line 125
    sget-object v1, Landroid/app/enterprise/license/EnterpriseLicenseManager;->lService:Landroid/app/enterprise/license/IEnterpriseLicense;

    iget-object v2, p0, Landroid/app/enterprise/license/EnterpriseLicenseManager;->mAgentCallback:Landroid/app/enterprise/license/IAgentCallback;

    invoke-interface {v1, v2}, Landroid/app/enterprise/license/IEnterpriseLicense;->registerLicenseActivationCallback(Landroid/app/enterprise/license/IAgentCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EnterpriseLicenseManager"

    const-string v2, "Failed talking to License policy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
