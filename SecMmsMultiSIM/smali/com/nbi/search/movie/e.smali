.class final Lcom/nbi/search/movie/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;
.implements Lcom/nbi/search/movie/MovieSearchInformation;


# instance fields
.field private dj:Lnbisdk/vq;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/vq;

    iput-object p1, p0, Lcom/nbi/search/movie/e;->dj:Lnbisdk/vq;

    return-void
.end method


# virtual methods
.method public final getEventContent(I)Lcom/nbi/map/data/EventContent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/EventContent;

    iget-object v1, p0, Lcom/nbi/search/movie/e;->dj:Lnbisdk/vq;

    invoke-virtual {v1, p1}, Lnbisdk/vq;->bw(I)Lnbisdk/je;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/EventContent;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/movie/e;->dj:Lnbisdk/vq;

    return-object v0
.end method

.method public final getPOI(I)Lcom/nbi/map/data/EventPOI;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nbi/search/movie/e;->dj:Lnbisdk/vq;

    invoke-virtual {v1, p1}, Lnbisdk/vq;->bu(I)Lnbisdk/pb;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/nbi/map/data/EventPOI;

    iget-object v1, p0, Lcom/nbi/search/movie/e;->dj:Lnbisdk/vq;

    invoke-virtual {v1, p1}, Lnbisdk/vq;->bu(I)Lnbisdk/pb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/EventPOI;-><init>(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final getPOICount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/movie/e;->dj:Lnbisdk/vq;

    invoke-virtual {v0}, Lnbisdk/vq;->getPOICount()I

    move-result v0

    return v0
.end method

.method public final getResultCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/movie/e;->dj:Lnbisdk/vq;

    invoke-virtual {v0}, Lnbisdk/vq;->getEventCount()I

    move-result v0

    return v0
.end method

.method public final hasMoreResults()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/movie/e;->dj:Lnbisdk/vq;

    invoke-virtual {v0}, Lnbisdk/kq;->hasMoreResults()Z

    move-result v0

    return v0
.end method
