.class public interface abstract Lcom/nbi/search/fuel/FuelSearchInformation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIInformation;


# virtual methods
.method public abstract getAverage()Lcom/nbi/map/data/FuelProduct;
.end method

.method public abstract getFuelPOI(I)Lcom/nbi/map/data/FuelPOI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getLow()Lcom/nbi/map/data/FuelProduct;
.end method

.method public abstract getResultCount()I
.end method
