.class final Lcom/nbi/map/search/movie/b;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/ei;


# direct methods
.method public constructor <init>(Lcom/nbi/map/search/movie/TheaterSearchRequest;Lcom/nbi/map/search/movie/TheaterSearchListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/vq;Lnbisdk/mr;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/map/search/movie/TheaterSearchListener;

    new-instance v2, Lcom/nbi/map/search/movie/a;

    invoke-direct {v2, p1}, Lcom/nbi/map/search/movie/a;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/map/search/movie/TheaterSearchRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/map/search/movie/TheaterSearchListener;->onTheaterSearch(Lcom/nbi/map/search/movie/TheaterSearchInformation;Lcom/nbi/map/search/movie/TheaterSearchRequest;)V

    return-void
.end method
