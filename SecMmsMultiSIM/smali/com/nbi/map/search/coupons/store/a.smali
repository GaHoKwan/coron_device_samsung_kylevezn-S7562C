.class final Lcom/nbi/map/search/coupons/store/a;
.super Lcom/nbi/map/search/coupons/store/StoreSearchInformation;


# instance fields
.field private an:Lnbisdk/kb;


# direct methods
.method public constructor <init>(Lnbisdk/kb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/nbi/map/search/coupons/store/StoreSearchInformation;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "impl cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/nbi/map/search/coupons/store/a;->an:Lnbisdk/kb;

    return-void
.end method


# virtual methods
.method public final getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/coupons/store/a;->an:Lnbisdk/kb;

    return-object v0
.end method

.method public final getStore(I)Lcom/nbi/coupons/data/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/map/search/coupons/store/a;->an:Lnbisdk/kb;

    invoke-interface {v0, p1}, Lnbisdk/kb;->aH(I)Lnbisdk/jb;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/cm;->a(Lnbisdk/jb;)Lcom/nbi/coupons/data/Store;

    move-result-object v0

    return-object v0
.end method

.method public final getStoreCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/coupons/store/a;->an:Lnbisdk/kb;

    invoke-interface {v0}, Lnbisdk/kb;->getStoreCount()I

    move-result v0

    return v0
.end method

.method public final hasMoreResult()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/search/coupons/store/a;->an:Lnbisdk/kb;

    invoke-interface {v0}, Lnbisdk/kb;->hasMoreResult()Z

    move-result v0

    return v0
.end method
