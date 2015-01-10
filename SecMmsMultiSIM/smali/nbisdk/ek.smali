.class final Lnbisdk/ek;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/map/route/RouteInformation;


# instance fields
.field private hv:Lnbisdk/hg;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/hg;

    iput-object p1, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    return-void
.end method


# virtual methods
.method public final getBoundingBox()Lcom/nbi/map/data/BoundingBox;
    .locals 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v12, 0x4024

    iget-object v0, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v0}, Lnbisdk/hg;->hu()[Lnbisdk/cl;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v0}, Lnbisdk/hg;->hu()[Lnbisdk/cl;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-interface {v0}, Lnbisdk/cl;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v2}, Lnbisdk/hg;->hu()[Lnbisdk/cl;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-interface {v2}, Lnbisdk/cl;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v2}, Lnbisdk/hg;->hu()[Lnbisdk/cl;

    move-result-object v2

    aget-object v2, v2, v8

    invoke-interface {v2}, Lnbisdk/cl;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v4}, Lnbisdk/hg;->hu()[Lnbisdk/cl;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-interface {v4}, Lnbisdk/cl;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-object v4, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v4}, Lnbisdk/hg;->hu()[Lnbisdk/cl;

    move-result-object v4

    aget-object v4, v4, v8

    invoke-interface {v4}, Lnbisdk/cl;->getLongitude()D

    move-result-wide v4

    iget-object v6, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v6}, Lnbisdk/hg;->hu()[Lnbisdk/cl;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-interface {v6}, Lnbisdk/cl;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iget-object v6, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v6}, Lnbisdk/hg;->hu()[Lnbisdk/cl;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-interface {v6}, Lnbisdk/cl;->getLongitude()D

    move-result-wide v6

    iget-object v8, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v8}, Lnbisdk/hg;->hu()[Lnbisdk/cl;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-interface {v8}, Lnbisdk/cl;->getLongitude()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    sub-double v8, v6, v4

    div-double v10, v8, v12

    sub-double/2addr v4, v10

    div-double/2addr v8, v12

    add-double/2addr v6, v8

    sub-double v8, v2, v0

    div-double v10, v8, v12

    sub-double v10, v0, v10

    div-double v0, v8, v12

    add-double v1, v2, v0

    new-instance v0, Lcom/nbi/map/data/BoundingBox;

    new-instance v3, Lcom/nbi/map/data/Coordinates;

    invoke-direct {v3, v10, v11, v4, v5}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    new-instance v4, Lcom/nbi/map/data/Coordinates;

    invoke-direct {v4, v1, v2, v6, v7}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    invoke-direct {v0, v3, v4}, Lcom/nbi/map/data/BoundingBox;-><init>(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDelay()D
    .locals 2

    iget-object v0, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnbisdk/hg;->at(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDestination()Lcom/nbi/map/data/Place;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/Place;

    iget-object v1, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v1}, Lnbisdk/hg;->j()Lnbisdk/de;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getDistance()D
    .locals 2

    iget-object v0, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v0}, Lnbisdk/hg;->getTotalDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    return-object v0
.end method

.method public final getManeuverList()Lcom/nbi/map/data/ManeuverList;
    .locals 7

    iget-object v0, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v3, v0}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/nbi/map/data/Maneuver;

    new-instance v5, Lnbisdk/xt;

    iget-object v6, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-direct {v5, v3, v6}, Lnbisdk/xt;-><init>(Lnbisdk/pn;Lnbisdk/hg;)V

    invoke-direct {v4, v0, v5}, Lcom/nbi/map/data/Maneuver;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/nbi/map/data/ManeuverList;

    iget-object v1, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v1}, Lnbisdk/hg;->getRouteID()[B

    move-result-object v1

    invoke-direct {v0, v2, v1, p0}, Lcom/nbi/map/data/ManeuverList;-><init>(Ljava/util/Vector;[BLcom/nbi/map/route/RouteInformation;)V

    return-object v0
.end method

.method public final getOrigin()Lcom/nbi/map/data/Place;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/Place;

    iget-object v1, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v1}, Lnbisdk/hg;->k()Lnbisdk/de;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getRouteError()S
    .locals 1

    iget-object v0, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v0}, Lnbisdk/hg;->getRouteError()S

    move-result v0

    return v0
.end method

.method public final getRouteID()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    invoke-interface {v0}, Lnbisdk/hg;->getRouteID()[B

    move-result-object v0

    return-object v0
.end method

.method public final getTime()D
    .locals 2

    iget-object v0, p0, Lnbisdk/ek;->hv:Lnbisdk/hg;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnbisdk/hg;->au(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public final hasMoreResults()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
