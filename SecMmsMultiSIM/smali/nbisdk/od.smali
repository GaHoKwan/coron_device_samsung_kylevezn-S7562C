.class final Lnbisdk/od;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/jp;


# instance fields
.field private synthetic cd:Lnbisdk/aw;


# direct methods
.method constructor <init>(Lnbisdk/aw;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/nb;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {v0}, Lnbisdk/aw;->a(Lnbisdk/aw;)V

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {v0}, Lnbisdk/aw;->b(Lnbisdk/aw;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iget-wide v2, v2, Lnbisdk/fb;->cq:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lnbisdk/fb;->cq:J

    const/4 v2, 0x0

    invoke-static {v2}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/fs;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {v0, v5}, Lnbisdk/aw;->a(Lnbisdk/aw;Z)Z

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iput-object p1, v0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iget-object v1, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iget-object v1, v1, Lnbisdk/fb;->vg:Lnbisdk/nb;

    invoke-virtual {v0, v1}, Lnbisdk/fb;->d(Lnbisdk/nb;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {v0}, Lnbisdk/aw;->e(Lnbisdk/aw;)V

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {v0}, Lnbisdk/aw;->f(Lnbisdk/aw;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iget-object v3, v3, Lnbisdk/fb;->vg:Lnbisdk/nb;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-virtual {v3}, Lnbisdk/fb;->lG()I

    move-result v3

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iput-object p1, v0, Lnbisdk/fb;->vg:Lnbisdk/nb;

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iget-object v1, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iget-object v1, v1, Lnbisdk/fb;->vg:Lnbisdk/nb;

    invoke-virtual {v0, v1}, Lnbisdk/fb;->d(Lnbisdk/nb;)V

    :cond_4
    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {v0}, Lnbisdk/aw;->c(Lnbisdk/aw;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {v0}, Lnbisdk/aw;->d(Lnbisdk/aw;)Lnbisdk/ds;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnbisdk/fs;->b(Lnbisdk/ds;)Z

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iput-boolean v5, v0, Lnbisdk/fb;->vk:Z

    goto :goto_1
.end method

.method public final onLocationError(I)V
    .locals 2

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iget-boolean v0, v0, Lnbisdk/fb;->vk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {p1}, Lnbisdk/aw;->bf(I)I

    move-result v1

    invoke-static {v0, v1}, Lnbisdk/aw;->a(Lnbisdk/aw;I)I

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {v0}, Lnbisdk/aw;->f(Lnbisdk/aw;)V

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {v0}, Lnbisdk/aw;->e(Lnbisdk/aw;)V

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iget-object v0, v0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    iget-object v0, v0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    iget-object v1, p0, Lnbisdk/od;->cd:Lnbisdk/aw;

    invoke-static {v1}, Lnbisdk/aw;->g(Lnbisdk/aw;)I

    move-result v1

    invoke-interface {v0, v1}, Lnbisdk/ds;->onLocationError(I)V

    :cond_0
    return-void
.end method

.method public final providerStateChanged(I)V
    .locals 0

    return-void
.end method
