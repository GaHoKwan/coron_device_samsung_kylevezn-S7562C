.class Lcom/nbi/map/geocode/a;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/eh;
.implements Lnbisdk/rl;


# direct methods
.method public constructor <init>(Lcom/nbi/map/geocode/GeocodeRequest;Lcom/nbi/map/geocode/GeocodeListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method

.method constructor <init>(Lcom/nbi/map/geocode/ReverseGeocodeRequest;Lcom/nbi/map/geocode/ReverseGeocodeListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public a(Lnbisdk/ex;Lnbisdk/gk;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/map/geocode/ReverseGeocodeListener;

    new-instance v2, Lcom/nbi/map/geocode/c;

    invoke-direct {v2, p1}, Lcom/nbi/map/geocode/c;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/map/geocode/ReverseGeocodeListener;->onReverseGeocode(Lcom/nbi/map/geocode/ReverseGeocodeInformation;Lcom/nbi/map/geocode/ReverseGeocodeRequest;)V

    return-void
.end method

.method public final a(Lnbisdk/gc;Lnbisdk/um;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v0, Lcom/nbi/map/geocode/GeocodeRequest;

    new-instance v2, Lcom/nbi/map/geocode/b;

    invoke-direct {v2, p1}, Lcom/nbi/map/geocode/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/nbi/map/geocode/GeocodeRequest;->getJccLocation()Lnbisdk/lc;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nbi/map/geocode/b;->a(Lnbisdk/lc;)V

    iget-object v1, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v1, Lcom/nbi/map/geocode/GeocodeListener;

    invoke-interface {v1, v2, v0}, Lcom/nbi/map/geocode/GeocodeListener;->onGeocode(Lcom/nbi/map/geocode/GeocodeInformation;Lcom/nbi/map/geocode/GeocodeRequest;)V

    return-void
.end method
