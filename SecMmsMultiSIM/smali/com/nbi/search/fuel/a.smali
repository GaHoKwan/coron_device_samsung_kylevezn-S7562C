.class final Lcom/nbi/search/fuel/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/search/fuel/FuelSearchInformation;


# instance fields
.field private gF:Lnbisdk/hc;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/hc;

    iput-object p1, p0, Lcom/nbi/search/fuel/a;->gF:Lnbisdk/hc;

    return-void
.end method


# virtual methods
.method public final getAverage()Lcom/nbi/map/data/FuelProduct;
    .locals 2

    iget-object v0, p0, Lcom/nbi/search/fuel/a;->gF:Lnbisdk/hc;

    invoke-virtual {v0}, Lnbisdk/hc;->hd()Lnbisdk/ni;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nbi/map/data/FuelProduct;

    invoke-direct {v0, v1}, Lcom/nbi/map/data/FuelProduct;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final getFuelPOI(I)Lcom/nbi/map/data/FuelPOI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/FuelPOI;

    iget-object v1, p0, Lcom/nbi/search/fuel/a;->gF:Lnbisdk/hc;

    invoke-virtual {v1, p1}, Lnbisdk/hc;->an(I)Lnbisdk/mh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/FuelPOI;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/fuel/a;->gF:Lnbisdk/hc;

    return-object v0
.end method

.method public final getLow()Lcom/nbi/map/data/FuelProduct;
    .locals 2

    iget-object v0, p0, Lcom/nbi/search/fuel/a;->gF:Lnbisdk/hc;

    invoke-virtual {v0}, Lnbisdk/hc;->he()Lnbisdk/ni;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nbi/map/data/FuelProduct;

    invoke-direct {v0, v1}, Lcom/nbi/map/data/FuelProduct;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final getResultCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/fuel/a;->gF:Lnbisdk/hc;

    invoke-virtual {v0}, Lnbisdk/hc;->getResultCount()I

    move-result v0

    return v0
.end method

.method public final hasMoreResults()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/fuel/a;->gF:Lnbisdk/hc;

    invoke-virtual {v0}, Lnbisdk/kq;->hasMoreResults()Z

    move-result v0

    return v0
.end method
