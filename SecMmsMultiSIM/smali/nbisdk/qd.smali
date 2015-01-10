.class public final Lnbisdk/qd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/search/coupons/category/GetCategoryListInformation;


# instance fields
.field private sr:Lnbisdk/hy;


# direct methods
.method public constructor <init>(Lnbisdk/hy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passed reference cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnbisdk/qd;->sr:Lnbisdk/hy;

    return-void
.end method


# virtual methods
.method public final getBroadCategoryList()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnbisdk/qd;->sr:Lnbisdk/hy;

    invoke-interface {v0}, Lnbisdk/hy;->da()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method

.method public final getCategoryList()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnbisdk/qd;->sr:Lnbisdk/hy;

    invoke-interface {v0}, Lnbisdk/hy;->cZ()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method

.method public final getSubCategoryList()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnbisdk/qd;->sr:Lnbisdk/hy;

    invoke-interface {v0}, Lnbisdk/hy;->cW()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method
