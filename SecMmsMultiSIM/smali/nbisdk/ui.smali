.class public final Lnbisdk/ui;
.super Lnbisdk/rt;


# static fields
.field private static zP:Lnbisdk/cp;


# instance fields
.field private oO:I

.field private zM:Lnbisdk/ap;

.field private zN:Lnbisdk/lg;

.field private volatile zO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/ui;->zP:Lnbisdk/cp;

    return-void
.end method

.method public constructor <init>(Lnbisdk/lg;Lnbisdk/ap;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lnbisdk/rt;-><init>(Lnbisdk/dg;Lnbisdk/ap;)V

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request type parameter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    iput p3, p0, Lnbisdk/ui;->oO:I

    iput-object p2, p0, Lnbisdk/ui;->zM:Lnbisdk/ap;

    return-void
.end method

.method private c(Lnbisdk/ze;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->dZ()Lnbisdk/cl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->ea()Lnbisdk/cl;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lnbisdk/ze;

    const-string v1, "box"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    iget-object v1, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v1}, Lnbisdk/dg;->dZ()Lnbisdk/cl;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/ly;->a(Lnbisdk/cl;)Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    iget-object v1, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v1}, Lnbisdk/dg;->ea()Lnbisdk/cl;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/ly;->a(Lnbisdk/cl;)Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_0
    return-void
.end method

