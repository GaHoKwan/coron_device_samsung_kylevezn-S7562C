.class public Lcom/nbi/search/fuel/FuelSearchRequest;
.super Lcom/nbi/search/SearchRequest;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# static fields
.field public static final FUEL_DIESEL:Ljava/lang/String; = "d"

.field public static final FUEL_ETHANOL:Ljava/lang/String; = "e"

.field public static final FUEL_GASOLINE:Ljava/lang/String; = "r"


# instance fields
.field private gj:Lnbisdk/rd;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nbi/search/SearchRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/SearchRegion;Ljava/lang/String;Ljava/lang/String;IILcom/nbi/search/fuel/FuelSearchListener;)V
    .locals 7

    invoke-direct {p0}, Lcom/nbi/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-lt p5, v0, :cond_3

    const/16 v0, 0x14

    if-gt p5, v0, :cond_3

    if-eqz p5, :cond_3

    if-eqz p7, :cond_3

    invoke-static {p6}, Lnbisdk/lv;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p4}, Lcom/nbi/search/fuel/FuelSearchRequest;->ap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lnbisdk/ew;-><init>(DD)V

    const/4 v1, -0x1

    if-ne p5, v1, :cond_0

    const/16 p5, 0xa

    :cond_0
    new-instance v1, Lnbisdk/ht;

    const-string v2, "atlasbook-standard"

    invoke-direct {v1, v0, v2}, Lnbisdk/ht;-><init>(Lnbisdk/mi;Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lnbisdk/ht;->an(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lnbisdk/dg;->S(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Lnbisdk/dg;->H(I)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/dg;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lnbisdk/ew;-><init>(DD)V

    new-instance v2, Lnbisdk/ew;

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lnbisdk/ew;-><init>(DD)V

    invoke-virtual {v1, v0, v2}, Lnbisdk/dg;->a(Lnbisdk/cl;Lnbisdk/cl;)V

    :cond_1
    const-string v0, "d"

    invoke-virtual {v1, v0}, Lnbisdk/dg;->U(Ljava/lang/String;)V

    packed-switch p6, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, p1, p7, v1}, Lcom/nbi/search/fuel/FuelSearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/search/fuel/FuelSearchListener;Lnbisdk/ht;)V

    :cond_2
    return-void

    :pswitch_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lnbisdk/dg;->a(ZZZ)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p2}, Lcom/nbi/map/data/SearchRegion;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "center of region is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, -0x1

    if-lt p5, v0, :cond_7

    const/16 v0, 0x14

    if-gt p5, v0, :cond_7

    if-nez p5, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez p7, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {p6}, Lnbisdk/lv;->c(I)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extendedConfiguration is incorrect."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p4}, Lcom/nbi/search/fuel/FuelSearchRequest;->ap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fuelType is incorrect."

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

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/search/fuel/FuelSearchRequest;Lcom/nbi/search/fuel/FuelSearchInformation;BLcom/nbi/search/fuel/FuelSearchListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/nbi/search/SearchRequest;-><init>()V

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
    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "information is null"

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
    invoke-virtual {p2}, Lcom/nbi/search/fuel/FuelSearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnbisdk/rd;

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request parameter is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast v0, Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->aO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ht;

    invoke-interface {p3}, Lcom/nbi/search/fuel/FuelSearchInformation;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/kq;

    invoke-virtual {v0, p4, v1}, Lnbisdk/dg;->a(BLnbisdk/kq;)V

    invoke-direct {p0, p1, p5, v0}, Lcom/nbi/search/fuel/FuelSearchRequest;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/search/fuel/FuelSearchListener;Lnbisdk/ht;)V

    return-void
.end method

.method private a(Lcom/nbi/common/NBIContext;Lcom/nbi/search/fuel/FuelSearchListener;Lnbisdk/ht;)V
    .locals 2

    new-instance v0, Lcom/nbi/search/fuel/b;

    invoke-direct {v0, p0, p2}, Lcom/nbi/search/fuel/b;-><init>(Lcom/nbi/search/fuel/FuelSearchRequest;Lcom/nbi/search/fuel/FuelSearchListener;)V

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v1, Lnbisdk/n;

    invoke-direct {v1, v0}, Lnbisdk/n;-><init>(Lnbisdk/eo;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v1, v0}, Lnbisdk/bj;->a(Lnbisdk/n;Lcom/navbuilder/nb/e;)Lnbisdk/hi;

    move-result-object v0

    new-instance v1, Lnbisdk/rd;

    invoke-direct {v1, v0, p3}, Lnbisdk/rd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nbi/search/fuel/FuelSearchRequest;->gj:Lnbisdk/rd;

    return-void
.end method

.method private static ap(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "r"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/fuel/FuelSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/fuel/FuelSearchRequest;->gj:Lnbisdk/rd;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/fuel/FuelSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/search/fuel/FuelSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->aN()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hi;

    iget-object v1, p0, Lcom/nbi/search/fuel/FuelSearchRequest;->gj:Lnbisdk/rd;

    invoke-virtual {v1}, Lnbisdk/rd;->aO()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/ht;

    invoke-virtual {v0, v1}, Lnbisdk/hi;->a(Lnbisdk/ht;)V

    return-void
.end method
