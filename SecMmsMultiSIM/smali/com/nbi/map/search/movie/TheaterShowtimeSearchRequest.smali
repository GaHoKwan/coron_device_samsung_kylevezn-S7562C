.class public Lcom/nbi/map/search/movie/TheaterShowtimeSearchRequest;
.super Lcom/nbi/map/search/SearchRequest;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private ee:Lnbisdk/ah;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/search/movie/TheaterSearchInformation;ILcom/nbi/map/search/movie/TheaterSearchRequest;ILcom/nbi/map/search/movie/TheaterShowtimeSearchListener;)V
    .locals 4

    const/16 v1, 0x14

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-lt p5, v2, :cond_2

    if-gt p5, v1, :cond_2

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    if-eqz p4, :cond_2

    invoke-interface {p2}, Lcom/nbi/map/search/movie/TheaterSearchInformation;->getResultCount()I

    move-result v0

    invoke-static {v0, p3}, Lnbisdk/x;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/nbi/map/search/movie/TheaterSearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->aO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/rz;

    invoke-interface {p2, p3}, Lcom/nbi/map/search/movie/TheaterSearchInformation;->getPOI(I)Lcom/nbi/map/data/EventPOI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/EventPOI;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/uz;

    invoke-virtual {v1}, Lnbisdk/uz;->dY()Lnbisdk/gw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lo;->e(Lnbisdk/gw;)V

    if-ne p5, v2, :cond_0

    const/16 p5, 0xa

    :cond_0
    invoke-virtual {v0, p5}, Lnbisdk/dg;->H(I)V

    new-instance v1, Lcom/nbi/map/search/movie/d;

    invoke-direct {v1, p0, p6}, Lcom/nbi/map/search/movie/d;-><init>(Lcom/nbi/map/search/movie/TheaterShowtimeSearchRequest;Lcom/nbi/map/search/movie/TheaterShowtimeSearchListener;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v2

    new-instance v3, Lnbisdk/kx;

    invoke-direct {v3, v1}, Lnbisdk/kx;-><init>(Lnbisdk/ei;)V

    invoke-static {v3, v2}, Lnbisdk/bj;->a(Lnbisdk/gn;Lcom/navbuilder/nb/e;)Lnbisdk/mr;

    move-result-object v1

    new-instance v2, Lnbisdk/ah;

    invoke-direct {v2, v1, v0}, Lnbisdk/ah;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/nbi/map/search/movie/TheaterShowtimeSearchRequest;->ee:Lnbisdk/ah;

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-lt p5, v2, :cond_5

    if-gt p5, v1, :cond_5

    if-nez p5, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez p6, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez p4, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-interface {p2}, Lcom/nbi/map/search/movie/TheaterSearchInformation;->getResultCount()I

    move-result v0

    invoke-static {v0, p3}, Lnbisdk/x;->a(II)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "theaterIndex is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/movie/TheaterShowtimeSearchRequest;->ee:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/movie/TheaterShowtimeSearchRequest;->ee:Lnbisdk/ah;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/movie/TheaterShowtimeSearchRequest;->ee:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/search/movie/TheaterShowtimeSearchRequest;->ee:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->aN()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/mr;

    iget-object v1, p0, Lcom/nbi/map/search/movie/TheaterShowtimeSearchRequest;->ee:Lnbisdk/ah;

    invoke-virtual {v1}, Lnbisdk/ah;->aO()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/rz;

    invoke-virtual {v0, v1}, Lnbisdk/mr;->a(Lnbisdk/lo;)V

    return-void
.end method
