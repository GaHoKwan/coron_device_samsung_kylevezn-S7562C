.class final Lcom/nbi/map/search/poi/b;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/dt;


# direct methods
.method public constructor <init>(Lcom/nbi/map/search/poi/POISearchRequest;Lcom/nbi/map/search/poi/POISearchListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/zn;Lnbisdk/uj;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/map/search/poi/POISearchListener;

    new-instance v2, Lcom/nbi/map/search/poi/a;

    invoke-direct {v2, p1}, Lcom/nbi/map/search/poi/a;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/map/search/poi/POISearchRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/map/search/poi/POISearchListener;->onLocalSearch(Lcom/nbi/map/search/poi/POISearchInformation;Lcom/nbi/map/search/poi/POISearchRequest;)V

    return-void
.end method
