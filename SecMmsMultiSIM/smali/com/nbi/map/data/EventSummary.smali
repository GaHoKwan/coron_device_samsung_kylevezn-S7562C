.class public Lcom/nbi/map/data/EventSummary;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private hL:Lnbisdk/bi;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/bi;

    iput-object p1, p0, Lcom/nbi/map/data/EventSummary;->hL:Lnbisdk/bi;

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/nbi/map/data/Category;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/Category;

    iget-object v1, p0, Lcom/nbi/map/data/EventSummary;->hL:Lnbisdk/bi;

    invoke-virtual {v1}, Lnbisdk/bi;->bH()Lnbisdk/qc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Category;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventSummary;->hL:Lnbisdk/bi;

    invoke-virtual {v0}, Lnbisdk/bi;->getCount()I

    move-result v0

    return v0
.end method

.method public getFilter(I)Lcom/nbi/map/data/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/Pair;

    iget-object v1, p0, Lcom/nbi/map/data/EventSummary;->hL:Lnbisdk/bi;

    invoke-virtual {v1, p1}, Lnbisdk/bi;->h(I)Lnbisdk/vl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Pair;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventSummary;->hL:Lnbisdk/bi;

    invoke-virtual {v0, p1}, Lnbisdk/bi;->getFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventSummary;->hL:Lnbisdk/bi;

    invoke-virtual {v0}, Lnbisdk/bi;->getFilterCount()I

    move-result v0

    return v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventSummary;->hL:Lnbisdk/bi;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/EventSummary;->hL:Lnbisdk/bi;

    invoke-virtual {v0}, Lnbisdk/bi;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUtcOffset()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/EventSummary;->hL:Lnbisdk/bi;

    invoke-virtual {v0}, Lnbisdk/bi;->getUtcOffset()J

    move-result-wide v0

    return-wide v0
.end method
