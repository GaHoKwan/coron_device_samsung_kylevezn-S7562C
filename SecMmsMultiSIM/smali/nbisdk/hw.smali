.class public final Lnbisdk/hw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;
.implements Lnbisdk/wt;


# static fields
.field private static mu:Lnbisdk/hw;


# instance fields
.field private mA:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mB:Landroid/location/GpsStatus$Listener;

.field private mContext:Landroid/content/Context;

.field mv:Landroid/location/LocationManager;

.field mw:Landroid/location/GpsStatus;

.field private mx:Ljava/util/concurrent/atomic/AtomicLong;

.field private my:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mz:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/hw;->mu:Lnbisdk/hw;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    iput-object v0, p0, Lnbisdk/hw;->mw:Landroid/location/GpsStatus;

    iput-object v0, p0, Lnbisdk/hw;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lnbisdk/hw;->mx:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lnbisdk/hw;->my:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lnbisdk/hw;->mz:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lnbisdk/hw;->mA:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lnbisdk/ka;

    invoke-direct {v0, p0}, Lnbisdk/ka;-><init>(Lnbisdk/hw;)V

    iput-object v0, p0, Lnbisdk/hw;->mB:Landroid/location/GpsStatus$Listener;

    iput-object p1, p0, Lnbisdk/hw;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lnbisdk/hw;->mx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lnbisdk/hw;->my:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lnbisdk/hw;->mz:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lnbisdk/hw;->mA:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-direct {p0}, Lnbisdk/hw;->hz()V

    return-void
.end method

.method static synthetic a(Lnbisdk/hw;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lnbisdk/hw;->mA:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lnbisdk/hw;
    .locals 1

    sget-object v0, Lnbisdk/hw;->mu:Lnbisdk/hw;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnbisdk/hw;

    invoke-direct {v0, p0}, Lnbisdk/hw;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnbisdk/hw;->mu:Lnbisdk/hw;

    invoke-direct {v0}, Lnbisdk/hw;->hz()V

    :cond_1
    sget-object v0, Lnbisdk/hw;->mu:Lnbisdk/hw;

    goto :goto_0
.end method

.method private hz()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/hw;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/hw;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    iget-object v0, p0, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnbisdk/hw;->mz:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    iget-object v1, p0, Lnbisdk/hw;->mB:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/hw;->mz:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method private stopLocationFix()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/ck;->dN()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final c(Lnbisdk/nb;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hw;->mx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final destroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lnbisdk/hw;->stopLocationFix()Z

    iget-object v0, p0, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    iget-object v1, p0, Lnbisdk/hw;->mB:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_0
    iput-object v2, p0, Lnbisdk/hw;->mv:Landroid/location/LocationManager;

    sput-object v2, Lnbisdk/hw;->mu:Lnbisdk/hw;

    return-void
.end method

.method public final getGpsStatus()I
    .locals 1

    iget-object v0, p0, Lnbisdk/hw;->my:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getMaxSatellites()I
    .locals 1

    iget-object v0, p0, Lnbisdk/hw;->mA:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getTimeSinceLastFix()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/hw;->mx:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final isEnabled()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/hw;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/hw;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final isGpsWarm()Z
    .locals 2

    iget-object v0, p0, Lnbisdk/hw;->mw:Landroid/location/GpsStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/hw;->mw:Landroid/location/GpsStatus;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v0

    const/16 v1, 0x1f40

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/hw;->stopLocationFix()Z

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    const-string v0, "gps"

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lnbisdk/hw;->stopLocationFix()Z

    iget-object v0, p0, Lnbisdk/hw;->mz:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    const-string v0, "gps"

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/hw;->mz:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lnbisdk/hw;->hz()V

    :cond_0
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "gps"

    if-ne p1, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnbisdk/hw;->my:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lnbisdk/hw;->mA:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-direct {p0}, Lnbisdk/hw;->stopLocationFix()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnbisdk/hw;->my:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lnbisdk/hw;->mA:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-direct {p0}, Lnbisdk/hw;->stopLocationFix()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
