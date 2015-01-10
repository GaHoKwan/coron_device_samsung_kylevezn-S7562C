.class public final Lnbisdk/mf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/search/image/LoadImageInformation;


# instance fields
.field private sI:Lnbisdk/dx;


# direct methods
.method public constructor <init>(Lnbisdk/dx;)V
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
    iput-object p1, p0, Lnbisdk/mf;->sI:Lnbisdk/dx;

    return-void
.end method


# virtual methods
.method public final getImage()Lcom/nbi/map/data/Image;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/mf;->sI:Lnbisdk/dx;

    invoke-interface {v0}, Lnbisdk/dx;->eE()Lnbisdk/ik;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jccCouponImage is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nbi/map/data/Image;

    iget-object v1, p0, Lnbisdk/mf;->sI:Lnbisdk/dx;

    invoke-interface {v1}, Lnbisdk/dx;->eE()Lnbisdk/ik;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/ik;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/mf;->sI:Lnbisdk/dx;

    invoke-interface {v2}, Lnbisdk/dx;->eE()Lnbisdk/ik;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/ik;->getImageBinary()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nbi/map/data/Image;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method
