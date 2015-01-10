.class public Lcom/nbi/map/data/Coordinates;
.super Ljava/lang/Object;


# instance fields
.field sp:D

.field sq:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/nbi/map/data/Coordinates;->sp:D

    iput-wide p3, p0, Lcom/nbi/map/data/Coordinates;->sq:D

    return-void
.end method


# virtual methods
.method public equal(Lcom/nbi/map/data/Coordinates;)Z
    .locals 4

    iget-wide v0, p0, Lcom/nbi/map/data/Coordinates;->sp:D

    iget-wide v2, p1, Lcom/nbi/map/data/Coordinates;->sp:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/nbi/map/data/Coordinates;->sq:D

    iget-wide v2, p1, Lcom/nbi/map/data/Coordinates;->sq:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/map/data/Coordinates;->sp:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/map/data/Coordinates;->sq:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/nbi/map/data/Coordinates;->sp:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/nbi/map/data/Coordinates;->sq:D

    return-void
.end method
