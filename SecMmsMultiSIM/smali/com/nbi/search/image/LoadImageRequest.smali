.class public Lcom/nbi/search/image/LoadImageRequest;
.super Lcom/nbi/search/SearchRequest;

# interfaces
.implements Lcom/nbi/common/NBIObject;


# instance fields
.field private rj:Lnbisdk/no;

.field private rk:Lnbisdk/ce;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lcom/nbi/search/image/LoadImageListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/nbi/search/SearchRequest;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    new-instance v0, Lnbisdk/ce;

    invoke-direct {v0, p2}, Lnbisdk/ce;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nbi/search/image/LoadImageRequest;->rk:Lnbisdk/ce;

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v0, Lnbisdk/xf;

    invoke-direct {v0, p0, p3}, Lnbisdk/xf;-><init>(Lcom/nbi/search/image/LoadImageRequest;Lcom/nbi/search/image/LoadImageListener;)V

    new-instance v1, Lnbisdk/dj;

    invoke-direct {v1, v0}, Lnbisdk/dj;-><init>(Lnbisdk/zb;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v1, v0}, Lnbisdk/bj;->a(Lnbisdk/dj;Lcom/navbuilder/nb/e;)Lnbisdk/no;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/search/image/LoadImageRequest;->rj:Lnbisdk/no;

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "imageURL is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/image/LoadImageRequest;->rj:Lnbisdk/no;

    invoke-interface {v0}, Lnbisdk/no;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/image/LoadImageRequest;->rk:Lnbisdk/ce;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/image/LoadImageRequest;->rj:Lnbisdk/no;

    invoke-interface {v0}, Lnbisdk/no;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/search/image/LoadImageRequest;->rj:Lnbisdk/no;

    iget-object v1, p0, Lcom/nbi/search/image/LoadImageRequest;->rk:Lnbisdk/ce;

    invoke-interface {v0, v1}, Lnbisdk/no;->a(Lnbisdk/ce;)V

    return-void
.end method
