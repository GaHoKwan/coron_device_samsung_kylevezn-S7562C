.class public final Lcom/nbi/remote/location/k;
.super Lcom/nbi/remote/location/b$a;


# instance fields
.field private oC:Lnbisdk/ds;


# direct methods
.method public constructor <init>(Lnbisdk/ds;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbi/remote/location/b$a;-><init>()V

    iput-object p1, p0, Lcom/nbi/remote/location/k;->oC:Lnbisdk/ds;

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

    invoke-virtual {p1}, Lcom/nbi/remote/location/g;->kb()Lnbisdk/nb;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/remote/location/k;->oC:Lnbisdk/ds;

    invoke-interface {v1, v0}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    return-void
.end method

.method public final f(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/remote/location/k;->oC:Lnbisdk/ds;

    invoke-interface {v0, p1}, Lnbisdk/ds;->f(I)V

    return-void
.end method

.method public final onLocationError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/remote/location/k;->oC:Lnbisdk/ds;

    invoke-interface {v0, p1}, Lnbisdk/ds;->onLocationError(I)V

    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/remote/location/k;->oC:Lnbisdk/ds;

    invoke-interface {v0, p1}, Lnbisdk/ds;->providerStateChanged(I)V

    return-void
.end method
