.class public final Lnbisdk/ec;
.super Lnbisdk/hz;

# interfaces
.implements Lnbisdk/zb;


# direct methods
.method public constructor <init>(Lcom/nbi/map/search/image/LoadImageRequest;Lcom/nbi/map/search/image/LoadImageListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/hz;-><init>(Lcom/nbi/common/NBIRequest;Lcom/nbi/common/NBIListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/dx;Lnbisdk/no;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/hz;->mListener:Lcom/nbi/common/NBIListener;

    check-cast v0, Lcom/nbi/map/search/image/LoadImageListener;

    new-instance v2, Lnbisdk/wq;

    invoke-direct {v2, p1}, Lnbisdk/wq;-><init>(Lnbisdk/dx;)V

    iget-object v1, p0, Lnbisdk/hz;->mRequest:Lcom/nbi/common/NBIRequest;

    check-cast v1, Lcom/nbi/map/search/image/LoadImageRequest;

    invoke-interface {v0, v2, v1}, Lcom/nbi/map/search/image/LoadImageListener;->onLoadImage(Lcom/nbi/map/search/image/LoadImageInformation;Lcom/nbi/map/search/image/LoadImageRequest;)V

    return-void
.end method
