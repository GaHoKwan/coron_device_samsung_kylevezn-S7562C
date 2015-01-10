.class public Lnbisdk/rj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/navbuilder/nb/d;


# instance fields
.field private aU:Lnbisdk/ds;


# direct methods
.method public constructor <init>(Lnbisdk/ds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lnbisdk/rj;->aU:Lnbisdk/ds;

    goto :goto_0
.end method


# virtual methods
.method public R(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/util/Vector;Z)V
    .locals 0

    return-void
.end method

.method public aZ(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/rj;->aU:Lnbisdk/ds;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/rj;->aU:Lnbisdk/ds;

    invoke-interface {v0, p1}, Lnbisdk/ds;->onLocationError(I)V

    goto :goto_0
.end method

.method public b(Lnbisdk/dd;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v5, 0x1

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lnbisdk/rj;->aU:Lnbisdk/ds;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lnbisdk/dd;->dO()Lnbisdk/cl;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/cl;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lnbisdk/dd;->dO()Lnbisdk/cl;

    move-result-object v3

    invoke-interface {v3}, Lnbisdk/cl;->getLongitude()D

    move-result-wide v6

    cmpl-double v3, v1, v8

    if-eqz v3, :cond_2

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_2

    const-wide v8, 0x4056800000000000L

    cmpl-double v3, v1, v8

    if-gtz v3, :cond_2

    const-wide v8, -0x3fa9800000000000L

    cmpg-double v1, v1, v8

    if-ltz v1, :cond_2

    const-wide v1, 0x4066800000000000L

    cmpl-double v1, v6, v1

    if-gtz v1, :cond_2

    const-wide v1, -0x3f99800000000000L

    cmpg-double v1, v6, v1

    if-gez v1, :cond_5

    :cond_2
    move v1, v4

    :goto_1
    if-eqz v1, :cond_0

    new-instance v6, Lnbisdk/nb;

    invoke-direct {v6}, Lnbisdk/nb;-><init>()V

    if-eqz p1, :cond_3

    if-nez v6, :cond_6

    :cond_3
    :goto_2
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lnbisdk/dz;->eK()Lnbisdk/qq;

    :cond_4
    iget-object v0, p0, Lnbisdk/rj;->aU:Lnbisdk/ds;

    invoke-interface {v0, v6}, Lnbisdk/ds;->a(Lnbisdk/nb;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnbisdk/ck;->a(Lnbisdk/dd;)V

    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lnbisdk/dd;->dO()Lnbisdk/cl;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/cl;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Lnbisdk/nb;->setLatitude(D)V

    invoke-virtual {p1}, Lnbisdk/dd;->dO()Lnbisdk/cl;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/cl;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Lnbisdk/nb;->setLongitude(D)V

    invoke-virtual {p1}, Lnbisdk/dd;->getAccuracy()I

    move-result v1

    invoke-virtual {v6, v1}, Lnbisdk/nb;->setAccuracy(I)V

    invoke-virtual {v6, v0}, Lnbisdk/nb;->setLocationType(I)V

    const/16 v1, 0x183

    invoke-virtual {v6, v1}, Lnbisdk/nb;->setValid(I)V

    invoke-virtual {p1}, Lnbisdk/dd;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lnbisdk/nb;->aO(Ljava/lang/String;)V

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lnbisdk/dd;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TCS/cdma-bid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lnbisdk/dd;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TCS/gsm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    move v5, v4

    :cond_8
    :goto_3
    invoke-virtual {p1}, Lnbisdk/dd;->dO()Lnbisdk/cl;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/cl;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lnbisdk/dd;->dO()Lnbisdk/cl;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/cl;->getLatitude()D

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lnbisdk/ck;->a(DDSB)V

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lnbisdk/dd;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TCS/wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lnbisdk/dd;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVIZON/cdma-bid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lnbisdk/dd;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NAVIZON/gsm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    move v5, v0

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Lnbisdk/dd;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NAVIZON/wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v5, 0x3

    goto :goto_3

    :cond_c
    move v5, v4

    goto :goto_3
.end method

.method public onRequestCancelled(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/rj;->aU:Lnbisdk/ds;

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lnbisdk/ds;->onLocationError(I)V

    return-void
.end method

.method public onRequestComplete(Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lnbisdk/rj;->aU:Lnbisdk/ds;

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v3

    invoke-interface {v2, v3}, Lnbisdk/ds;->onLocationError(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Netwrklocation Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lnbisdk/me;->sE:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Lnbisdk/ck;->L(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v2

    int-to-short v4, v2

    const/4 v5, 0x2

    move-wide v2, v0

    invoke-static/range {v0 .. v5}, Lnbisdk/ck;->a(DDSB)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/rj;->aU:Lnbisdk/ds;

    const/16 v1, 0x2346

    invoke-interface {v0, v1}, Lnbisdk/ds;->onLocationError(I)V

    goto :goto_0
.end method

.method public onRequestProgress(ILcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public onRequestStart(Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public onRequestTimedOut(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/rj;->aU:Lnbisdk/ds;

    const/16 v1, 0x2348

    invoke-interface {v0, v1}, Lnbisdk/ds;->onLocationError(I)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkLocation Error: Timeout"

    invoke-static {v0}, Lnbisdk/ck;->L(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
