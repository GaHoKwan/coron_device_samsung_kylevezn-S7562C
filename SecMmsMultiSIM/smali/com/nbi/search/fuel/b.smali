.class final Lcom/nbi/search/fuel/b;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/eo;


# direct methods
.method public constructor <init>(Lcom/nbi/search/fuel/FuelSearchRequest;Lcom/nbi/search/fuel/FuelSearchListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/hc;Lnbisdk/hi;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/search/fuel/FuelSearchListener;

    new-instance v2, Lcom/nbi/search/fuel/a;

    invoke-direct {v2, p1}, Lcom/nbi/search/fuel/a;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/search/fuel/FuelSearchRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/search/fuel/FuelSearchListener;->onFuelSearch(Lcom/nbi/search/fuel/FuelSearchInformation;Lcom/nbi/search/fuel/FuelSearchRequest;)V

    return-void
.end method
