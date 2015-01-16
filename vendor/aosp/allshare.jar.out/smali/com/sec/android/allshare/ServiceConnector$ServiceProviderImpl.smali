.class Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;
.super Lcom/sec/android/allshare/ServiceProvider;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceProviderImpl"
.end annotation


# instance fields
.field mConnector:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

.field mDeviceFinder:Lcom/sec/android/allshare/DeviceFinderImpl;

.field mServiceState:Lcom/sec/android/allshare/ServiceConnector$ServiceState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;)V
    .locals 2
    .parameter "ctx"
    .parameter "connector"

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-direct {p0}, Lcom/sec/android/allshare/ServiceProvider;-><init>()V

    .line 282
    sget-object v0, Lcom/sec/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    iput-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    .line 284
    iput-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mDeviceFinder:Lcom/sec/android/allshare/DeviceFinderImpl;

    .line 286
    iput-object v1, p0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    .line 289
    iput-object p2, p0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    .line 290
    new-instance v0, Lcom/sec/android/allshare/DeviceFinderImpl;

    invoke-direct {v0, p2}, Lcom/sec/android/allshare/DeviceFinderImpl;-><init>(Lcom/sec/android/allshare/IAllShareConnector;)V

    iput-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mDeviceFinder:Lcom/sec/android/allshare/DeviceFinderImpl;

    .line 291
    return-void
.end method


# virtual methods
.method public bridge synthetic getDeviceFinder()Lcom/sec/android/allshare/DeviceFinder;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->getDeviceFinder()Lcom/sec/android/allshare/DeviceFinderImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceFinder()Lcom/sec/android/allshare/DeviceFinderImpl;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mDeviceFinder:Lcom/sec/android/allshare/DeviceFinderImpl;

    return-object v0
.end method

.method public getServiceState()Lcom/sec/android/allshare/ServiceConnector$ServiceState;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/sec/android/allshare/ServiceConnector$ServiceState;

    return-object v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    if-nez v0, :cond_0

    .line 306
    const-string v0, "ServiceProviderImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, ""

    .line 311
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ServiceConnector$ServiceProviderImpl;->mConnector:Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ServiceConnector$AllShareConnector;->getServiceVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
