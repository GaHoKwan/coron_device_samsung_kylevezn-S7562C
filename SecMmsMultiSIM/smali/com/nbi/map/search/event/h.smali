.class final Lcom/nbi/map/search/event/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/map/search/event/VenuePerformancesSearchInformation;


# instance fields
.field private iO:Lnbisdk/vq;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/vq;

    iput-object p1, p0, Lcom/nbi/map/search/event/h;->iO:Lnbisdk/vq;

    return-void
.end method


# virtual methods
.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/event/h;->iO:Lnbisdk/vq;

    return-object v0
.end method

.method public final getPOI()Lcom/nbi/map/data/EventPOI;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nbi/map/search/event/h;->iO:Lnbisdk/vq;

    invoke-virtual {v1}, Lnbisdk/vq;->getPOICount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nbi/map/search/event/h;->iO:Lnbisdk/vq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnbisdk/vq;->bu(I)Lnbisdk/pb;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/nbi/map/data/EventPOI;

    invoke-direct {v0, v1}, Lcom/nbi/map/data/EventPOI;-><init>(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final hasMoreResults()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/event/h;->iO:Lnbisdk/vq;

    invoke-virtual {v0}, Lnbisdk/kq;->hasMoreResults()Z

    move-result v0

    return v0
.end method
