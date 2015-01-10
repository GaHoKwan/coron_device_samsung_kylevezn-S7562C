.class public Lcom/nbi/map/data/MapVector;
.super Ljava/lang/Object;


# instance fields
.field private vw:D

.field private wL:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/nbi/map/data/MapVector;->vw:D

    iput-wide p3, p0, Lcom/nbi/map/data/MapVector;->wL:D

    return-void
.end method


# virtual methods
.method public getDirection()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/map/data/MapVector;->wL:D

    return-wide v0
.end method

.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/nbi/map/data/MapVector;->vw:D

    return-wide v0
.end method

.method public setDirection(D)V
    .locals 0

    iput-wide p1, p0, Lcom/nbi/map/data/MapVector;->wL:D

    return-void
.end method

.method public setLength(D)V
    .locals 0

    iput-wide p1, p0, Lcom/nbi/map/data/MapVector;->vw:D

    return-void
.end method
