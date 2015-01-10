.class final Lnbisdk/lk;
.super Lnbisdk/fi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic qT:Lnbisdk/ey;


# direct methods
.method constructor <init>(Lnbisdk/ey;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/lk;->qT:Lnbisdk/ey;

    invoke-direct {p0}, Lnbisdk/fi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nbi/remote/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/lk;->qT:Lnbisdk/ey;

    iget-object v0, v0, Lnbisdk/ey;->ik:Lnbisdk/pk;

    invoke-virtual {p1}, Lcom/nbi/remote/a;->ie()Lcom/navbuilder/nb/NBException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lnbisdk/pk;->onRequestError(I)V

    return-void
.end method

.method public final onRequestCancelled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/lk;->qT:Lnbisdk/ey;

    iget-object v0, v0, Lnbisdk/ey;->ik:Lnbisdk/pk;

    invoke-interface {v0}, Lnbisdk/pk;->onRequestCancelled()V

    return-void
.end method

.method public final onRequestComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/lk;->qT:Lnbisdk/ey;

    iget-object v0, v0, Lnbisdk/ey;->ik:Lnbisdk/pk;

    invoke-interface {v0}, Lnbisdk/pk;->onRequestComplete()V

    return-void
.end method

.method public final onRequestProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/lk;->qT:Lnbisdk/ey;

    iget-object v0, v0, Lnbisdk/ey;->ik:Lnbisdk/pk;

    invoke-interface {v0, p1}, Lnbisdk/pk;->onRequestProgress(I)V

    return-void
.end method

.method public final onRequestStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/lk;->qT:Lnbisdk/ey;

    iget-object v0, v0, Lnbisdk/ey;->ik:Lnbisdk/pk;

    invoke-interface {v0}, Lnbisdk/pk;->onRequestStart()V

    return-void
.end method

.method public final onRequestTimedOut()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/lk;->qT:Lnbisdk/ey;

    iget-object v0, v0, Lnbisdk/ey;->ik:Lnbisdk/pk;

    invoke-interface {v0}, Lnbisdk/pk;->onRequestTimedOut()V

    return-void
.end method

.method public final uploadComplete(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/lk;->qT:Lnbisdk/ey;

    iget-object v0, v0, Lnbisdk/ey;->ik:Lnbisdk/pk;

    invoke-interface {v0, p1, p2}, Lnbisdk/pk;->uploadComplete(Ljava/lang/String;I)V

    return-void
.end method
