.class public Lcom/nbi/map/data/Pair;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private yC:Lnbisdk/vl;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/vl;

    iput-object p1, p0, Lcom/nbi/map/data/Pair;->yC:Lnbisdk/vl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/vl;

    invoke-direct {v0, p1, p2}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nbi/map/data/Pair;->yC:Lnbisdk/vl;

    return-void
.end method


# virtual methods
.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Pair;->yC:Lnbisdk/vl;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Pair;->yC:Lnbisdk/vl;

    invoke-virtual {v0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Pair;->yC:Lnbisdk/vl;

    invoke-virtual {v0}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Pair;->yC:Lnbisdk/vl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