.method private d(Lnbisdk/ze;)V
    .locals 4

    invoke-direct {p0, p1}, Lnbisdk/ui;->e(Lnbisdk/ze;)V

    invoke-direct {p0, p1}, Lnbisdk/ui;->c(Lnbisdk/ze;)V

    invoke-direct {p0, p1}, Lnbisdk/ui;->f(Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/bl;->b(Lnbisdk/gw;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_0
    const-string v0, "scheme"

    iget-object v1, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v1}, Lnbisdk/dg;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "language"

    iget-object v1, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v1}, Lnbisdk/dg;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->eb()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Lnbisdk/ze;

    const-string v0, "want-premium-placement"

    invoke-direct {v2, v0, p1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->eg()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->eg()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->eg()Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-static {v0}, Lnbisdk/bl;->a(Lnbisdk/vl;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->ei()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->eh()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lnbisdk/ze;

    const-string v1, "image"

    invoke-direct {v0, v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "format"

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "width"

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->ei()I

    move-result v2

    invoke-static {v0, v1, v2}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "height"

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->eh()I

    move-result v2

    invoke-static {v0, v1, v2}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    :cond_3
    sget-object v0, Lnbisdk/ui;->zP:Lnbisdk/cp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->em()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lnbisdk/ui;->zP:Lnbisdk/cp;

    const-string v1, "search-cookie"

    invoke-static {p1, v0, v1}, Lnbisdk/bn;->a(Lnbisdk/ze;Lnbisdk/cp;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private e(Lnbisdk/ze;)V
    .locals 6

    const/4 v5, 0x2

    const-wide v3, -0x3f70c80000000000L

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->bc()Lnbisdk/mi;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/mi;->getLatitude()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnbisdk/mi;->getLongitude()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {v0}, Lnbisdk/bd;->a(Lnbisdk/mi;)Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    invoke-interface {v0}, Lnbisdk/mi;->D()S

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->ef()B

    move-result v0

    if-eq v0, v5, :cond_0

    new-instance v0, Lnbisdk/ze;

    const-string v1, "directed"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_0
    return-void
.end method

.method private f(Lnbisdk/ze;)V
    .locals 4

    new-instance v1, Lnbisdk/ze;

    const-string v0, "iter-command"

    invoke-direct {v1, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    const-string v2, "state"

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->dX()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v2, v0}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    const-string v0, "start"

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->dW()B

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v0, "next"

    :cond_0
    :goto_0
    const-string v2, "command"

    invoke-static {v1, v2, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->dU()I

    move-result v2

    invoke-static {v1, v0, v2}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->dW()B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v0, "prev"

    goto :goto_0
.end method


# virtual methods
.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 4

    const-string v0, "search-cookie"

    invoke-static {p2, v0}, Lnbisdk/bn;->a(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/cp;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lnbisdk/ui;->zP:Lnbisdk/cp;

    :cond_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    const-string v1, "search-event-cookie"

    invoke-static {p2, v1}, Lnbisdk/bn;->a(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/cp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/dg;->c(Lnbisdk/cp;)V

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-static {v0}, Lnbisdk/rb;->a(Lnbisdk/dg;)I

    move-result v0

    iput v0, p0, Lnbisdk/rt;->iq:I

    :cond_1
    const-string v0, "search-error"

    invoke-static {p2, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/navbuilder/nb/NBException;

    const-string v2, "code"

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {v1, v0}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Lnbisdk/rt;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnbisdk/ui;->zM:Lnbisdk/ap;

    invoke-interface {v0, p1, p2}, Lnbisdk/ap;->a(Lnbisdk/ag;Lnbisdk/ql;)V

    goto :goto_0
.end method

.method public final a(Lnbisdk/ze;)V
    .locals 13

    const/4 v12, 0x0

    iget v0, p0, Lnbisdk/ui;->oO:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lnbisdk/ui;->e(Lnbisdk/ze;)V

    invoke-direct {p0, p1}, Lnbisdk/ui;->c(Lnbisdk/ze;)V

    invoke-direct {p0, p1}, Lnbisdk/ui;->f(Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/bl;->b(Lnbisdk/gw;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_1
    const-string v0, "scheme"

    iget-object v1, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v1}, Lnbisdk/dg;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "language"

    iget-object v1, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v1}, Lnbisdk/dg;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lnbisdk/ui;->e(Lnbisdk/ze;)V

    invoke-direct {p0, p1}, Lnbisdk/ui;->c(Lnbisdk/ze;)V

    invoke-direct {p0, p1}, Lnbisdk/ui;->f(Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/bl;->b(Lnbisdk/gw;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_2
    const-string v0, "scheme"

    iget-object v1, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v1}, Lnbisdk/dg;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->getRouteID()[B

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v1}, Lnbisdk/dg;->ef()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    new-instance v1, Lnbisdk/ze;

    const-string v2, "route-corridor"

    invoke-direct {v1, v2, p1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v2, "route-id"

    invoke-virtual {v1, v2, v0}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    const-string v0, "distance"

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->ee()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "width"

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->getWidth()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    :cond_3
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_6

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/gw;->getFilterCount()I

    move-result v1

    move v0, v12

    :goto_1
    if-ge v0, v1, :cond_5

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnbisdk/gw;->am(I)Lnbisdk/vl;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "category"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->bc()Lnbisdk/mi;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/mi;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->bc()Lnbisdk/mi;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/mi;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v4}, Lnbisdk/dg;->ee()I

    move-result v4

    int-to-double v4, v4

    iget-object v6, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v6}, Lnbisdk/dg;->getWidth()I

    move-result v6

    int-to-double v6, v6

    const-string v8, ""

    iget-object v9, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v9}, Lnbisdk/dg;->getScheme()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v10}, Lnbisdk/dg;->dU()I

    move-result v10

    invoke-static/range {v0 .. v11}, Lnbisdk/ck;->a(DDDDLjava/lang/String;Ljava/lang/String;ILjava/util/Vector;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "language"

    iget-object v1, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v1}, Lnbisdk/dg;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->eb()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v2, Lnbisdk/ze;

    const-string v0, "want-premium-placement"

    invoke-direct {v2, v0, p1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->eg()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->eg()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->eg()Ljava/util/Vector;

    move-result-object v3

    move v1, v12

    :goto_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-static {v0}, Lnbisdk/bl;->a(Lnbisdk/vl;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_8
    const-string v1, "route-id"

    invoke-virtual {p1, v1, v0}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->ei()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->eh()I

    move-result v0

    if-lez v0, :cond_a

    new-instance v0, Lnbisdk/ze;

    const-string v1, "image"

    invoke-direct {v0, v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "format"

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "width"

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->ei()I

    move-result v2

    invoke-static {v0, v1, v2}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "height"

    iget-object v2, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v2}, Lnbisdk/dg;->eh()I

    move-result v2

    invoke-static {v0, v1, v2}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    :cond_a
    sget-object v0, Lnbisdk/ui;->zP:Lnbisdk/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/dg;->em()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnbisdk/ui;->zP:Lnbisdk/cp;

    const-string v1, "search-cookie"

    invoke-static {p1, v0, v1}, Lnbisdk/bn;->a(Lnbisdk/ze;Lnbisdk/cp;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lnbisdk/ui;->d(Lnbisdk/ze;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final ah()Z
    .locals 2

    invoke-super {p0}, Lnbisdk/aa;->ah()Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnbisdk/ui;->zO:Z

    return v0
.end method

.method protected final ak()Ljava/lang/String;
    .locals 1

    const-string v0, "search"

    return-object v0
.end method

.method public final nA()Lnbisdk/lg;
    .locals 1

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    return-object v0
.end method

.method public final ny()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ui;->zN:Lnbisdk/lg;

    invoke-virtual {v0}, Lnbisdk/lg;->je()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final nz()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ui;->zO:Z

    return v0
.end method
