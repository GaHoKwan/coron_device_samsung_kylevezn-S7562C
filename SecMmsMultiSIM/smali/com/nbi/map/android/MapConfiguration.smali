.class public Lcom/nbi/map/android/MapConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private gy:Lcom/nbi/map/data/Place;

.field private jC:Lcom/nbi/map/data/Coordinates;

.field private jE:I

.field private jF:I

.field private jG:I

.field private jH:I

.field private jI:Z

.field private jJ:Z

.field private jK:Z

.field private jL:Z

.field private jM:Lcom/nbi/common/NBIContext;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v1

    iput-object p1, p0, Lcom/nbi/map/android/MapConfiguration;->jM:Lcom/nbi/common/NBIContext;

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v1, v0}, Lnbisdk/cy;->a(Lnbisdk/bt;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/nbi/map/android/MapConfiguration;->jE:I

    iput v3, p0, Lcom/nbi/map/android/MapConfiguration;->jF:I

    invoke-virtual {v1}, Lnbisdk/cy;->dJ()I

    move-result v0

    iput v0, p0, Lcom/nbi/map/android/MapConfiguration;->jG:I

    invoke-virtual {v1}, Lnbisdk/cy;->dK()I

    move-result v0

    iput v0, p0, Lcom/nbi/map/android/MapConfiguration;->jH:I

    iput-boolean v2, p0, Lcom/nbi/map/android/MapConfiguration;->jI:Z

    iput-boolean v2, p0, Lcom/nbi/map/android/MapConfiguration;->jJ:Z

    iput-boolean v3, p0, Lcom/nbi/map/android/MapConfiguration;->jK:Z

    iput-boolean v2, p0, Lcom/nbi/map/android/MapConfiguration;->jL:Z

    return-void
.end method

.method public static defaultConfigurationFromLocation(Lcom/nbi/common/NBIContext;Lcom/nbi/location/Location;)Lcom/nbi/map/android/MapConfiguration;
    .locals 5

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/nbi/map/android/MapConfiguration;

    invoke-direct {v0, p0}, Lcom/nbi/map/android/MapConfiguration;-><init>(Lcom/nbi/common/NBIContext;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nbi/map/android/MapConfiguration;->setCenter(DD)V

    goto :goto_0
.end method

.method public static defaultConfigurationFromPlace(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/Place;)Lcom/nbi/map/android/MapConfiguration;
    .locals 6

    const-wide v0, -0x3f70c80000000000L

    new-instance v4, Lcom/nbi/map/android/MapConfiguration;

    invoke-direct {v4, p0}, Lcom/nbi/map/android/MapConfiguration;-><init>(Lcom/nbi/common/NBIContext;)V

    if-eqz p1, :cond_0

    invoke-virtual {v4, p1}, Lcom/nbi/map/android/MapConfiguration;->setPlace(Lcom/nbi/map/data/Place;)V

    invoke-virtual {p1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v5}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v0

    :goto_0
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/nbi/map/android/MapConfiguration;->setCenter(DD)V

    :cond_0
    return-object v4

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method


# virtual methods
.method public getCenter()Lcom/nbi/map/data/Coordinates;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapConfiguration;->jC:Lcom/nbi/map/data/Coordinates;

    return-object v0
.end method

.method public getForce256Enabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/MapConfiguration;->jL:Z

    return v0
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/MapConfiguration;->jH:I

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/MapConfiguration;->jG:I

    return v0
.end method

.method public getNBIContext()Lcom/nbi/common/NBIContext;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapConfiguration;->jM:Lcom/nbi/common/NBIContext;

    return-object v0
.end method

.method public getPlace()Lcom/nbi/map/data/Place;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapConfiguration;->gy:Lcom/nbi/map/data/Place;

    return-object v0
.end method

.method public getTrafficButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/MapConfiguration;->jJ:Z

    return v0
.end method

.method public getUncertaintyRadiusEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/MapConfiguration;->jK:Z

    return v0
.end method

.method public getViewType()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/MapConfiguration;->jF:I

    return v0
.end method

.method public getZoom()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/android/MapConfiguration;->jE:I

    return v0
.end method

.method public getZoomButtons()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/MapConfiguration;->jI:Z

    return v0
.end method

.method public setCenter(DD)V
    .locals 1

    new-instance v0, Lcom/nbi/map/data/Coordinates;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcom/nbi/map/android/MapConfiguration;->setCenter(Lcom/nbi/map/data/Coordinates;)V

    return-void
.end method

.method public setCenter(Lcom/nbi/map/data/Coordinates;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/MapConfiguration;->jC:Lcom/nbi/map/data/Coordinates;

    return-void
.end method

.method public setForce256(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/map/android/MapConfiguration;->jL:Z

    return-void
.end method

.method public setPlace(Lcom/nbi/map/data/Place;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/MapConfiguration;->gy:Lcom/nbi/map/data/Place;

    return-void
.end method

.method public setShowUncertaintyRadius(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/map/android/MapConfiguration;->jK:Z

    return-void
.end method

.method public setTrafficButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/map/android/MapConfiguration;->jJ:Z

    return-void
.end method

.method public setViewType(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/android/MapConfiguration;->jF:I

    return-void
.end method

.method public setZoom(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getMaximumZoomLevel()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getMaximumZoomLevel()I

    move-result p1

    :cond_0
    :goto_0
    iput p1, p0, Lcom/nbi/map/android/MapConfiguration;->jE:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getMinimumZoomLevel()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getMinimumZoomLevel()I

    move-result p1

    goto :goto_0
.end method

.method public setZoomButtons(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nbi/map/android/MapConfiguration;->jI:Z

    return-void
.end method
