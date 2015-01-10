.class public Lcom/nbi/map/data/FuelType;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private AE:Lnbisdk/pf;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lnbisdk/pf;

    iput-object p1, p0, Lcom/nbi/map/data/FuelType;->AE:Lnbisdk/pf;

    return-void
.end method


# virtual methods
.method public getBrandName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelType;->AE:Lnbisdk/pf;

    invoke-virtual {v0}, Lnbisdk/pf;->getBrandName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelType;->AE:Lnbisdk/pf;

    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelType;->AE:Lnbisdk/pf;

    invoke-virtual {v0}, Lnbisdk/pf;->getTypeCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/data/FuelType;->AE:Lnbisdk/pf;

    invoke-virtual {v0}, Lnbisdk/pf;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
