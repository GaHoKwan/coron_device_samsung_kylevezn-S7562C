.class final Lnbisdk/os;
.super Lnbisdk/mj;


# instance fields
.field private synthetic uB:Lnbisdk/ab;


# direct methods
.method constructor <init>(Lnbisdk/ab;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/os;->uB:Lnbisdk/ab;

    invoke-direct {p0}, Lnbisdk/mj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/nb;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/os;->uB:Lnbisdk/ab;

    iput-object p1, v0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    iget-object v0, p0, Lnbisdk/os;->uB:Lnbisdk/ab;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnbisdk/fb;->vk:Z

    iget-object v0, p0, Lnbisdk/os;->uB:Lnbisdk/ab;

    iget-object v1, p0, Lnbisdk/os;->uB:Lnbisdk/ab;

    iget-object v1, v1, Lnbisdk/fb;->vg:Lnbisdk/nb;

    invoke-virtual {v0, v1}, Lnbisdk/fb;->d(Lnbisdk/nb;)V

    iget-object v0, p0, Lnbisdk/os;->uB:Lnbisdk/ab;

    invoke-virtual {v0}, Lnbisdk/ab;->cancel()Z

    goto :goto_0
.end method

.method public final onLocationError(I)V
    .locals 2

    iget-object v0, p0, Lnbisdk/os;->uB:Lnbisdk/ab;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnbisdk/fb;->vk:Z

    iget-object v0, p0, Lnbisdk/os;->uB:Lnbisdk/ab;

    invoke-virtual {v0, p1}, Lnbisdk/fb;->be(I)V

    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 0

    return-void
.end method
