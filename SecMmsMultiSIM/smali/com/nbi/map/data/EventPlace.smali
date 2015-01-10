.class public Lcom/nbi/map/data/EventPlace;
.super Lcom/nbi/map/data/Place;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private vr:Lnbisdk/lq;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lnbisdk/lq;

    invoke-direct {p0, v0}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lnbisdk/lq;

    iput-object p1, p0, Lcom/nbi/map/data/EventPlace;->vr:Lnbisdk/lq;

    return-void
.end method


# virtual methods
.method public getEvent(I)Lcom/nbi/map/data/Event;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/Event;

    iget-object v1, p0, Lcom/nbi/map/data/EventPlace;->vr:Lnbisdk/lq;

    invoke-virtual {v1, p1}, Lnbisdk/lq;->aP(I)Lnbisdk/bn;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Event;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getEventCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventPlace;->vr:Lnbisdk/lq;

    invoke-virtual {v0}, Lnbisdk/lq;->ju()I

    move-result v0

    return v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventPlace;->vr:Lnbisdk/lq;

    return-object v0
.end method
