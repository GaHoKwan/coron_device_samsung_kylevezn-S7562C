.class public interface abstract Lcom/nbi/map/search/movie/TheaterSearchInformation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIInformation;


# virtual methods
.method public abstract getPOI(I)Lcom/nbi/map/data/EventPOI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getResultCount()I
.end method
