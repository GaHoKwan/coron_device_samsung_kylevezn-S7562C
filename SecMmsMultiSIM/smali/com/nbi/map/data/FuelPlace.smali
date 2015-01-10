.class public Lcom/nbi/map/data/FuelPlace;
.super Lcom/nbi/map/data/Place;


# instance fields
.field private ue:Lnbisdk/oa;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lnbisdk/oa;

    iput-object p1, p0, Lcom/nbi/map/data/FuelPlace;->ue:Lnbisdk/oa;

    return-void
.end method


# virtual methods
.method public getFuelProduct(I)Lcom/nbi/map/data/FuelProduct;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/FuelProduct;

    iget-object v1, p0, Lcom/nbi/map/data/FuelPlace;->ue:Lnbisdk/oa;

    invoke-virtual {v1, p1}, Lnbisdk/oa;->aY(I)Lnbisdk/ni;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/FuelProduct;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFuelProductCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelPlace;->ue:Lnbisdk/oa;

    invoke-virtual {v0}, Lnbisdk/oa;->lc()I

    move-result v0

    return v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelPlace;->ue:Lnbisdk/oa;

    return-object v0
.end method
