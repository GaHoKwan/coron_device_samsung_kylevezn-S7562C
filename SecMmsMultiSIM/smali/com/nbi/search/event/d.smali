.class final Lcom/nbi/search/event/d;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/ei;


# direct methods
.method public constructor <init>(Lcom/nbi/search/event/VenueSearchRequest;Lcom/nbi/search/event/VenueSearchListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/vq;Lnbisdk/mr;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/search/event/VenueSearchListener;

    new-instance v2, Lcom/nbi/search/event/h;

    invoke-direct {v2, p1}, Lcom/nbi/search/event/h;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/search/event/VenueSearchRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/search/event/VenueSearchListener;->onVenueSearch(Lcom/nbi/search/event/VenueSearchInformation;Lcom/nbi/search/event/VenueSearchRequest;)V

    return-void
.end method
