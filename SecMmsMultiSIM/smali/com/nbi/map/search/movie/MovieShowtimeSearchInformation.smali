.class public interface abstract Lcom/nbi/map/search/movie/MovieShowtimeSearchInformation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIInformation;


# virtual methods
.method public abstract getEventContent()Lcom/nbi/map/data/EventContent;
.end method

.method public abstract getPOI(I)Lcom/nbi/map/data/EventPOI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getResultCount()I
.end method
