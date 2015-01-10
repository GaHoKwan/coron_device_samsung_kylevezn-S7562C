.class public Lcom/nbi/map/data/EventContent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private bw:Lnbisdk/je;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/je;

    iput-object p1, p0, Lcom/nbi/map/data/EventContent;->bw:Lnbisdk/je;

    return-void
.end method


# virtual methods
.method public getFormattedTextBlock()Lcom/nbi/map/data/FormattedTextBlock;
    .locals 2

    new-instance v0, Lcom/nbi/map/data/FormattedTextBlock;

    iget-object v1, p0, Lcom/nbi/map/data/EventContent;->bw:Lnbisdk/je;

    invoke-virtual {v1}, Lnbisdk/je;->bI()Lnbisdk/in;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/map/data/FormattedTextBlock;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventContent;->bw:Lnbisdk/je;

    return-object v0
.end method

.method public getMPAARating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventContent;->bw:Lnbisdk/je;

    invoke-virtual {v0}, Lnbisdk/je;->getMPAARating()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventContent;->bw:Lnbisdk/je;

    invoke-virtual {v0}, Lnbisdk/je;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatingStar()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventContent;->bw:Lnbisdk/je;

    invoke-virtual {v0}, Lnbisdk/je;->getRatingStar()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventContent;->bw:Lnbisdk/je;

    invoke-virtual {v0}, Lnbisdk/je;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRating()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/EventContent;->bw:Lnbisdk/je;

    invoke-virtual {v0}, Lnbisdk/je;->hasRating()Z

    move-result v0

    return v0
.end method
