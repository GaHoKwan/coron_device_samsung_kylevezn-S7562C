.class public Lnbisdk/cf;
.super Ljava/lang/Object;


# instance fields
.field private dO:Z

.field private dP:Z

.field private dQ:I

.field private dR:I

.field private dS:I

.field private dT:I

.field private dU:D

.field private dV:D

.field private dW:I

.field private dX:Lcom/nbi/map/data/Rectangle;

.field private dY:Z

.field private dZ:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lnbisdk/cf;)V
    .locals 2

    iget-boolean v0, p0, Lnbisdk/cf;->dO:Z

    iput-boolean v0, p1, Lnbisdk/cf;->dO:Z

    iget-boolean v0, p0, Lnbisdk/cf;->dP:Z

    iput-boolean v0, p1, Lnbisdk/cf;->dP:Z

    iget v0, p0, Lnbisdk/cf;->dQ:I

    iput v0, p1, Lnbisdk/cf;->dQ:I

    iget v0, p0, Lnbisdk/cf;->dR:I

    iput v0, p1, Lnbisdk/cf;->dR:I

    iget v0, p0, Lnbisdk/cf;->dS:I

    iput v0, p1, Lnbisdk/cf;->dS:I

    iget v0, p0, Lnbisdk/cf;->dT:I

    iput v0, p1, Lnbisdk/cf;->dT:I

    iget-wide v0, p0, Lnbisdk/cf;->dU:D

    iput-wide v0, p1, Lnbisdk/cf;->dU:D

    iget v0, p0, Lnbisdk/cf;->dW:I

    iput v0, p1, Lnbisdk/cf;->dW:I

    iget-boolean v0, p0, Lnbisdk/cf;->dY:Z

    iput-boolean v0, p1, Lnbisdk/cf;->dY:Z

    iget-object v0, p0, Lnbisdk/cf;->dX:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->makeClone()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    iput-object v0, p1, Lnbisdk/cf;->dX:Lcom/nbi/map/data/Rectangle;

    return-void
.end method

.method public final b(Lcom/nbi/map/data/Rectangle;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/cf;->dX:Lcom/nbi/map/data/Rectangle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v0}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v0, p0, Lnbisdk/cf;->dX:Lcom/nbi/map/data/Rectangle;

    :cond_0
    iget-object v0, p0, Lnbisdk/cf;->dX:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    iget-object v0, p0, Lnbisdk/cf;->dX:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    iget-object v0, p0, Lnbisdk/cf;->dX:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    iget-object v0, p0, Lnbisdk/cf;->dX:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    return-void
.end method

.method public final cA()I
    .locals 1

    iget v0, p0, Lnbisdk/cf;->dS:I

    return v0
.end method

.method public final cB()I
    .locals 1

    iget v0, p0, Lnbisdk/cf;->dT:I

    return v0
.end method

.method public final cC()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/cf;->dU:D

    return-wide v0
.end method

.method public final cD()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/cf;->dV:D

    return-wide v0
.end method

.method public final cE()I
    .locals 1

    iget v0, p0, Lnbisdk/cf;->dW:I

    return v0
.end method

.method public final cF()Lcom/nbi/map/data/Rectangle;
    .locals 1

    iget-object v0, p0, Lnbisdk/cf;->dX:Lcom/nbi/map/data/Rectangle;

    return-object v0
.end method

.method public final cG()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cf;->dY:Z

    return v0
.end method

.method public final cH()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cf;->dZ:Z

    return v0
.end method

.method public cx()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lnbisdk/cf;

    invoke-direct {v0}, Lnbisdk/cf;-><init>()V

    invoke-virtual {p0, v0}, Lnbisdk/cf;->a(Lnbisdk/cf;)V

    return-object v0
.end method

.method public final cy()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cf;->dP:Z

    return v0
.end method

.method public final cz()I
    .locals 1

    iget v0, p0, Lnbisdk/cf;->dQ:I

    return v0
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/cf;->dY:Z

    return-void
.end method

.method public final getCenter()Lcom/nbi/map/data/Coordinates;
    .locals 5

    new-instance v0, Lcom/nbi/map/data/Coordinates;

    iget-wide v1, p0, Lnbisdk/cf;->dU:D

    iget-wide v3, p0, Lnbisdk/cf;->dV:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    return-object v0
.end method

.method public final getZoomLevel()I
    .locals 1

    iget v0, p0, Lnbisdk/cf;->dR:I

    return v0
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/cf;->dZ:Z

    return-void
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/cf;->dO:Z

    return v0
.end method

.method public final n(I)V
    .locals 1

    iget v0, p0, Lnbisdk/cf;->dS:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lnbisdk/cf;->dS:I

    iput v0, p0, Lnbisdk/cf;->dR:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lnbisdk/cf;->dT:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lnbisdk/cf;->dT:I

    iput v0, p0, Lnbisdk/cf;->dR:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lnbisdk/cf;->dR:I

    goto :goto_0
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lnbisdk/cf;->dS:I

    return-void
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lnbisdk/cf;->dT:I

    return-void
.end method

.method public final q(I)V
    .locals 0

    iput p1, p0, Lnbisdk/cf;->dW:I

    return-void
.end method

.method public final setCenter(DD)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/cf;->dU:D

    iput-wide p3, p0, Lnbisdk/cf;->dV:D

    return-void
.end method

.method public final setCenter(Lcom/nbi/map/data/Coordinates;)V
    .locals 4

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lnbisdk/cf;->setCenter(DD)V

    return-void
.end method
