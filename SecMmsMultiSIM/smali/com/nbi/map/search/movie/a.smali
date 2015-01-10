.class final Lcom/nbi/map/search/movie/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/map/search/movie/TheaterSearchInformation;


# instance fields
.field private dj:Lnbisdk/vq;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/vq;

    iput-object p1, p0, Lcom/nbi/map/search/movie/a;->dj:Lnbisdk/vq;

    return-void
.end method


# virtual methods
.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/movie/a;->dj:Lnbisdk/vq;

    return-object v0
.end method

.method public final getPOI(I)Lcom/nbi/map/data/EventPOI;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/EventPOI;

    iget-object v1, p0, Lcom/nbi/map/search/movie/a;->dj:Lnbisdk/vq;

    invoke-virtual {v1, p1}, Lnbisdk/vq;->bu(I)Lnbisdk/pb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/EventPOI;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getResultCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/movie/a;->dj:Lnbisdk/vq;

    invoke-virtual {v0}, Lnbisdk/vq;->getPOICount()I

    move-result v0

    return v0
.end method

.method public final hasMoreResults()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/movie/a;->dj:Lnbisdk/vq;

    invoke-virtual {v0}, Lnbisdk/kq;->hasMoreResults()Z

    move-result v0

    return v0
.end method
