.class public Lcom/nbi/search/movie/MovieShowtimeSearchRequest;
.super Lcom/nbi/search/SearchRequest;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private gr:Lnbisdk/rd;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/search/movie/MovieSearchInformation;Lcom/nbi/search/movie/MovieSearchRequest;IILcom/nbi/search/movie/MovieShowtimeSearchListener;)V
    .locals 3

    const/16 v2, 0x14

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/nbi/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-lt p5, v1, :cond_2

    if-gt p5, v2, :cond_2

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    if-eqz p3, :cond_2

    invoke-interface {p2}, Lcom/nbi/search/movie/MovieSearchInformation;->getResultCount()I

    move-result v0

    invoke-static {v0, p4}, Lnbisdk/lv;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/nbi/search/movie/MovieSearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->aO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/nc;

    if-ne p5, v1, :cond_0

    const/16 p5, 0xa

    :cond_0
    invoke-virtual {v0, p5}, Lnbisdk/dg;->H(I)V

    invoke-interface {p2, p4}, Lcom/nbi/search/movie/MovieSearchInformation;->getEventContent(I)Lcom/nbi/map/data/EventContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/EventContent;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/je;

    invoke-virtual {v1}, Lnbisdk/je;->dY()Lnbisdk/gw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/lo;->e(Lnbisdk/gw;)V

    invoke-direct {p0, p1, p6, v0}, Lcom/nbi/search/movie/MovieShowtimeSearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/search/movie/MovieShowtimeSearchListener;Lnbisdk/nc;)V

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
    if-lt p5, v1, :cond_5

    if-gt p5, v2, :cond_5

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
    if-nez p3, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-interface {p2}, Lcom/nbi/search/movie/MovieSearchInformation;->getResultCount()I

    move-result v0

    invoke-static {v0, p4}, Lnbisdk/lv;->a(II)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "movieIndex is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/search/movie/MovieShowtimeSearchRequest;Lcom/nbi/search/movie/MovieShowtimeSearchInformation;BLcom/nbi/search/movie/MovieShowtimeSearchListener;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/nbi/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p5, :cond_2

    if-eq p4, v0, :cond_0

    if-ne p4, v1, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/nbi/search/movie/MovieShowtimeSearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/rd;

    iput-object v0, p0, Lcom/nbi/search/movie/MovieShowtimeSearchRequest;->gr:Lnbisdk/rd;

    iget-object v0, p0, Lcom/nbi/search/movie/MovieShowtimeSearchRequest;->gr:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->aO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/nc;

    invoke-interface {p3}, Lcom/nbi/search/movie/MovieShowtimeSearchInformation;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/kq;

    invoke-virtual {v0, p4, v1}, Lnbisdk/dg;->a(BLnbisdk/kq;)V

    invoke-direct {p0, p1, p5, v0}, Lcom/nbi/search/movie/MovieShowtimeSearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/search/movie/MovieShowtimeSearchListener;Lnbisdk/nc;)V

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

    const-string v1, "request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p3, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p5, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eq p4, v0, :cond_1

    if-eq p4, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid iteratorCommand"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/nbi/common/NBIContext;Lcom/nbi/search/movie/MovieShowtimeSearchListener;Lnbisdk/nc;)V
    .locals 3

    new-instance v0, Lcom/nbi/search/movie/a;

    invoke-direct {v0, p0, p2}, Lcom/nbi/search/movie/a;-><init>(Lcom/nbi/search/movie/MovieShowtimeSearchRequest;Lcom/nbi/search/movie/MovieShowtimeSearchListener;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v1

    new-instance v2, Lnbisdk/to;

    invoke-direct {v2, v0}, Lnbisdk/to;-><init>(Lnbisdk/ei;)V

    invoke-static {v2, v1}, Lnbisdk/bj;->a(Lnbisdk/gn;Lcom/navbuilder/nb/e;)Lnbisdk/mr;

    move-result-object v0

    new-instance v1, Lnbisdk/rd;

    invoke-direct {v1, v0, p3}, Lnbisdk/rd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nbi/search/movie/MovieShowtimeSearchRequest;->gr:Lnbisdk/rd;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/movie/MovieShowtimeSearchRequest;->gr:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/movie/MovieShowtimeSearchRequest;->gr:Lnbisdk/rd;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/movie/MovieShowtimeSearchRequest;->gr:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/search/movie/MovieShowtimeSearchRequest;->gr:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->aN()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/mr;

    iget-object v1, p0, Lcom/nbi/search/movie/MovieShowtimeSearchRequest;->gr:Lnbisdk/rd;

    invoke-virtual {v1}, Lnbisdk/rd;->aO()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/nc;

    invoke-virtual {v0, v1}, Lnbisdk/mr;->a(Lnbisdk/lo;)V

    return-void
.end method
