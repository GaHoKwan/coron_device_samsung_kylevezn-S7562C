.class public Lcom/nbi/search/singlesearch/SuggestionSearchRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;
.implements Lcom/nbi/common/NBIRequest;


# instance fields
.field private gj:Lnbisdk/rd;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lcom/nbi/map/data/SearchRegion;IILcom/nbi/search/singlesearch/SuggestionSearchListener;)V
    .locals 9

    const/16 v2, 0x14

    const/4 v8, 0x1

    const/4 v1, -0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    if-lt p4, v1, :cond_6

    if-gt p4, v2, :cond_6

    if-eqz p4, :cond_6

    invoke-static {p5}, Lnbisdk/lv;->c(I)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p6, :cond_6

    if-ne p4, v1, :cond_0

    const/16 p4, 0xa

    :cond_0
    new-instance v0, Lnbisdk/ew;

    invoke-virtual {p3}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p3}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lnbisdk/ew;-><init>(DD)V

    new-instance v1, Lnbisdk/lg;

    const-string v2, "tcs-single-search"

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lnbisdk/lg;-><init>(Lnbisdk/mi;Ljava/lang/String;I)V

    invoke-virtual {v1, p2}, Lnbisdk/lg;->S(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/dg;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lnbisdk/dg;->H(I)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lnbisdk/ew;

    invoke-virtual {p3}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p3}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lnbisdk/ew;-><init>(DD)V

    new-instance v2, Lnbisdk/ew;

    invoke-virtual {p3}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p3}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lnbisdk/ew;-><init>(DD)V

    invoke-virtual {v1, v0, v2}, Lnbisdk/dg;->a(Lnbisdk/cl;Lnbisdk/cl;)V

    :cond_1
    packed-switch p5, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v0, Lcom/nbi/search/singlesearch/b;

    invoke-direct {v0, p0, p6}, Lcom/nbi/search/singlesearch/b;-><init>(Lcom/nbi/search/singlesearch/SuggestionSearchRequest;Lcom/nbi/search/singlesearch/SuggestionSearchListener;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v2, Lnbisdk/ld;

    invoke-direct {v2, v0}, Lnbisdk/ld;-><init>(Lcom/navbuilder/nb/d;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    new-instance v3, Lnbisdk/at;

    invoke-direct {v3, v2}, Lnbisdk/at;-><init>(Lnbisdk/ts;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context parameter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {v1, v7, v8, v7}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, v7, v7, v8}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1, v7, v7, v7}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "suggestion search listener parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lnbisdk/ya;

    invoke-direct {v0, v3}, Lnbisdk/ya;-><init>(Lnbisdk/iu;)V

    new-instance v2, Lnbisdk/rd;

    invoke-direct {v2, v0, v1}, Lnbisdk/rd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;->gj:Lnbisdk/rd;

    :cond_5
    return-void

    :cond_6
    if-nez p1, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyword is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "location is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p3}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "center of location is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-lt p4, v1, :cond_c

    if-gt p4, v2, :cond_c

    if-nez p4, :cond_d

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p6, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {p5}, Lnbisdk/lv;->c(I)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extendedConfiguration is incorrect."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    invoke-static {}, Lcom/nbi/search/singlesearch/a;->fS()Lcom/nbi/search/singlesearch/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nbi/search/singlesearch/a;->b(Lcom/nbi/search/singlesearch/SuggestionSearchRequest;)V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;->gj:Lnbisdk/rd;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 1

    invoke-static {}, Lcom/nbi/search/singlesearch/a;->fS()Lcom/nbi/search/singlesearch/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nbi/search/singlesearch/a;->a(Lcom/nbi/search/singlesearch/SuggestionSearchRequest;)V

    return-void
.end method
