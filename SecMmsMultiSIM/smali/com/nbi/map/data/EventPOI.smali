.class public Lcom/nbi/map/data/EventPOI;
.super Lcom/nbi/map/data/POI;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private ed:Lnbisdk/pb;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lnbisdk/uz;

    invoke-direct {p0, v0}, Lcom/nbi/map/data/POI;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lnbisdk/pb;

    iput-object p1, p0, Lcom/nbi/map/data/EventPOI;->ed:Lnbisdk/pb;

    return-void
.end method


# virtual methods
.method public getEventPlace()Lcom/nbi/map/data/EventPlace;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/EventPlace;

    iget-object v1, p0, Lcom/nbi/map/data/EventPOI;->ed:Lnbisdk/pb;

    invoke-virtual {v1}, Lnbisdk/pb;->le()Lnbisdk/lq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/EventPlace;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventPOI;->ed:Lnbisdk/pb;

    return-object v0
.end method
