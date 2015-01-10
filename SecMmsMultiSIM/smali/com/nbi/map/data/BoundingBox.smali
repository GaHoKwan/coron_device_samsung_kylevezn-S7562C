.class public Lcom/nbi/map/data/BoundingBox;
.super Ljava/lang/Object;


# instance fields
.field private EN:Lcom/nbi/map/data/Coordinates;

.field private EO:Lcom/nbi/map/data/Coordinates;


# direct methods
.method public constructor <init>(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/nbi/map/data/BoundingBox;->setPoint1(Lcom/nbi/map/data/Coordinates;)V

    invoke-virtual {p0, p2}, Lcom/nbi/map/data/BoundingBox;->setPoint2(Lcom/nbi/map/data/Coordinates;)V

    return-void
.end method


# virtual methods
.method public containsPoint(Lcom/nbi/map/data/Coordinates;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nbi/map/data/BoundingBox;->EN:Lcom/nbi/map/data/Coordinates;

    iget-wide v0, v0, Lcom/nbi/map/data/Coordinates;->sp:D

    iget-wide v2, p1, Lcom/nbi/map/data/Coordinates;->sp:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/nbi/map/data/Coordinates;->sp:D

    iget-object v2, p0, Lcom/nbi/map/data/BoundingBox;->EO:Lcom/nbi/map/data/Coordinates;

    iget-wide v2, v2, Lcom/nbi/map/data/Coordinates;->sp:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/data/BoundingBox;->EN:Lcom/nbi/map/data/Coordinates;

    iget-wide v0, v0, Lcom/nbi/map/data/Coordinates;->sq:D

    iget-wide v2, p1, Lcom/nbi/map/data/Coordinates;->sq:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p1, Lcom/nbi/map/data/Coordinates;->sq:D

    iget-object v2, p0, Lcom/nbi/map/data/BoundingBox;->EO:Lcom/nbi/map/data/Coordinates;

    iget-wide v2, v2, Lcom/nbi/map/data/Coordinates;->sq:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPoint1()Lcom/nbi/map/data/Coordinates;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/BoundingBox;->EN:Lcom/nbi/map/data/Coordinates;

    return-object v0
.end method

.method public getPoint2()Lcom/nbi/map/data/Coordinates;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/BoundingBox;->EO:Lcom/nbi/map/data/Coordinates;

    return-object v0
.end method

.method public final setPoint1(Lcom/nbi/map/data/Coordinates;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nbi/map/data/BoundingBox;->EN:Lcom/nbi/map/data/Coordinates;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "point1 is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setPoint2(Lcom/nbi/map/data/Coordinates;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nbi/map/data/BoundingBox;->EO:Lcom/nbi/map/data/Coordinates;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "point2 is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
