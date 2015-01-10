.class final Lnbisdk/nz;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/jp;


# instance fields
.field private synthetic dl:Lnbisdk/bx;


# direct methods
.method constructor <init>(Lnbisdk/bx;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/nb;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/fb;->cq:J

    iget-object v0, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    iput-object p1, v0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnbisdk/fs;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    iget-object v1, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    iget-object v1, v1, Lnbisdk/fb;->vg:Lnbisdk/nb;

    invoke-virtual {v0, v1}, Lnbisdk/fb;->d(Lnbisdk/nb;)V

    iget-object v0, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    invoke-virtual {v0}, Lnbisdk/bx;->cancel()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    invoke-static {v0}, Lnbisdk/bx;->a(Lnbisdk/bx;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    iget-object v1, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    iget-object v1, v1, Lnbisdk/fb;->vg:Lnbisdk/nb;

    invoke-virtual {v0, v1}, Lnbisdk/fb;->d(Lnbisdk/nb;)V

    iget-object v0, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    invoke-virtual {v0}, Lnbisdk/bx;->cancel()Z

    goto :goto_0
.end method

.method public final onLocationError(I)V
    .locals 2

    iget-object v0, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnbisdk/fb;->vj:Z

    iget-object v0, p0, Lnbisdk/nz;->dl:Lnbisdk/bx;

    invoke-static {p1}, Lnbisdk/bx;->bf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/fb;->be(I)V

    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 0

    return-void
.end method
