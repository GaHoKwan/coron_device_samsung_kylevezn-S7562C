.class final Lcom/nbi/search/coupons/store/b;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/mz;


# direct methods
.method public constructor <init>(Lcom/nbi/search/coupons/store/StoreSearchRequest;Lcom/nbi/search/coupons/store/StoreSearchListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/kb;Lnbisdk/nm;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/search/coupons/store/StoreSearchListener;

    new-instance v2, Lcom/nbi/search/coupons/store/a;

    invoke-direct {v2, p1}, Lcom/nbi/search/coupons/store/a;-><init>(Lnbisdk/kb;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/search/coupons/store/StoreSearchRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/search/coupons/store/StoreSearchListener;->onStore(Lcom/nbi/search/coupons/store/StoreSearchInformation;Lcom/nbi/search/coupons/store/StoreSearchRequest;)V

    return-void
.end method
