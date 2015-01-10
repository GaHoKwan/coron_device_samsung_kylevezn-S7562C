.class public Lcom/nbi/map/data/FuelProduct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# static fields
.field public static final UNIT_GALLON:S = 0x1s

.field public static final UNIT_LITRES:S = 0x2s


# instance fields
.field private zd:Lnbisdk/ni;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    check-cast p1, Lnbisdk/ni;

    iput-object p1, p0, Lcom/nbi/map/data/FuelProduct;->zd:Lnbisdk/ni;

    return-void
.end method


# virtual methods
.method public getFuelPrice()Lcom/nbi/map/data/Price;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/Price;

    iget-object v1, p0, Lcom/nbi/map/data/FuelProduct;->zd:Lnbisdk/ni;

    invoke-virtual {v1}, Lnbisdk/ni;->kS()Lnbisdk/hs;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Price;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFuelType()Lcom/nbi/map/data/FuelType;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/FuelType;

    iget-object v1, p0, Lcom/nbi/map/data/FuelProduct;->zd:Lnbisdk/ni;

    invoke-virtual {v1}, Lnbisdk/ni;->kT()Lnbisdk/pf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/FuelType;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFuelUnit()S
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelProduct;->zd:Lnbisdk/ni;

    invoke-virtual {v0}, Lnbisdk/ni;->getFuelUnit()S

    move-result v0

    return v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelProduct;->zd:Lnbisdk/ni;

    return-object v0
.end method

.method public isAverage()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelProduct;->zd:Lnbisdk/ni;

    invoke-virtual {v0}, Lnbisdk/ni;->isAverage()Z

    move-result v0

    return v0
.end method

.method public isLow()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelProduct;->zd:Lnbisdk/ni;

    invoke-virtual {v0}, Lnbisdk/ni;->isLow()Z

    move-result v0

    return v0
.end method
