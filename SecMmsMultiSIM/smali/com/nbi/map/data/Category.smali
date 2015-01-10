.class public Lcom/nbi/map/data/Category;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private hK:Lnbisdk/qc;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/qc;

    iput-object p1, p0, Lcom/nbi/map/data/Category;->hK:Lnbisdk/qc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/qc;

    invoke-direct {v0, p1, p2}, Lnbisdk/qc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nbi/map/data/Category;->hK:Lnbisdk/qc;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Category;->hK:Lnbisdk/qc;

    invoke-virtual {v0}, Lnbisdk/qc;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Category;->hK:Lnbisdk/qc;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Category;->hK:Lnbisdk/qc;

    invoke-virtual {v0}, Lnbisdk/qc;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/Category;->hK:Lnbisdk/qc;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
