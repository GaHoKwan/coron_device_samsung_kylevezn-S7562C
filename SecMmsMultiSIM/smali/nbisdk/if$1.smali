.class final Lnbisdk/if$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nbi/map/geocode/ReverseGeocodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/if;->a(Lnbisdk/au$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hQ:Lnbisdk/au$d;

.field private synthetic mO:Lnbisdk/if;


# direct methods
.method constructor <init>(Lnbisdk/if;Lnbisdk/au$d;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/if$1;->mO:Lnbisdk/if;

    iput-object p2, p0, Lnbisdk/if$1;->hQ:Lnbisdk/au$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestCancelled(Lcom/nbi/common/NBIRequest;)V
    .locals 0

    return-void
.end method

.method public final onRequestComplete(Lcom/nbi/common/NBIRequest;)V
    .locals 0

    return-void
.end method

.method public final onRequestError(Lcom/nbi/common/NBIException;Lcom/nbi/common/NBIRequest;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/if$1;->mO:Lnbisdk/if;

    iget-object v1, p0, Lnbisdk/if$1;->hQ:Lnbisdk/au$d;

    invoke-virtual {v0, v1}, Lnbisdk/if;->l(Lnbisdk/au$d;)V

    iget-object v0, p0, Lnbisdk/if$1;->hQ:Lnbisdk/au$d;

    iget-object v1, p0, Lnbisdk/if$1;->hQ:Lnbisdk/au$d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    return-void
.end method

.method public final onRequestProgress(ILcom/nbi/common/NBIRequest;)V
    .locals 0

    return-void
.end method

.method public final onRequestStart(Lcom/nbi/common/NBIRequest;)V
    .locals 0

    return-void
.end method

.method public final onRequestTimeOut(Lcom/nbi/common/NBIRequest;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/if$1;->mO:Lnbisdk/if;

    iget-object v1, p0, Lnbisdk/if$1;->hQ:Lnbisdk/au$d;

    invoke-virtual {v0, v1}, Lnbisdk/if;->l(Lnbisdk/au$d;)V

    iget-object v0, p0, Lnbisdk/if$1;->hQ:Lnbisdk/au$d;

    iget-object v1, p0, Lnbisdk/if$1;->hQ:Lnbisdk/au$d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    return-void
.end method

.method public final onReverseGeocode(Lcom/nbi/map/geocode/ReverseGeocodeInformation;Lcom/nbi/map/geocode/ReverseGeocodeRequest;)V
    .locals 3

    invoke-interface {p1}, Lcom/nbi/map/geocode/ReverseGeocodeInformation;->getMapLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getAreaName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nbi/map/data/Place;

    invoke-direct {v2, v1, v0}, Lcom/nbi/map/data/Place;-><init>(Ljava/lang/String;Lcom/nbi/map/data/MapLocation;)V

    iget-object v0, p0, Lnbisdk/if$1;->mO:Lnbisdk/if;

    iget-object v0, v0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/Pin;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/if$1;->mO:Lnbisdk/if;

    iget-object v0, v0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0, v2}, Lcom/nbi/map/android/Pin;->setPlace(Lcom/nbi/map/data/Place;)V

    iget-object v0, p0, Lnbisdk/if$1;->mO:Lnbisdk/if;

    iget-object v0, v0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/if$1;->mO:Lnbisdk/if;

    iget-object v0, v0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    iget-object v1, p0, Lnbisdk/if$1;->hQ:Lnbisdk/au$d;

    invoke-virtual {v1}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v1

    const-string v2, "pin_drag_to_move"

    invoke-virtual {v1, v2}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/Pin;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/if$1;->mO:Lnbisdk/if;

    iget-object v0, v0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/Pin;->setValidPlaceInfo(Z)V

    iget-object v0, p0, Lnbisdk/if$1;->hQ:Lnbisdk/au$d;

    iget-object v1, p0, Lnbisdk/if$1;->hQ:Lnbisdk/au$d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    return-void
.end method
