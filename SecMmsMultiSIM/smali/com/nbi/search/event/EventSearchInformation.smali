.class public interface abstract Lcom/nbi/search/event/EventSearchInformation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIInformation;


# virtual methods
.method public abstract getEventContent(I)Lcom/nbi/map/data/EventContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getEventContentCount()I
.end method

.method public abstract getPOI(I)Lcom/nbi/map/data/EventPOI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getPOICount()I
.end method

.method public abstract getResultCount()I
.end method
