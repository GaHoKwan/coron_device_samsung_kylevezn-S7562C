.class public Lcom/nbi/map/search/movie/TheaterSearchRequest;
.super Lcom/nbi/map/search/SearchRequest;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private kv:Lnbisdk/ah;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/SearchRegion;Ljava/lang/String;IILcom/nbi/map/search/movie/TheaterSearchListener;)V
    .locals 9

    const/16 v1, 0x14

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_2

    if-lt p4, v7, :cond_2

    if-gt p4, v1, :cond_2

    if-eqz p4, :cond_2

    if-eqz p6, :cond_2

    invoke-static {p5}, Lnbisdk/x;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lnbisdk/rz;

    new-instance v0, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lnbisdk/ew;-><init>(DD)V

    invoke-direct {v1, v0}, Lnbisdk/rz;-><init>(Lnbisdk/mi;)V

    if-ne p4, v7, :cond_0

    const/16 p4, 0xa

    :cond_0
    invoke-virtual {v1, p3}, Lnbisdk/dg;->S(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/dg;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lnbisdk/dg;->H(I)V

    packed-switch p5, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, p1, p6, v1}, Lcom/nbi/map/search/movie/TheaterSearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/search/movie/TheaterSearchListener;Lnbisdk/rz;)V

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {v1, v6, v6, v8}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, v6, v8, v6}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1, v6, v6, v6}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "center of region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-lt p4, v7, :cond_6

    if-gt p4, v1, :cond_6

    if-nez p4, :cond_7

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
    invoke-static {p5}, Lnbisdk/x;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extendedConfiguration is incorrect."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/search/movie/TheaterSearchRequest;Lcom/nbi/map/search/movie/TheaterSearchInformation;BLcom/nbi/map/search/movie/TheaterSearchListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/nbi/map/search/SearchRequest;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x2

    if-eq p4, v0, :cond_4

    const/4 v0, 0x3

    if-eq p4, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid iteratorCommand"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p2}, Lcom/nbi/map/search/movie/TheaterSearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnbisdk/ah;

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request parameter is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast v0, Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->aO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/rz;

    invoke-interface {p3}, Lcom/nbi/map/search/movie/TheaterSearchInformation;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/kq;

    invoke-virtual {v0, p4, v1}, Lnbisdk/dg;->a(BLnbisdk/kq;)V

    invoke-direct {p0, p1, p5, v0}, Lcom/nbi/map/search/movie/TheaterSearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/search/movie/TheaterSearchListener;Lnbisdk/rz;)V

    return-void
.end method

.method private a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/search/movie/TheaterSearchListener;Lnbisdk/rz;)V
    .locals 3

    new-instance v0, Lcom/nbi/map/search/movie/b;

    invoke-direct {v0, p0, p2}, Lcom/nbi/map/search/movie/b;-><init>(Lcom/nbi/map/search/movie/TheaterSearchRequest;Lcom/nbi/map/search/movie/TheaterSearchListener;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v1

    new-instance v2, Lnbisdk/ky;

    invoke-direct {v2, v0}, Lnbisdk/ky;-><init>(Lnbisdk/ei;)V

    invoke-static {v2, v1}, Lnbisdk/bj;->a(Lnbisdk/gn;Lcom/navbuilder/nb/e;)Lnbisdk/mr;

    move-result-object v0

    new-instance v1, Lnbisdk/ah;

    invoke-direct {v1, v0, p3}, Lnbisdk/ah;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nbi/map/search/movie/TheaterSearchRequest;->kv:Lnbisdk/ah;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/movie/TheaterSearchRequest;->kv:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/movie/TheaterSearchRequest;->kv:Lnbisdk/ah;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/movie/TheaterSearchRequest;->kv:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/search/movie/TheaterSearchRequest;->kv:Lnbisdk/ah;

    invoke-virtual {v0}, Lnbisdk/ah;->aN()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/mr;

    iget-object v1, p0, Lcom/nbi/map/search/movie/TheaterSearchRequest;->kv:Lnbisdk/ah;

    invoke-virtual {v1}, Lnbisdk/ah;->aO()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/rz;

    invoke-virtual {v0, v1}, Lnbisdk/mr;->a(Lnbisdk/lo;)V

    return-void
.end method
