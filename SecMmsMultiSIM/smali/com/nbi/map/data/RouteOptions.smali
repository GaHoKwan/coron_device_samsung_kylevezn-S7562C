.class public Lcom/nbi/map/data/RouteOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# static fields
.field public static final AVOID_HIGHWAY:I = 0x4

.field public static final AVOID_HOV:I = 0x1

.field public static final AVOID_TOLL:I = 0x2

.field public static final ROUTE_EASIEST:I = 0x2

.field public static final ROUTE_FASTEST:I = 0x0

.field public static final ROUTE_SHORTEST:I = 0x1

.field public static final TRANSPORTATION_MODE_BICYCLE:I = 0x2

.field public static final TRANSPORTATION_MODE_CAR:I = 0x0

.field public static final TRANSPORTATION_MODE_PEDESTRIAN:I = 0x3

.field public static final TRANSPORTATION_MODE_TRUCK:I = 0x1


# instance fields
.field private hy:Lnbisdk/br;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/nbi/map/data/RouteOptions;->M(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "avoid is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnbisdk/br;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p2, p3}, Lnbisdk/br;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/br;

    iput-object p1, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    return-void
.end method

.method private static M(I)Z
    .locals 1

    and-int/lit8 v0, p0, -0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/nbi/map/data/RouteOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/nbi/map/data/RouteOptions;

    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    invoke-virtual {p1}, Lcom/nbi/map/data/RouteOptions;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/br;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAvoidFeatures()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    invoke-virtual {v0}, Lnbisdk/br;->getAvoidFeatures()I

    move-result v0

    return v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    return-object v0
.end method

.method public getRouteType()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    invoke-virtual {v0}, Lnbisdk/br;->getRouteType()I

    move-result v0

    return v0
.end method

.method public getTransportationMode()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    invoke-virtual {v0}, Lnbisdk/br;->bM()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    invoke-virtual {v0}, Lnbisdk/br;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAuto()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    invoke-virtual {v0}, Lnbisdk/br;->isAuto()Z

    move-result v0

    return v0
.end method

.method public isPedestrian()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    invoke-virtual {v0}, Lnbisdk/br;->isPedestrian()Z

    move-result v0

    return v0
.end method

.method public setAvoidFeatures(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/nbi/map/data/RouteOptions;->M(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "avoid is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    invoke-virtual {v0, p1}, Lnbisdk/br;->setAvoidFeatures(I)V

    return-void
.end method

.method public setRouteType(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    invoke-virtual {v0, p1}, Lnbisdk/br;->setRouteType(I)V

    return-void
.end method

.method public setTransportationMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    invoke-virtual {v0, p1}, Lnbisdk/br;->j(I)V

    return-void
.end method

.method public wantAvoid(I)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/RouteOptions;->hy:Lnbisdk/br;

    invoke-virtual {v0, p1}, Lnbisdk/br;->wantAvoid(I)Z

    move-result v0

    return v0
.end method
