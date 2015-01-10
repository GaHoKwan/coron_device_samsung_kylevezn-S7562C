.class public interface abstract Lcom/nbi/search/event/EventSummarySearchInformation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/search/event/EventSearchInformation;


# virtual methods
.method public abstract getEventSummary(I)Lcom/nbi/map/data/EventSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getResultCount()I
.end method
