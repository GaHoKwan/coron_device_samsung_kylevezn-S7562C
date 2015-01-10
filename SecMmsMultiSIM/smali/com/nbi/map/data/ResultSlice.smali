.class public Lcom/nbi/map/data/ResultSlice;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private fp:Lnbisdk/pi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/pi;

    invoke-direct {v0}, Lnbisdk/pi;-><init>()V

    iput-object v0, p0, Lcom/nbi/map/data/ResultSlice;->fp:Lnbisdk/pi;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/pi;

    invoke-direct {v0, p1, p2}, Lnbisdk/pi;-><init>(II)V

    iput-object v0, p0, Lcom/nbi/map/data/ResultSlice;->fp:Lnbisdk/pi;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/pi;

    iput-object p1, p0, Lcom/nbi/map/data/ResultSlice;->fp:Lnbisdk/pi;

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ResultSlice;->fp:Lnbisdk/pi;

    invoke-virtual {v0}, Lnbisdk/pi;->getEnd()I

    move-result v0

    return v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ResultSlice;->fp:Lnbisdk/pi;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ResultSlice;->fp:Lnbisdk/pi;

    invoke-virtual {v0}, Lnbisdk/pi;->getStart()I

    move-result v0

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ResultSlice;->fp:Lnbisdk/pi;

    invoke-virtual {v0}, Lnbisdk/pi;->getTotal()I

    move-result v0

    return v0
.end method

.method public setEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ResultSlice;->fp:Lnbisdk/pi;

    invoke-virtual {v0, p1}, Lnbisdk/pi;->setEnd(I)V

    return-void
.end method

.method public setStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ResultSlice;->fp:Lnbisdk/pi;

    invoke-virtual {v0, p1}, Lnbisdk/pi;->setStart(I)V

    return-void
.end method

.method public setTotal(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ResultSlice;->fp:Lnbisdk/pi;

    invoke-virtual {v0, p1}, Lnbisdk/pi;->setTotal(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/ResultSlice;->fp:Lnbisdk/pi;

    invoke-virtual {v0}, Lnbisdk/pi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
