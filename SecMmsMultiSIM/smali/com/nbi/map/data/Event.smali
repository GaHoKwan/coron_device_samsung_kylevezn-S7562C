.class public Lcom/nbi/map/data/Event;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private xA:Lnbisdk/bn;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/bn;

    iput-object p1, p0, Lcom/nbi/map/data/Event;->xA:Lnbisdk/bn;

    return-void
.end method


# virtual methods
.method public getEventPerformance(I)Lcom/nbi/map/data/EventPerformance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/EventPerformance;

    iget-object v1, p0, Lcom/nbi/map/data/Event;->xA:Lnbisdk/bn;

    invoke-virtual {v1, p1}, Lnbisdk/bn;->i(I)Lnbisdk/yd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/EventPerformance;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getEventPerformancesCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Event;->xA:Lnbisdk/bn;

    invoke-virtual {v0}, Lnbisdk/bn;->getEventPerformancesCount()I

    move-result v0

    return v0
.end method

.method public getFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Event;->xA:Lnbisdk/bn;

    invoke-virtual {v0, p1}, Lnbisdk/bn;->getFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedTextBlock()Lcom/nbi/map/data/FormattedTextBlock;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/FormattedTextBlock;

    iget-object v1, p0, Lcom/nbi/map/data/Event;->xA:Lnbisdk/bn;

    invoke-virtual {v1}, Lnbisdk/bn;->bI()Lnbisdk/in;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/FormattedTextBlock;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Event;->xA:Lnbisdk/bn;

    return-object v0
.end method

.method public getMPAARating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Event;->xA:Lnbisdk/bn;

    invoke-virtual {v0}, Lnbisdk/bn;->getMPAARating()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Event;->xA:Lnbisdk/bn;

    invoke-virtual {v0}, Lnbisdk/bn;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatingStar()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Event;->xA:Lnbisdk/bn;

    invoke-virtual {v0}, Lnbisdk/bn;->getRatingStar()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Event;->xA:Lnbisdk/bn;

    invoke-virtual {v0}, Lnbisdk/bn;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRating()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Event;->xA:Lnbisdk/bn;

    invoke-virtual {v0}, Lnbisdk/bn;->hasRating()Z

    move-result v0

    return v0
.end method
