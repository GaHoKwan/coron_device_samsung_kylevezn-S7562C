.class public final Lcom/nbi/remote/location/l;
.super Lcom/nbi/remote/location/h$a;


# instance fields
.field private CY:Lnbisdk/jp;


# direct methods
.method constructor <init>(Lnbisdk/jp;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbi/remote/location/h$a;-><init>()V

    iput-object p1, p0, Lcom/nbi/remote/location/l;->CY:Lnbisdk/jp;

    return-void
.end method


# virtual methods
.method public final a(Lcom/nbi/remote/location/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/remote/location/l;->CY:Lnbisdk/jp;

    invoke-virtual {p1}, Lcom/nbi/remote/location/g;->kb()Lnbisdk/nb;

    move-result-object v1

    invoke-interface {v0, v1}, Lnbisdk/jp;->a(Lnbisdk/nb;)V

    return-void
.end method

.method public final onLocationError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/remote/location/l;->CY:Lnbisdk/jp;

    invoke-interface {v0, p1}, Lnbisdk/jp;->onLocationError(I)V

    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/remote/location/l;->CY:Lnbisdk/jp;

    invoke-interface {v0, p1}, Lnbisdk/jp;->providerStateChanged(I)V

    return-void
.end method
