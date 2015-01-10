.class public Lcom/samsung/mms/location/LBSManager;
.super Ljava/lang/Object;
.source "LBSManager.java"


# static fields
.field private static final NBI_LANGUAGE:Ljava/lang/String; = "en-US"

.field public static final NBI_TOKEN:Ljava/lang/String; = "Lp6IlI7wtR73LiaiRM/peLWIzrdGD6xG7L/1PBcF"

.field private static mLocationProvider:Lcom/nbi/location/LocationProvider;

.field private static sInstance:Lcom/samsung/mms/location/LBSManager;

.field private static sNBIContext:Lcom/nbi/common/NBIContext;


# instance fields
.field private mContiniousLocationListener:Lcom/nbi/location/LocationListener;

.field private mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/nbi/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOneFixLocationListener:Lcom/nbi/location/LocationListener;

.field private mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/nbi/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private sCurrentBestLocation:Lcom/nbi/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    .line 21
    sput-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    .line 22
    sput-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v3, p0, Lcom/samsung/mms/location/LBSManager;->sCurrentBestLocation:Lcom/nbi/location/Location;

    .line 25
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 180
    new-instance v1, Lcom/samsung/mms/location/LBSManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/LBSManager$1;-><init>(Lcom/samsung/mms/location/LBSManager;)V

    iput-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationListener:Lcom/nbi/location/LocationListener;

    .line 217
    new-instance v1, Lcom/samsung/mms/location/LBSManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/LBSManager$2;-><init>(Lcom/samsung/mms/location/LBSManager;)V

    iput-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationListener:Lcom/nbi/location/LocationListener;

    .line 58
    invoke-static {}, Lcom/nbi/location/LocationConfig;->createLocationConfig()Lcom/nbi/location/LocationConfig;

    move-result-object v0

    .line 59
    .local v0, config:Lcom/nbi/location/LocationConfig;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nbi/location/LocationConfig;->setWarmUpFix(Z)V

    .line 61
    new-instance v1, Lcom/nbi/common/NBIContext;

    const-string v2, "Lp6IlI7wtR73LiaiRM/peLWIzrdGD6xG7L/1PBcF"

    invoke-direct {v1, p1, v2, v3}, Lcom/nbi/common/NBIContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    .line 62
    sget-object v1, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    invoke-static {v1, v0}, Lcom/nbi/location/LocationProvider;->getInstance(Lcom/nbi/common/NBIContext;Lcom/nbi/location/LocationConfig;)Lcom/nbi/location/LocationProvider;

    move-result-object v1

    sput-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/location/LBSManager;)Lcom/nbi/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->sCurrentBestLocation:Lcom/nbi/location/Location;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/mms/location/LBSManager;Lcom/nbi/location/Location;)Lcom/nbi/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/samsung/mms/location/LBSManager;->sCurrentBestLocation:Lcom/nbi/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/mms/location/LBSManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/mms/location/LBSManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public static destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    invoke-direct {v0}, Lcom/samsung/mms/location/LBSManager;->releaseLocationManager()V

    .line 72
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    invoke-direct {v0}, Lcom/samsung/mms/location/LBSManager;->releaseNBIContext()V

    .line 73
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    iput-object v1, v0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 74
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    iput-object v1, v0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 75
    sput-object v1, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    .line 77
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/mms/location/LBSManager;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    new-instance v0, Lcom/nbi/location/LocationException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nbi/location/LocationException;-><init>(I)V

    throw v0

    .line 47
    :cond_0
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/samsung/mms/location/LBSManager;

    monitor-enter v1

    .line 49
    :try_start_0
    new-instance v0, Lcom/samsung/mms/location/LBSManager;

    invoke-direct {v0, p0}, Lcom/samsung/mms/location/LBSManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sInstance:Lcom/samsung/mms/location/LBSManager;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static init(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    :try_start_0
    invoke-static {p0}, Lcom/samsung/mms/location/LBSManager;->getInstance(Landroid/content/Context;)Lcom/samsung/mms/location/LBSManager;
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/4 v1, 0x1

    .line 37
    :goto_0
    return v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private releaseLocationManager()V
    .locals 3

    .prologue
    .line 81
    sget-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    if-eqz v1, :cond_2

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 85
    const-string v1, "LBSManagerLog"

    const-string v2, "release location cancel one Fix"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v1, v2}, Lcom/nbi/location/LocationProvider;->cancelGetLocation(Lcom/nbi/location/LocationListener;)V

    .line 87
    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 91
    const-string v1, "LBSManagerLog"

    const-string v2, "release location stop reciving Fixes"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v2, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v1, v2}, Lcom/nbi/location/LocationProvider;->stopReceivingFixes(Lcom/nbi/location/LocationListener;)V

    .line 93
    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 95
    :cond_1
    sget-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    invoke-virtual {v1}, Lcom/nbi/location/LocationProvider;->onDestroy()V
    :try_end_0
    .catch Lcom/nbi/location/LocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_2
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    .line 102
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Lcom/nbi/location/LocationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private releaseNBIContext()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->destroy()V

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelGetLocation(Lcom/nbi/location/LocationListener;)V
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v0, "LBSManagerLog"

    const-string v1, "Cancel One Fix Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/nbi/location/LocationProvider;->cancelGetLocation(Lcom/nbi/location/LocationListener;)V

    .line 147
    :cond_0
    return-void
.end method

.method public getCurrentBestLocation()Lcom/nbi/location/Location;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->sCurrentBestLocation:Lcom/nbi/location/Location;

    return-object v0
.end method

.method public getLocationManager()Lcom/nbi/location/LocationProvider;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    return-object v0
.end method

.method public getNBIContext()Lcom/nbi/common/NBIContext;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->sNBIContext:Lcom/nbi/common/NBIContext;

    return-object v0
.end method

.method public getOneFix(Lcom/nbi/location/LocationListener;I)V
    .locals 2
    .parameter "listener"
    .parameter "providerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v0, "LBSManagerLog"

    const-string v1, "Get One Fix Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/nbi/location/LocationException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nbi/location/LocationException;-><init>(I)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mOneFixLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v0, v1, p2}, Lcom/nbi/location/LocationProvider;->getOneFix(Lcom/nbi/location/LocationListener;I)V

    .line 137
    return-void
.end method

.method public startReceivingFixes(Lcom/nbi/location/LocationListener;)V
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    .line 161
    const-string v0, "LBSManagerLog"

    const-string v1, "Start Receiving Fixes"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/nbi/location/LocationException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nbi/location/LocationException;-><init>(I)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/nbi/location/LocationProvider;->startReceivingFixes(Lcom/nbi/location/LocationListener;)V

    .line 168
    return-void
.end method

.method public stopReceivingFixes(Lcom/nbi/location/LocationListener;)V
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nbi/location/LocationException;
        }
    .end annotation

    .prologue
    .line 151
    const-string v0, "LBSManagerLog"

    const-string v1, "Stop Receiving Fixes"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/samsung/mms/location/LBSManager;->mLocationProvider:Lcom/nbi/location/LocationProvider;

    iget-object v1, p0, Lcom/samsung/mms/location/LBSManager;->mContiniousLocationListener:Lcom/nbi/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/nbi/location/LocationProvider;->stopReceivingFixes(Lcom/nbi/location/LocationListener;)V

    .line 157
    :cond_0
    return-void
.end method
