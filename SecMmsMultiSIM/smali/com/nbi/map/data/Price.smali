.class public Lcom/nbi/map/data/Price;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private xL:Lnbisdk/hs;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/hs;

    iput-object p1, p0, Lcom/nbi/map/data/Price;->xL:Lnbisdk/hs;

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Price;->xL:Lnbisdk/hs;

    invoke-virtual {v0}, Lnbisdk/hs;->getCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Price;->xL:Lnbisdk/hs;

    return-object v0
.end method

.method public getUpdatedTime()J
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/Price;->xL:Lnbisdk/hs;

    invoke-virtual {v0}, Lnbisdk/hs;->getUpdatedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/data/Price;->xL:Lnbisdk/hs;

    invoke-virtual {v0}, Lnbisdk/hs;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/nbi/map/data/Price;->getValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nbi/map/data/Price;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
