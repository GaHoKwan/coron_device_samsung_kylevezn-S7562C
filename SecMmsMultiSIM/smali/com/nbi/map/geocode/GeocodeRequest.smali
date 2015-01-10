.class public Lcom/nbi/map/geocode/GeocodeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;
.implements Lcom/nbi/common/NBIRequest;


# instance fields
.field private gC:Lnbisdk/um;

.field private gD:Lnbisdk/bf;

.field private gE:Lcom/nbi/map/geocode/GeocodeListener;

.field private gm:Lcom/nbi/common/NBIContext;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/Address;ILcom/nbi/map/geocode/GeocodeListener;)V
    .locals 9

    const/16 v1, 0x14

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-lt p3, v0, :cond_1

    if-gt p3, v1, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    new-instance v0, Lnbisdk/lc;

    invoke-direct {v0}, Lnbisdk/lc;-><init>()V

    const-string v1, ""

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getStreet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getCounty()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getPostal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lnbisdk/lc;->setAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnbisdk/bf;

    invoke-direct {v1, v0}, Lnbisdk/bf;-><init>(Lnbisdk/lc;)V

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/nbi/map/geocode/GeocodeRequest;->a(Lcom/nbi/common/NBIContext;Lnbisdk/bf;ILcom/nbi/map/geocode/GeocodeListener;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lt p3, v0, :cond_4

    if-gt p3, v1, :cond_4

    if-nez p3, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/Address;Ljava/lang/String;ILcom/nbi/map/geocode/GeocodeListener;)V
    .locals 8

    const/16 v1, 0x14

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-lt p4, v0, :cond_1

    if-gt p4, v1, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    new-instance v0, Lnbisdk/lc;

    invoke-direct {v0}, Lnbisdk/lc;-><init>()V

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getCounty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getPostal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/nbi/map/data/Address;->getCountry()Ljava/lang/String;

    move-result-object v7

    move-object v1, p3

    invoke-virtual/range {v0 .. v7}, Lnbisdk/lc;->setIntersection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnbisdk/bf;

    invoke-direct {v1, v0}, Lnbisdk/bf;-><init>(Lnbisdk/lc;)V

    invoke-direct {p0, p1, v1, p4, p5}, Lcom/nbi/map/geocode/GeocodeRequest;->a(Lcom/nbi/common/NBIContext;Lnbisdk/bf;ILcom/nbi/map/geocode/GeocodeListener;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crossStreet is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-lt p4, v0, :cond_5

    if-gt p4, v1, :cond_5

    if-nez p4, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/data/MapLocation;ILcom/nbi/map/geocode/GeocodeListener;)V
    .locals 2

    const/16 v1, 0x14

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-lt p3, v0, :cond_1

    if-gt p3, v1, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    new-instance v1, Lnbisdk/bf;

    invoke-virtual {p2}, Lcom/nbi/map/data/MapLocation;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/lc;

    invoke-direct {v1, v0}, Lnbisdk/bf;-><init>(Lnbisdk/lc;)V

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/nbi/map/geocode/GeocodeRequest;->a(Lcom/nbi/common/NBIContext;Lnbisdk/bf;ILcom/nbi/map/geocode/GeocodeListener;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "location is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lt p3, v0, :cond_4

    if-gt p3, v1, :cond_4

    if-nez p3, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lcom/nbi/map/geocode/GeocodeInformation;ILcom/nbi/map/geocode/GeocodeListener;)V
    .locals 4

    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    if-eq p3, v0, :cond_0

    if-ne p3, v1, :cond_2

    :cond_0
    new-instance v1, Lnbisdk/bf;

    invoke-interface {p2}, Lcom/nbi/map/geocode/GeocodeInformation;->getJccLocation()Lnbisdk/lc;

    move-result-object v2

    invoke-interface {p2}, Lcom/nbi/map/geocode/GeocodeInformation;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/gc;

    int-to-byte v3, p3

    invoke-direct {v1, v2, v0, v3}, Lnbisdk/bf;-><init>(Lnbisdk/lc;Lnbisdk/gc;B)V

    iput-object v1, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gD:Lnbisdk/bf;

    iput-object p1, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gm:Lcom/nbi/common/NBIContext;

    iput-object p4, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gE:Lcom/nbi/map/geocode/GeocodeListener;

    new-instance v0, Lcom/nbi/map/geocode/a;

    iget-object v1, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gE:Lcom/nbi/map/geocode/GeocodeListener;

    invoke-direct {v0, p0, v1}, Lcom/nbi/map/geocode/a;-><init>(Lcom/nbi/map/geocode/GeocodeRequest;Lcom/nbi/map/geocode/GeocodeListener;)V

    iget-object v1, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gm:Lcom/nbi/common/NBIContext;

    invoke-virtual {v1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v1, Lnbisdk/ot;

    invoke-direct {v1, v0}, Lnbisdk/ot;-><init>(Lnbisdk/rl;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v1, v0}, Lnbisdk/bj;->a(Lnbisdk/ot;Lcom/navbuilder/nb/e;)Lnbisdk/um;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gC:Lnbisdk/um;

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

    const-string v1, "information is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p4, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eq p3, v0, :cond_1

    if-eq p3, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect iterationCommand"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;ILcom/nbi/map/geocode/GeocodeListener;)V
    .locals 2

    const/16 v1, 0x14

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-lt p3, v0, :cond_1

    if-gt p3, v1, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    new-instance v0, Lnbisdk/lc;

    invoke-direct {v0}, Lnbisdk/lc;-><init>()V

    invoke-virtual {v0, p2}, Lnbisdk/lc;->setAirport(Ljava/lang/String;)V

    new-instance v1, Lnbisdk/bf;

    invoke-direct {v1, v0}, Lnbisdk/bf;-><init>(Lnbisdk/lc;)V

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/nbi/map/geocode/GeocodeRequest;->a(Lcom/nbi/common/NBIContext;Lnbisdk/bf;ILcom/nbi/map/geocode/GeocodeListener;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "airport is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lt p3, v0, :cond_4

    if-gt p3, v1, :cond_4

    if-nez p3, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Ljava/lang/String;ILcom/nbi/map/geocode/GeocodeListener;)V
    .locals 2

    const/16 v1, 0x14

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-lt p4, v0, :cond_1

    if-gt p4, v1, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    new-instance v0, Lnbisdk/lc;

    invoke-direct {v0}, Lnbisdk/lc;-><init>()V

    invoke-virtual {v0, p2}, Lnbisdk/lc;->setFreeform(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lnbisdk/lc;->setCountry(Ljava/lang/String;)V

    new-instance v1, Lnbisdk/bf;

    invoke-direct {v1, v0}, Lnbisdk/bf;-><init>(Lnbisdk/lc;)V

    invoke-direct {p0, p1, v1, p4, p5}, Lcom/nbi/map/geocode/GeocodeRequest;->a(Lcom/nbi/common/NBIContext;Lnbisdk/bf;ILcom/nbi/map/geocode/GeocodeListener;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "freeform is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "country is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-lt p4, v0, :cond_5

    if-gt p4, v1, :cond_5

    if-nez p4, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sliceSize is incorrect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/nbi/common/NBIContext;Lnbisdk/bf;ILcom/nbi/map/geocode/GeocodeListener;)V
    .locals 3

    iput-object p2, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gD:Lnbisdk/bf;

    iput-object p1, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gm:Lcom/nbi/common/NBIContext;

    iput-object p4, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gE:Lcom/nbi/map/geocode/GeocodeListener;

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const/16 p3, 0xa

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gD:Lnbisdk/bf;

    new-instance v1, Lnbisdk/pi;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p3}, Lnbisdk/pi;-><init>(II)V

    invoke-virtual {v0, v1}, Lnbisdk/bf;->a(Lnbisdk/pi;)V

    new-instance v0, Lcom/nbi/map/geocode/a;

    iget-object v1, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gE:Lcom/nbi/map/geocode/GeocodeListener;

    invoke-direct {v0, p0, v1}, Lcom/nbi/map/geocode/a;-><init>(Lcom/nbi/map/geocode/GeocodeRequest;Lcom/nbi/map/geocode/GeocodeListener;)V

    iget-object v1, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gm:Lcom/nbi/common/NBIContext;

    invoke-virtual {v1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v1, Lnbisdk/ot;

    invoke-direct {v1, v0}, Lnbisdk/ot;-><init>(Lnbisdk/rl;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v1, v0}, Lnbisdk/bj;->a(Lnbisdk/ot;Lcom/navbuilder/nb/e;)Lnbisdk/um;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gC:Lnbisdk/um;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gC:Lnbisdk/um;

    invoke-virtual {v0}, Lnbisdk/um;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gC:Lnbisdk/um;

    return-object v0
.end method

.method final getJccLocation()Lnbisdk/lc;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gD:Lnbisdk/bf;

    invoke-virtual {v0}, Lnbisdk/bf;->ba()Lnbisdk/lc;

    move-result-object v0

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gC:Lnbisdk/um;

    invoke-virtual {v0}, Lnbisdk/um;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gC:Lnbisdk/um;

    iget-object v1, p0, Lcom/nbi/map/geocode/GeocodeRequest;->gD:Lnbisdk/bf;

    invoke-virtual {v0, v1}, Lnbisdk/um;->a(Lnbisdk/bf;)V

    return-void
.end method
