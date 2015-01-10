.class public Lcom/nbi/search/event/EventSearchRequest;
.super Lcom/nbi/search/SearchRequest;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private gj:Lnbisdk/rd;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/search/event/EventSearchRequest;Lcom/nbi/search/event/EventSearchInformation;BLcom/nbi/search/event/EventSearchListener;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/nbi/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p5, :cond_2

    if-eq p4, v0, :cond_0

    if-ne p4, v1, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/nbi/search/event/EventSearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->aO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hr;

    invoke-interface {p3}, Lcom/nbi/search/event/EventSearchInformation;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/vq;

    invoke-virtual {v0, p4, v1}, Lnbisdk/dg;->a(BLnbisdk/kq;)V

    invoke-direct {p0, p1, p5, v0}, Lcom/nbi/search/event/EventSearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/search/event/EventSearchListener;Lnbisdk/hr;)V

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p3, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p5, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eq p4, v0, :cond_1

    if-eq p4, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid iteratorCommand"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/search/event/EventSummarySearchInformation;Lcom/nbi/search/event/EventSummarySearchRequest;IILcom/nbi/search/event/EventSearchListener;)V
    .locals 6

    const/16 v1, 0x14

    const/4 v5, -0x1

    invoke-direct {p0}, Lcom/nbi/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-lt p5, v5, :cond_2

    if-gt p5, v1, :cond_2

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    if-eqz p3, :cond_2

    invoke-interface {p2}, Lcom/nbi/search/event/EventSummarySearchInformation;->getResultCount()I

    move-result v0

    invoke-static {v0, p4}, Lnbisdk/lv;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/nbi/search/event/EventSummarySearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->aO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hr;

    invoke-virtual {v0}, Lnbisdk/hr;->hw()V

    invoke-interface {p2, p4}, Lcom/nbi/search/event/EventSummarySearchInformation;->getEventSummary(I)Lcom/nbi/map/data/EventSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/EventSummary;->getCategory()Lcom/nbi/map/data/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Category;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/hr;->ak(Ljava/lang/String;)V

    invoke-interface {p2, p4}, Lcom/nbi/search/event/EventSummarySearchInformation;->getEventSummary(I)Lcom/nbi/map/data/EventSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/EventSummary;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/lo;->setStartTime(J)V

    invoke-virtual {v0, v1, v2}, Lnbisdk/lo;->k(J)V

    invoke-virtual {v0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v1

    new-instance v2, Lnbisdk/vl;

    const-string v3, "proxmatch"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    invoke-virtual {v0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v1

    new-instance v2, Lnbisdk/vl;

    const-string v3, "count"

    invoke-interface {p2, p4}, Lcom/nbi/search/event/EventSummarySearchInformation;->getEventSummary(I)Lcom/nbi/map/data/EventSummary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/EventSummary;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    if-ne p5, v5, :cond_0

    const/16 p5, 0xa

    :cond_0
    invoke-virtual {v0, p5}, Lnbisdk/dg;->H(I)V

    invoke-direct {p0, p1, p6, v0}, Lcom/nbi/search/event/EventSearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/search/event/EventSearchListener;Lnbisdk/hr;)V

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-lt p5, v5, :cond_6

    if-gt p5, v1, :cond_6

    if-nez p5, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez p6, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-interface {p2}, Lcom/nbi/search/event/EventSummarySearchInformation;->getResultCount()I

    move-result v0

    invoke-static {v0, p4}, Lnbisdk/lv;->a(II)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "eventIndex is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/nbi/common/NBIContext;Lcom/nbi/search/event/EventSearchListener;Lnbisdk/hr;)V
    .locals 2

    new-instance v0, Lcom/nbi/search/event/e;

    invoke-direct {v0, p0, p2}, Lcom/nbi/search/event/e;-><init>(Lcom/nbi/search/event/EventSearchRequest;Lcom/nbi/search/event/EventSearchListener;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v1, Lnbisdk/gn;

    invoke-direct {v1, v0}, Lnbisdk/gn;-><init>(Lnbisdk/ei;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v1, v0}, Lnbisdk/bj;->a(Lnbisdk/gn;Lcom/navbuilder/nb/e;)Lnbisdk/mr;

    move-result-object v0

    new-instance v1, Lnbisdk/rd;

    invoke-direct {v1, v0, p3}, Lnbisdk/rd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nbi/search/event/EventSearchRequest;->gj:Lnbisdk/rd;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/event/EventSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/event/EventSearchRequest;->gj:Lnbisdk/rd;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/event/EventSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/search/event/EventSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->aN()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/mr;

    iget-object v1, p0, Lcom/nbi/search/event/EventSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v1}, Lnbisdk/rd;->aO()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/hr;

    invoke-virtual {v0, v1}, Lnbisdk/mr;->a(Lnbisdk/lo;)V

    return-void
.end method
