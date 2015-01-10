.class public interface abstract Lcom/nbi/map/route/RouteInformation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIInformation;


# virtual methods
.method public abstract getBoundingBox()Lcom/nbi/map/data/BoundingBox;
.end method

.method public abstract getDelay()D
.end method

.method public abstract getDestination()Lcom/nbi/map/data/Place;
.end method

.method public abstract getDistance()D
.end method

.method public abstract getManeuverList()Lcom/nbi/map/data/ManeuverList;
.end method

.method public abstract getOrigin()Lcom/nbi/map/data/Place;
.end method

.method public abstract getRouteError()S
.end method

.method public abstract getRouteID()[B
.end method

.method public abstract getTime()D
.end method
