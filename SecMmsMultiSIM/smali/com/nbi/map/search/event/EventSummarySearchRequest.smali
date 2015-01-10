.class public Lcom/nbi/map/search/event/EventSummarySearchRequest;
.super Lcom/nbi/map/search/SearchRequest;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private ee:Lnbisdk/ah;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/SearchRegion;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IILcom/nbi/map/search/event/EventSummarySearchListener;)V
    .locals 8

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    move/from16 v0, p8

    if-lt v0, v1, :cond_6

    const/16 v1, 0x14

    move/from16 v0, p8

    if-gt v0, v1, :cond_6

    if-eqz p8, :cond_6

    if-eqz p10, :cond_6

    invoke-static/range {p9 .. p9}, Lnbisdk/x;->c(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p7}, Lnbisdk/x;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v2, Lnbisdk/hr;

    new-instance v1, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lnbisdk/ew;-><init>(DD)V

    invoke-direct {v2, v1}, Lnbisdk/hr;-><init>(Lnbisdk/mi;)V

    invoke-virtual {v2, p3}, Lnbisdk/dg;->S(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lnbisdk/ew;-><init>(DD)V

    new-instance v3, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lnbisdk/ew;-><init>(DD)V

    invoke-virtual {v2, v1, v3}, Lnbisdk/dg;->a(Lnbisdk/cl;Lnbisdk/cl;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnbisdk/uy;->s(J)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lnbisdk/lo;->setStartTime(J)V

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnbisdk/uy;->s(J)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lnbisdk/lo;->k(J)V

    :cond_2
    invoke-virtual {v2, p7}, Lnbisdk/hr;->al(Ljava/lang/String;)V

    if-eqz p4, :cond_3

    invoke-virtual {v2}, Lnbisdk/hr;->hw()V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p4

    if-ge v1, v3, :cond_3

    aget-object v3, p4, v1

    invoke-virtual {v2, v3}, Lnbisdk/hr;->ak(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    move/from16 v0, p8

    if-ne v0, v1, :cond_4

    const/16 p8, 0xa

    :cond_4
    move/from16 v0, p8

    invoke-virtual {v2, v0}, Lnbisdk/dg;->H(I)V

    packed-switch p9, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/bt;

    invoke-virtual {v1}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnbisdk/dg;->a(Ljava/lang/String;)V

    move-object/from16 v0, p10

    invoke-direct {p0, p1, v0, v2}, Lcom/nbi/map/search/event/EventSummarySearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/search/event/EventSummarySearchListener;Lnbisdk/hr;)V

    :cond_5
    return-void

    :pswitch_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-nez p2, :cond_8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "region is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "center of region is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/4 v1, -0x1

    move/from16 v0, p8

    if-lt v0, v1, :cond_a

    const/16 v1, 0x14

    move/from16 v0, p8

    if-gt v0, v1, :cond_a

    if-nez p8, :cond_b

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sliceSize is incorrect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-nez p10, :cond_c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-static/range {p9 .. p9}, Lnbisdk/x;->c(I)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "extendedConfiguration is incorrect."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {p7}, Lnbisdk/x;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "rating is incorrect."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/search/event/EventSummarySearchRequest;Lcom/nbi/map/search/event/EventSummarySearchInformation;BLcom/nbi/map/search/event/EventSummarySearchListener;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p5, :cond_2

    if-eq p4, v0, :cond_0

    if-ne p4, v1, :cond_2

    :cond_0
    invoke-virtual {p2}, Lcom/nbi/map/search/event/EventSummarySearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->aO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hr;

    invoke-interface {p3}, Lcom/nbi/map/search/event/EventSummarySearchInformation;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/kq;

    invoke-virtual {v0, p4, v1}, Lnbisdk/dg;->a(BLnbisdk/kq;)V

    invoke-direct {p0, p1, p5, v0}, Lcom/nbi/map/search/event/EventSummarySearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/search/event/EventSummarySearchListener;Lnbisdk/hr;)V

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

.method private a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/search/event/EventSummarySearchListener;Lnbisdk/hr;)V
    .locals 2

    new-instance v0, Lcom/nbi/map/search/event/b;

    invoke-direct {v0, p0, p2}, Lcom/nbi/map/search/event/b;-><init>(Lcom/nbi/map/search/event/EventSummarySearchRequest;Lcom/nbi/map/search/event/EventSummarySearchListener;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v1, Lnbisdk/lx;

    invoke-direct {v1, v0}, Lnbisdk/lx;-><init>(Lnbisdk/ei;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v1, v0}, Lnbisdk/bj;->a(Lnbisdk/gn;Lcom/navbuilder/nb/e;)Lnbisdk/mr;

    move-result-object v0

    new-instance v1, Lnbisdk/ah;

    invoke-direct {v1, v0, p3}, Lnbisdk/ah;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nbi/map/search/event/EventSummarySearchRequest;->ee:Lnbisdk/ah;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/event/EventSummarySearchRequest;->ee:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/event/EventSummarySearchRequest;->ee:Lnbisdk/ah;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/event/EventSummarySearchRequest;->ee:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/search/event/EventSummarySearchRequest;->ee:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->aN()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/mr;

    iget-object v1, p0, Lcom/nbi/map/search/event/EventSummarySearchRequest;->ee:Lnbisdk/ah;

    invoke-virtual {v1}, Lnbisdk/ah;->aO()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/hr;

    invoke-virtual {v0, v1}, Lnbisdk/mr;->a(Lnbisdk/lo;)V

    return-void
.end method
