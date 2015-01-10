.class public Lcom/nbi/map/data/Rectangle;
.super Ljava/lang/Object;


# instance fields
.field private rE:I

.field private rF:I

.field private rG:I

.field private rH:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    iput v0, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    iput v0, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    iput v0, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    iput p1, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    iput p3, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    iput p4, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    return-void
.end method

.method private static c(IIII)Z
    .locals 1

    const/4 v0, 0x1

    if-gt p0, p2, :cond_1

    if-lt p1, p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le p1, p2, :cond_2

    if-le p1, p3, :cond_0

    :cond_2
    if-lt p0, p2, :cond_3

    if-lt p0, p3, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public contains(IIII)Z
    .locals 2

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    if-gt v0, p2, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    iget v1, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    add-int/2addr v0, v1

    add-int v1, p1, p3

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    iget v1, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    add-int/2addr v0, v1

    add-int v1, p2, p4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/nbi/map/data/Rectangle;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rectangle is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lcom/nbi/map/data/Rectangle;->rF:I

    iget v1, p1, Lcom/nbi/map/data/Rectangle;->rE:I

    iget v2, p1, Lcom/nbi/map/data/Rectangle;->rG:I

    iget v3, p1, Lcom/nbi/map/data/Rectangle;->rH:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nbi/map/data/Rectangle;->contains(IIII)Z

    move-result v0

    return v0
.end method

.method protected copyTo(Lcom/nbi/map/data/Rectangle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rectangle is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    iput v0, p1, Lcom/nbi/map/data/Rectangle;->rE:I

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    iput v0, p1, Lcom/nbi/map/data/Rectangle;->rF:I

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    iput v0, p1, Lcom/nbi/map/data/Rectangle;->rG:I

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    iput v0, p1, Lcom/nbi/map/data/Rectangle;->rH:I

    return-void
.end method

.method public equals(IIII)Z
    .locals 1

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    return v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    return v0
.end method

.method public intersects(IIII)Z
    .locals 3

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    iget v1, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    iget v2, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    add-int/2addr v1, v2

    add-int v2, p1, p3

    invoke-static {v0, v1, p1, v2}, Lcom/nbi/map/data/Rectangle;->c(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    iget v1, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    iget v2, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    add-int/2addr v1, v2

    add-int v2, p2, p4

    invoke-static {v0, v1, p2, v2}, Lcom/nbi/map/data/Rectangle;->c(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intersects(Lcom/nbi/map/data/Rectangle;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rectangle is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    iget v1, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    iget v2, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/nbi/map/data/Rectangle;->rF:I

    iget v3, p1, Lcom/nbi/map/data/Rectangle;->rF:I

    iget v4, p1, Lcom/nbi/map/data/Rectangle;->rG:I

    add-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/nbi/map/data/Rectangle;->c(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    iget v1, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    iget v2, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/nbi/map/data/Rectangle;->rE:I

    iget v3, p1, Lcom/nbi/map/data/Rectangle;->rE:I

    iget v4, p1, Lcom/nbi/map/data/Rectangle;->rH:I

    add-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/nbi/map/data/Rectangle;->c(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointInRectangle(II)Z
    .locals 2

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    iget v1, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    if-gt v0, p2, :cond_0

    iget v0, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    iget v1, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    add-int/2addr v0, v1

    if-le v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeClone()Lcom/nbi/map/data/Rectangle;
    .locals 1

    new-instance v0, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v0}, Lcom/nbi/map/data/Rectangle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/nbi/map/data/Rectangle;->copyTo(Lcom/nbi/map/data/Rectangle;)V

    return-object v0
.end method

.method public set(IIII)V
    .locals 1

    iput p1, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    iput p2, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    sub-int v0, p3, p1

    iput v0, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    sub-int v0, p4, p2

    iput v0, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    return-void
.end method

.method public set(Lcom/nbi/map/data/Rectangle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rectangle is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v0

    iput v0, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nbi/map/data/Rectangle;->rF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nbi/map/data/Rectangle;->rE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nbi/map/data/Rectangle;->rG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nbi/map/data/Rectangle;->rH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
