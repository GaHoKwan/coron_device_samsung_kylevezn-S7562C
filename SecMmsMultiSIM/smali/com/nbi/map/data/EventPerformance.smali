.class public Lcom/nbi/map/data/EventPerformance;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private qc:Lnbisdk/yd;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/yd;

    iput-object p1, p0, Lcom/nbi/map/data/EventPerformance;->qc:Lnbisdk/yd;

    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/EventPerformance;->qc:Lnbisdk/yd;

    invoke-virtual {v0}, Lnbisdk/yd;->getEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventPerformance;->qc:Lnbisdk/yd;

    return-object v0
.end method

.method public getPerformanceDetail(I)Lcom/nbi/map/data/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    new-instance v0, Lcom/nbi/map/data/Pair;

    iget-object v1, p0, Lcom/nbi/map/data/EventPerformance;->qc:Lnbisdk/yd;

    invoke-virtual {v1, p1}, Lnbisdk/yd;->bZ(I)Lnbisdk/vl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/Pair;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPerformanceDetailsCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventPerformance;->qc:Lnbisdk/yd;

    invoke-virtual {v0}, Lnbisdk/yd;->getPerformanceDetailsCount()I

    move-result v0

    return v0
.end method

.method public getStartTime()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/EventPerformance;->qc:Lnbisdk/yd;

    invoke-virtual {v0}, Lnbisdk/yd;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUtcOffset()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventPerformance;->qc:Lnbisdk/yd;

    invoke-virtual {v0}, Lnbisdk/yd;->getUtcOffset()I

    move-result v0

    return v0
.end method

.method public isAllDay()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventPerformance;->qc:Lnbisdk/yd;

    invoke-virtual {v0}, Lnbisdk/yd;->isAllDay()Z

    move-result v0

    return v0
.end method

.method public isBargainPerformance()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventPerformance;->qc:Lnbisdk/yd;

    invoke-virtual {v0}, Lnbisdk/yd;->oR()Z

    move-result v0

    return v0
.end method

.method public isIndeterminateTime()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventPerformance;->qc:Lnbisdk/yd;

    invoke-virtual {v0}, Lnbisdk/yd;->isIndeterminateTime()Z

    move-result v0

    return v0
.end method
