.class public Lcom/nbi/map/data/Point;
.super Ljava/lang/Object;


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nbi/map/data/Point;->x:I

    iput p2, p0, Lcom/nbi/map/data/Point;->y:I

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/data/Point;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/data/Point;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/data/Point;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/data/Point;->y:I

    return-void
.end method
