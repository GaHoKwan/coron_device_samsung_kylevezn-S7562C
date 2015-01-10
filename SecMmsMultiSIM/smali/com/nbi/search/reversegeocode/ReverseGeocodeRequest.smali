.class public Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/common/NBIObject;
.implements Lcom/nbi/common/NBIRequest;


# instance fields
.field private gk:Lnbisdk/gk;

.field private gl:Lnbisdk/td;

.field private gm:Lcom/nbi/common/NBIContext;

.field private gn:Lcom/nbi/search/reversegeocode/ReverseGeocodeListener;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;DDZLcom/nbi/search/reversegeocode/ReverseGeocodeListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p7, :cond_1

    iput-object p1, p0, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;->gm:Lcom/nbi/common/NBIContext;

    iput-object p7, p0, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;->gn:Lcom/nbi/search/reversegeocode/ReverseGeocodeListener;

    new-instance v0, Lnbisdk/td;

    invoke-direct {v0, p2, p3, p4, p5}, Lnbisdk/td;-><init>(DD)V

    iput-object v0, p0, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;->gl:Lnbisdk/td;

    new-instance v0, Lcom/nbi/search/reversegeocode/a;

    iget-object v1, p0, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;->gn:Lcom/nbi/search/reversegeocode/ReverseGeocodeListener;

    invoke-direct {v0, p0, v1}, Lcom/nbi/search/reversegeocode/a;-><init>(Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;Lcom/nbi/search/reversegeocode/ReverseGeocodeListener;)V

    iget-object v1, p0, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;->gm:Lcom/nbi/common/NBIContext;

    invoke-virtual {v1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    new-instance v1, Lnbisdk/ko;

    invoke-direct {v1, v0}, Lnbisdk/ko;-><init>(Lnbisdk/eh;)V

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-static {v1, v0}, Lnbisdk/bj;->a(Lnbisdk/ko;Lcom/navbuilder/nb/e;)Lnbisdk/gk;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;->gk:Lnbisdk/gk;

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p7, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;->gk:Lnbisdk/gk;

    invoke-virtual {v0}, Lnbisdk/gk;->cancelRequest()V

    return-void
.end method

.method public getInternalObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;->gk:Lnbisdk/gk;

    return-object v0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;->gk:Lnbisdk/gk;

    invoke-virtual {v0}, Lnbisdk/gk;->isRequestInProgress()Z

    move-result v0

    return v0
.end method

.method public startRequest()V
    .locals 2

    iget-object v0, p0, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;->gk:Lnbisdk/gk;

    iget-object v1, p0, Lcom/nbi/search/reversegeocode/ReverseGeocodeRequest;->gl:Lnbisdk/td;

    invoke-virtual {v0, v1}, Lnbisdk/gk;->a(Lnbisdk/td;)V

    return-void
.end method
