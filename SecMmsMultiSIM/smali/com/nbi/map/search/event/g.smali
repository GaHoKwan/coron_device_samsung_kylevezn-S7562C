.class Lcom/nbi/map/search/event/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/map/search/event/EventSearchInformation;


# instance fields
.field protected iO:Lnbisdk/vq;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/vq;

    iput-object p1, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    return-void
.end method


# virtual methods
.method public getEventContent(I)Lcom/nbi/map/data/EventContent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nbi/map/data/EventContent;

    iget-object v1, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    invoke-virtual {v1, p1}, Lnbisdk/vq;->bw(I)Lnbisdk/je;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/EventContent;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getEventContentCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    invoke-virtual {v0}, Lnbisdk/vq;->getEventCount()I

    move-result v0

    goto :goto_0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    return-object v0
.end method

.method public getPOI(I)Lcom/nbi/map/data/EventPOI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nbi/map/data/EventPOI;

    iget-object v1, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    invoke-virtual {v1, p1}, Lnbisdk/vq;->bu(I)Lnbisdk/pb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/EventPOI;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getPOICount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    invoke-virtual {v0}, Lnbisdk/vq;->getPOICount()I

    move-result v0

    goto :goto_0
.end method

.method public getResultCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    invoke-virtual {v2}, Lnbisdk/vq;->getPOICount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    invoke-virtual {v2, v0}, Lnbisdk/vq;->bu(I)Lnbisdk/pb;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/pb;->le()Lnbisdk/lq;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lq;->ju()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public hasMoreResults()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    invoke-virtual {v0}, Lnbisdk/kq;->hasMoreResults()Z

    move-result v0

    goto :goto_0
.end method
