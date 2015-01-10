.class public final Lnbisdk/jo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field mv:Landroid/location/LocationManager;

.field private oC:Lnbisdk/ds;


# direct methods
.method public constructor <init>(Lnbisdk/ds;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    iput-object v0, p0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

    iput-object v0, p0, Lnbisdk/jo;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lnbisdk/jo;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    invoke-direct {p0}, Lnbisdk/jo;->iI()Z

    goto :goto_0
.end method

.method private iI()Z
    .locals 4

    const/16 v3, 0x2349

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/jo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/jo;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

    iget-object v0, p0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    invoke-interface {v0, v3}, Lnbisdk/ds;->onLocationError(I)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    invoke-interface {v0, v3}, Lnbisdk/ds;->onLocationError(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 6

    iget-object v0, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lnbisdk/nb;

    invoke-direct {v1}, Lnbisdk/nb;-><init>()V

    if-eqz p1, :cond_2

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    invoke-interface {v0, v1}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnbisdk/nb;->setLatitude(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnbisdk/nb;->setLongitude(D)V

    const/4 v0, 0x3

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lnbisdk/nb;->setAccuracy(I)V

    const/16 v0, 0x83

    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lnbisdk/nb;->setAltitude(D)V

    or-int/lit8 v0, v0, 0x4

    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/high16 v3, 0x40b0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-int v2, v2

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lnbisdk/nb;->setHeading(D)V

    or-int/lit8 v0, v0, 0x8

    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lnbisdk/nb;->setHorizontalVelocity(D)V

    or-int/lit8 v0, v0, 0x10

    :cond_7
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x12d53d80

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lnbisdk/nb;->setGpsTime(J)V

    or-int/lit8 v0, v0, 0x20

    :cond_8
    iget-object v2, p0, Lnbisdk/jo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lnbisdk/hw;->e(Landroid/content/Context;)Lnbisdk/hw;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lnbisdk/wt;->getMaxSatellites()I

    move-result v2

    invoke-virtual {v1, v2}, Lnbisdk/nb;->setNumberOfSatellites(I)V

    or-int/lit8 v0, v0, 0x40

    :cond_9
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnbisdk/nb;->setLocationType(I)V

    invoke-virtual {v1, v0}, Lnbisdk/nb;->setValid(I)V

    goto/16 :goto_1
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/jo;->stopLocationFix()Z

    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnbisdk/jo;->iI()Z

    :cond_0
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final requestLocationFix()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    if-nez v0, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/jo;->oC:Lnbisdk/ds;

    const/16 v1, 0x2349

    invoke-interface {v0, v1}, Lnbisdk/ds;->onLocationError(I)V

    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lnbisdk/ck;->dM()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0
.end method

.method public final stopLocationFix()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/jo;->mv:Landroid/location/LocationManager;

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
