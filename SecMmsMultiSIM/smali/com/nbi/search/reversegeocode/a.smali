.class final Lcom/nbi/search/reversegeocode/a;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/eh;


# direct methods
.method constructor <init>(Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;Lcom/nbi/search/reversegeocode/ReverseGeocodeListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ex;Lnbisdk/gk;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/search/reversegeocode/ReverseGeocodeListener;

    new-instance v2, Lcom/nbi/search/reversegeocode/b;

    invoke-direct {v2, p1}, Lcom/nbi/search/reversegeocode/b;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/search/reversegeocode/ReverseGeocodeListener;->onReverseGeocode(Lcom/nbi/search/reversegeocode/ReverseGeocodeInformation;Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;)V

    return-void
.end method
