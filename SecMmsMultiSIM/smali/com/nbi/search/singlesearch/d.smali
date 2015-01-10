.class final Lcom/nbi/search/singlesearch/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/search/singlesearch/SingleSearchInformation;


# instance fields
.field private ec:Lnbisdk/zn;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/zn;

    iput-object p1, p0, Lcom/nbi/search/singlesearch/d;->ec:Lnbisdk/zn;

    return-void
.end method


# virtual methods
.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/d;->ec:Lnbisdk/zn;

    return-object v0
.end method

.method public final getPOI(I)Lcom/nbi/map/data/POI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/search/singlesearch/d;->ec:Lnbisdk/zn;

    invoke-virtual {v0, p1}, Lnbisdk/zn;->bk(I)Lnbisdk/uz;

    move-result-object v1

    instance-of v0, v1, Lnbisdk/mh;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nbi/map/data/FuelPOI;

    invoke-direct {v0, v1}, Lcom/nbi/map/data/FuelPOI;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nbi/map/data/POI;

    invoke-direct {v0, v1}, Lcom/nbi/map/data/POI;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final getResultCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/d;->ec:Lnbisdk/zn;

    invoke-virtual {v0}, Lnbisdk/zn;->getResultCount()I

    move-result v0

    return v0
.end method

.method public final hasMoreResults()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/d;->ec:Lnbisdk/zn;

    invoke-virtual {v0}, Lnbisdk/kq;->hasMoreResults()Z

    move-result v0

    return v0
.end method
