.class public Lcom/nbi/map/data/ManeuverList;
.super Ljava/lang/Object;


# instance fields
.field private FI:[B

.field private FJ:Ljava/util/Vector;

.field private FK:Lcom/nbi/map/route/RouteInformation;


# direct methods
.method public constructor <init>(Ljava/util/Vector;[BLcom/nbi/map/route/RouteInformation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maneuvers is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/nbi/map/data/ManeuverList;->FI:[B

    iput-object p1, p0, Lcom/nbi/map/data/ManeuverList;->FJ:Ljava/util/Vector;

    iput-object p3, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    return-void
.end method


# virtual methods
.method public getDestination()Lcom/nbi/map/data/Place;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    invoke-interface {v0}, Lcom/nbi/map/route/RouteInformation;->getDestination()Lcom/nbi/map/data/Place;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManeuver(I)Lcom/nbi/map/data/Maneuver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FJ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "maneuver index is out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FJ:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/map/data/Maneuver;

    return-object v0
.end method

.method public getNumberOfManeuvers()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FJ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getOrigin()Lcom/nbi/map/data/Place;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    invoke-interface {v0}, Lcom/nbi/map/route/RouteInformation;->getOrigin()Lcom/nbi/map/data/Place;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRouteID()[B
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FI:[B

    return-object v0
.end method

.method public getTotalDelay()D
    .locals 7

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    invoke-interface {v0}, Lcom/nbi/map/route/RouteInformation;->getDelay()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/nbi/map/data/ManeuverList;->getNumberOfManeuvers()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FJ:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/map/data/Maneuver;

    invoke-virtual {v0}, Lcom/nbi/map/data/Maneuver;->getTrafficDelay()D

    move-result-wide v5

    add-double/2addr v1, v5

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move-wide v0, v1

    goto :goto_0
.end method

.method public getTotalDistance()D
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    invoke-interface {v0}, Lcom/nbi/map/route/RouteInformation;->getDistance()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getTotalTripTime()D
    .locals 7

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    invoke-interface {v0}, Lcom/nbi/map/route/RouteInformation;->getTime()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/nbi/map/data/ManeuverList;->getNumberOfManeuvers()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FJ:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/map/data/Maneuver;

    invoke-virtual {v0}, Lcom/nbi/map/data/Maneuver;->getTime()D

    move-result-wide v5

    add-double/2addr v1, v5

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move-wide v0, v1

    goto :goto_0
.end method

.method public routeBoundingBox()Lcom/nbi/map/data/BoundingBox;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/data/ManeuverList;->FK:Lcom/nbi/map/route/RouteInformation;

    invoke-interface {v0}, Lcom/nbi/map/route/RouteInformation;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
