.class public Lcom/nbi/map/data/MapLocation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# static fields
.field public static final ADDRESS:I = 0x1

.field public static final AIRPORT:I = 0x3

.field public static final FREE_FORM:I = 0x9

.field public static final INTERSECTION:I = 0x2

.field public static final IN_MY_DIRECTION:I = 0x8

.field public static final LAT_LON:I = 0x4

.field public static final MY_GPS:I = 0x5

.field public static final NONE:I


# instance fields
.field private vF:Lnbisdk/lc;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lnbisdk/lc;

    invoke-direct {v0}, Lnbisdk/lc;-><init>()V

    invoke-direct {p0, v0}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lnbisdk/lc;

    if-eqz v0, :cond_0

    check-cast p1, Lnbisdk/lc;

    iput-object p1, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method is for INTERNAL usage ONLY!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lnbisdk/lc;

    invoke-direct {v0, p1}, Lnbisdk/lc;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnbisdk/lc;

    invoke-direct {v0, p1, p2}, Lnbisdk/lc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lnbisdk/lc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lnbisdk/lc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Lnbisdk/lc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lnbisdk/lc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized copy()Lcom/nbi/map/data/MapLocation;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/nbi/map/data/MapLocation;

    iget-object v1, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v1}, Lnbisdk/lc;->jd()Lnbisdk/lc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/MapLocation;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/nbi/map/data/MapLocation;

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {p1}, Lcom/nbi/map/data/MapLocation;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAirport()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCounty()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getCounty()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrossStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getCrossStreet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeform()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getFreeform()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->getType()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method public setAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lnbisdk/lc;->setAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 13

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lnbisdk/lc;->setAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V

    return-void
.end method

.method public setAirport(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setAirport(Ljava/lang/String;)V

    return-void
.end method

.method public setAirport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1, p2}, Lnbisdk/lc;->setAirport(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAirport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 10

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lnbisdk/lc;->setAirport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V

    return-void
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setAreaName(Ljava/lang/String;)V

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setCity(Ljava/lang/String;)V

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setCountry(Ljava/lang/String;)V

    return-void
.end method

.method public setCounty(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setCounty(Ljava/lang/String;)V

    return-void
.end method

.method public setCrossStreet(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setCrossStreet(Ljava/lang/String;)V

    return-void
.end method

.method public setFreeform(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setFreeform(Ljava/lang/String;)V

    return-void
.end method

.method public setIntersection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lnbisdk/lc;->setIntersection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIntersection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 12

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lnbisdk/lc;->setIntersection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V

    return-void
.end method

.method public setLatLon(DD)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/lc;->setLatLon(DD)V

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1, p2}, Lnbisdk/lc;->setLatitude(D)V

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1, p2}, Lnbisdk/lc;->setLongitude(D)V

    return-void
.end method

.method public setMyGPS()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->setMyGPS()V

    return-void
.end method

.method public setPostal(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setPostal(Ljava/lang/String;)V

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setState(Ljava/lang/String;)V

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setStreet(Ljava/lang/String;)V

    return-void
.end method

.method public setTx(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setTx(I)V

    return-void
.end method

.method public setTy(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setTy(I)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setType(I)V

    return-void
.end method

.method public setTz(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1}, Lnbisdk/lc;->setTz(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0}, Lnbisdk/lc;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLatLon(DD)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/MapLocation;->vF:Lnbisdk/lc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/lc;->updateLatLon(DD)V

    return-void
.end method
