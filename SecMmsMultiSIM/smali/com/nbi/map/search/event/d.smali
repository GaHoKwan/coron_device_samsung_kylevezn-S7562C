.class final Lcom/nbi/map/search/event/d;
.super Lcom/nbi/map/search/event/g;

# interfaces
.implements Lcom/nbi/map/search/event/EventSummarySearchInformation;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nbi/map/search/event/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getEventSummary(I)Lcom/nbi/map/data/EventSummary;
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
    new-instance v0, Lcom/nbi/map/data/EventSummary;

    iget-object v1, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    invoke-virtual {v1, p1}, Lnbisdk/vq;->bv(I)Lnbisdk/bi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/EventSummary;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final getResultCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/search/event/g;->iO:Lnbisdk/vq;

    invoke-virtual {v0}, Lnbisdk/vq;->nY()I

    move-result v0

    goto :goto_0
.end method
