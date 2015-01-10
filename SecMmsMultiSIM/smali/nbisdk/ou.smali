.class final Lnbisdk/ou;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/ds;


# instance fields
.field private synthetic uC:Lnbisdk/es;


# direct methods
.method constructor <init>(Lnbisdk/es;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/nb;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnbisdk/fb;->vk:Z

    iget-object v0, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    invoke-static {v0}, Lnbisdk/es;->a(Lnbisdk/es;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnbisdk/es;->a(Lnbisdk/es;Z)Z

    iget-object v0, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    invoke-virtual {v0, p1}, Lnbisdk/fb;->d(Lnbisdk/nb;)V

    :cond_1
    iget-object v0, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    invoke-virtual {v0}, Lnbisdk/fb;->cancel()Z

    goto :goto_0
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnbisdk/fb;->vk:Z

    iget-object v0, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    invoke-virtual {v0}, Lnbisdk/fb;->lN()V

    return-void
.end method

.method public final onLocationError(I)V
    .locals 2

    iget-object v0, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnbisdk/fb;->vk:Z

    iget-object v0, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    invoke-virtual {v0, p1}, Lnbisdk/fb;->be(I)V

    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    iget-object v0, v0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ou;->uC:Lnbisdk/es;

    iget-object v0, v0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    invoke-interface {v0, p1}, Lnbisdk/ds;->providerStateChanged(I)V

    :cond_0
    return-void
.end method
