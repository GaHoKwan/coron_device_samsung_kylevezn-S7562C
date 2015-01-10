.class public Lnbisdk/mo;
.super Lnbisdk/au$d;


# instance fields
.field protected rL:Lnbisdk/hu;

.field private sR:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lnbisdk/au$d;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V

    const-string v0, "LayerManager"

    iput-object v0, p0, Lnbisdk/mo;->sR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final I(Z)V
    .locals 2

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/au;->I(Z)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
    .locals 3

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0, p1, p2, p3}, Lnbisdk/au$d;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lnbisdk/au$d;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Lnbisdk/au$d;->setVisible(Z)V

    instance-of v0, p1, Lnbisdk/dh;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnbisdk/dh;

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lnbisdk/dh;->ez()V

    :cond_0
    invoke-virtual {v0}, Lnbisdk/dh;->ow()Lnbisdk/gq;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lnbisdk/au$d;->setVisible(Z)V

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->i(Lnbisdk/au$d;)V

    invoke-virtual {p0, v1, v1}, Lnbisdk/mo;->e(ZZ)V

    return-void
.end method

.method public final destroy()V
    .locals 3

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->destroy()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lnbisdk/au$d;->destroy()V

    return-void
.end method

.method protected final dx()V
    .locals 3

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->dx()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dz()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->dz()Z

    move-result v0

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    return v3
.end method

.method public final e(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0, p1, p2}, Lnbisdk/au;->e(ZZ)V

    return-void
.end method

.method protected final o(Z)V
    .locals 3

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->o(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    iget-object v0, p0, Lnbisdk/mo;->sR:Ljava/lang/String;

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->onLowMemory()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
