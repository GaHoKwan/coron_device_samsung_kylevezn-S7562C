.class public Lcom/nbi/map/data/FuelPOI;
.super Lcom/nbi/map/data/POI;


# instance fields
.field private od:Lnbisdk/mh;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nbi/map/data/POI;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lnbisdk/mh;

    iput-object p1, p0, Lcom/nbi/map/data/FuelPOI;->od:Lnbisdk/mh;

    return-void
.end method


# virtual methods
.method public getFuelPlace()Lcom/nbi/map/data/FuelPlace;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/FuelPlace;

    iget-object v1, p0, Lcom/nbi/map/data/FuelPOI;->od:Lnbisdk/mh;

    invoke-virtual {v1}, Lnbisdk/mh;->jW()Lnbisdk/oa;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/FuelPlace;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelPOI;->od:Lnbisdk/mh;

    return-object v0
.end method
