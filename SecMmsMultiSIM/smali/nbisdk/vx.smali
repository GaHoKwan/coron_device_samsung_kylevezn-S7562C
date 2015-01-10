.class public final Lnbisdk/vx;
.super Lnbisdk/c;

# interfaces
.implements Lnbisdk/ap;


# instance fields
.field private Bh:Lnbisdk/jy;

.field private Bi:Lnbisdk/vn;

.field private Bj:Lnbisdk/zc;

.field private Bk:Lnbisdk/zc;

.field private Bl:Lnbisdk/zp;

.field private Bm:Lcom/navbuilder/nb/e;

.field private Bn:Lnbisdk/vz;

.field private Bo:[Lnbisdk/lm;

.field private bG:Z

.field private volatile eM:Z

.field private ip:I

.field private mI:Z

.field private sW:Z

.field private wY:Lnbisdk/mu;

.field private xa:Lnbisdk/h;


# direct methods
.method public constructor <init>(Lnbisdk/jy;Lcom/navbuilder/nb/e;Lnbisdk/mu;[Lnbisdk/lm;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lnbisdk/vx;-><init>(Lnbisdk/jy;Lcom/navbuilder/nb/e;Lnbisdk/mu;[Lnbisdk/lm;Lnbisdk/vz;)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/jy;Lcom/navbuilder/nb/e;Lnbisdk/mu;[Lnbisdk/lm;Lnbisdk/vz;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lnbisdk/c;-><init>()V

    iput-boolean v0, p0, Lnbisdk/vx;->mI:Z

    iput-boolean v0, p0, Lnbisdk/vx;->bG:Z

    iput-boolean v0, p0, Lnbisdk/vx;->sW:Z

    iput v0, p0, Lnbisdk/vx;->ip:I

    iput-object p1, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    iput-object p3, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    iput-object p2, p0, Lnbisdk/vx;->Bm:Lcom/navbuilder/nb/e;

    iput-object p4, p0, Lnbisdk/vx;->Bo:[Lnbisdk/lm;

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/vx;->Bn:Lnbisdk/vz;

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->u()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->u()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    iget-object v1, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v0, v1}, Lnbisdk/h;->a(Lnbisdk/hg;)V

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {p0, v0}, Lnbisdk/vx;->a(Lnbisdk/h;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/vx;->eM:Z

    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    invoke-interface {v0, p0}, Lnbisdk/jy;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    :cond_0
    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    invoke-interface {v0, p2, p0}, Lnbisdk/jy;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    :cond_0
    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/vx;->eM:Z

    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->m()Lnbisdk/it;

    move-result-object v0

    sget-object v1, Lnbisdk/it;->nS:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    invoke-interface {v0, p2, p0}, Lnbisdk/jy;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->t()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lnbisdk/vx;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnbisdk/vx;->ip:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    invoke-direct {p0}, Lnbisdk/vx;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0xbb9

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/navbuilder/nb/NBException;->setCustomData(Ljava/lang/Object;)V

    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    invoke-interface {v0, p2, p0}, Lnbisdk/jy;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    goto :goto_0
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 5

    const-wide/16 v3, 0x400

    const/4 v2, 0x2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnbisdk/vx;->eM:Z

    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    invoke-interface {v0, p0}, Lnbisdk/jy;->onRequestComplete(Lcom/navbuilder/nb/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Internal Exception on route handling"

    invoke-static {v1, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    invoke-static {v0, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    iget-object v1, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    new-instance v2, Lcom/navbuilder/nb/NBException;

    const/16 v3, 0x42

    invoke-direct {v2, v3, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-interface {v1, v2, p0}, Lnbisdk/jy;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    goto :goto_0
.end method

.method public final a(Lnbisdk/h;)V
    .locals 13

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-boolean v0, p0, Lnbisdk/vx;->eM:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another request is in progress!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnbisdk/vx;->Bm:Lcom/navbuilder/nb/e;

    const-wide/16 v0, 0x0

    long-to-int v12, v0

    iput-object p1, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->n()Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/vx;->bG:Z

    invoke-virtual {p1}, Lnbisdk/h;->m()Lnbisdk/it;

    move-result-object v0

    sget-object v1, Lnbisdk/it;->nS:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/vx;->sW:Z

    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    invoke-interface {v0, p0}, Lnbisdk/jy;->onRequestStart(Lcom/navbuilder/nb/b;)V

    new-instance v0, Lnbisdk/vn;

    iget-object v1, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    iget-object v2, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    invoke-direct {v0, v1, p0, v2}, Lnbisdk/vn;-><init>(Lnbisdk/h;Lnbisdk/vx;Lnbisdk/mu;)V

    iput-object v0, p0, Lnbisdk/vx;->Bi:Lnbisdk/vn;

    iput-boolean v10, p0, Lnbisdk/vx;->eM:Z

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnbisdk/h;->i()B

    move-result v0

    invoke-virtual {p1}, Lnbisdk/h;->y()Lnbisdk/ew;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/ew;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lnbisdk/h;->y()Lnbisdk/ew;

    move-result-object v3

    invoke-virtual {v3}, Lnbisdk/ew;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lnbisdk/h;->j()Lnbisdk/de;

    move-result-object v5

    invoke-virtual {v5}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v5

    invoke-virtual {v5}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p1}, Lnbisdk/h;->j()Lnbisdk/de;

    move-result-object v7

    invoke-virtual {v7}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v7

    invoke-virtual {v7}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v7

    invoke-virtual {p1}, Lnbisdk/h;->l()Lnbisdk/br;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lnbisdk/ck;->a(BDDDDLnbisdk/br;)V

    invoke-virtual {p1}, Lnbisdk/h;->r()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnbisdk/h;->r()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v12, v0}, Lnbisdk/ck;->a(IB)V

    :cond_1
    iget-object v0, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    invoke-virtual {v0}, Lnbisdk/mu;->kH()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    move v8, v10

    :goto_0
    invoke-virtual {p1}, Lnbisdk/h;->m()Lnbisdk/it;

    move-result-object v0

    sget-object v1, Lnbisdk/it;->nX:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    iget-object v1, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    invoke-virtual {v1}, Lnbisdk/mu;->kB()Z

    move-result v1

    iget-object v2, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    invoke-virtual {v2}, Lnbisdk/mu;->kC()Z

    move-result v2

    iget-object v3, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    invoke-virtual {v3}, Lnbisdk/mu;->kE()I

    move-result v3

    int-to-byte v3, v3

    iget-object v4, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    invoke-virtual {v4}, Lnbisdk/mu;->kD()F

    move-result v4

    float-to-double v4, v4

    iget-object v6, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    invoke-virtual {v6}, Lnbisdk/mu;->kF()Z

    move-result v6

    iget-object v7, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    invoke-virtual {v7}, Lnbisdk/mu;->kG()I

    move-result v7

    int-to-byte v7, v7

    if-eqz v8, :cond_4

    iget-object v9, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    invoke-virtual {v9}, Lnbisdk/mu;->kH()F

    move-result v9

    const/high16 v10, 0x4561

    mul-float/2addr v9, v10

    float-to-long v9, v9

    const-wide/16 v11, 0x649

    invoke-static {v9, v10, v11, v12}, Lnbisdk/ls;->a(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    :goto_1
    invoke-static/range {v0 .. v9}, Lnbisdk/ck;->a(ZZZBDZBZI)V

    :cond_2
    iget-object v0, p0, Lnbisdk/vx;->Bi:Lnbisdk/vn;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    return-void

    :cond_3
    move v8, v11

    goto :goto_0

    :cond_4
    move v9, v11

    goto :goto_1
.end method

.method public final b(Lnbisdk/ql;)V
    .locals 14

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/vx;->ip:I

    iget-object v0, p0, Lnbisdk/vx;->Bo:[Lnbisdk/lm;

    if-eqz v0, :cond_3

    new-instance v0, Lnbisdk/zc;

    iget-object v1, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    iget-object v2, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    iget-object v3, p0, Lnbisdk/vx;->Bo:[Lnbisdk/lm;

    invoke-direct {v0, v1, v2, v3}, Lnbisdk/zc;-><init>(Lnbisdk/h;Lnbisdk/mu;[Lnbisdk/lm;)V

    move-object v13, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/vx;->Bk:Lnbisdk/zc;

    if-eqz v0, :cond_0

    const-string v0, "Preserving old Navigation State from previous trip"

    invoke-static {v0}, Lnbisdk/xo;->h(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/vx;->Bk:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/zj;->b(Lnbisdk/zj;)V

    :cond_0
    iput-object v13, p0, Lnbisdk/vx;->Bk:Lnbisdk/zc;

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lnbisdk/zc;->b(Z)V

    :cond_1
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/yc;

    invoke-virtual {v13, v0}, Lnbisdk/zc;->a(Lnbisdk/yc;)V

    invoke-virtual {v13}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    check-cast v0, Lnbisdk/zp;

    iput-object v0, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    iget-object v0, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    iget-object v1, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0, p1, v13, v1}, Lnbisdk/zp;->a(Lnbisdk/ql;Lnbisdk/zc;Lnbisdk/h;)V

    iget-object v0, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v0}, Lnbisdk/zp;->getRouteError()S

    move-result v0

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_e

    const-string v0, "traffic-record-identifier"

    invoke-static {p1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lnbisdk/bh;

    const-string v2, "value"

    invoke-static {v0, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v13, v0}, Lnbisdk/bh;-><init>(Lnbisdk/ql;Lnbisdk/zc;Ljava/lang/String;)V

    invoke-virtual {v1}, Lnbisdk/bh;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/db;->M(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->l()Lnbisdk/br;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/br;->bO()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const-string v0, "speed-cameras"

    invoke-static {p1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "place"

    invoke-virtual {v0, v2}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-static {v0}, Lnbisdk/bf;->d(Lnbisdk/ql;)Lnbisdk/nf;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lnbisdk/zc;

    iget-object v1, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    iget-object v2, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    iget-object v3, p0, Lnbisdk/vx;->Bn:Lnbisdk/vz;

    invoke-direct {v0, v1, v2, v3}, Lnbisdk/zc;-><init>(Lnbisdk/h;Lnbisdk/mu;Lnbisdk/vz;)V

    move-object v13, v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v13}, Lnbisdk/zc;->pk()Lnbisdk/vv;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Lnbisdk/sl;

    invoke-direct {v0}, Lnbisdk/sl;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    :cond_5
    iget-boolean v0, p0, Lnbisdk/vx;->sW:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnbisdk/vx;->Bj:Lnbisdk/zc;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lnbisdk/vx;->Bj:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    move-result-object v0

    invoke-virtual {v13, v0}, Lnbisdk/zc;->a(Lnbisdk/zj;)V

    invoke-virtual {v13}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    move-result-object v0

    invoke-virtual {v0, v13}, Lnbisdk/zj;->a(Lnbisdk/zc;)V

    invoke-virtual {v13}, Lnbisdk/zc;->pn()Lnbisdk/zv;

    move-result-object v0

    invoke-virtual {v1}, Lnbisdk/zc;->pn()Lnbisdk/zv;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnbisdk/zv;->a(Lnbisdk/zv;)V

    invoke-virtual {v13}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    check-cast v0, Lnbisdk/zp;

    invoke-virtual {v1}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v1

    check-cast v1, Lnbisdk/zp;

    invoke-virtual {v0, v1}, Lnbisdk/zp;->a(Lnbisdk/zp;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/vx;->Bj:Lnbisdk/zc;

    :cond_6
    :goto_2
    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->q()Lnbisdk/j;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v13}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v1}, Lnbisdk/h;->q()Lnbisdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/j;->G()Lnbisdk/se;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/zj;->g(Lnbisdk/se;)V

    :cond_7
    iget-boolean v0, p0, Lnbisdk/vx;->sW:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->t()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lnbisdk/vx;->sW:Z

    if-nez v0, :cond_d

    :cond_9
    invoke-virtual {v13}, Lnbisdk/zc;->pn()Lnbisdk/zv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnbisdk/zv;->ac(Z)V

    invoke-virtual {v13}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lnbisdk/zp;

    if-eqz v12, :cond_d

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/high16 v8, -0x4010

    iget-object v10, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v10}, Lnbisdk/h;->q()Lnbisdk/j;

    move-result-object v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v10}, Lnbisdk/h;->q()Lnbisdk/j;

    move-result-object v10

    invoke-virtual {v10}, Lnbisdk/j;->G()Lnbisdk/se;

    move-result-object v10

    if-eqz v10, :cond_12

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->q()Lnbisdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/j;->G()Lnbisdk/se;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/se;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v2}, Lnbisdk/h;->q()Lnbisdk/j;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/j;->G()Lnbisdk/se;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/se;->getLongitude()D

    move-result-wide v2

    :cond_a
    :goto_3
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lnbisdk/zp;->ht()I

    move-result v10

    if-lez v10, :cond_b

    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v10

    invoke-interface {v10}, Lnbisdk/pn;->lo()Lnbisdk/em;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lnbisdk/em;->fe()I

    move-result v11

    if-lez v11, :cond_b

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lnbisdk/em;->N(I)D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Lnbisdk/em;->O(I)D

    move-result-wide v6

    :cond_b
    const-wide/16 v10, 0x0

    cmpl-double v10, v0, v10

    if-eqz v10, :cond_c

    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-eqz v10, :cond_c

    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    if-eqz v10, :cond_c

    const-wide/16 v10, 0x0

    cmpl-double v10, v6, v10

    if-eqz v10, :cond_c

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lnbisdk/dd;->a(DDDD[D)D

    move-result-wide v10

    const-wide/high16 v0, 0x3ff8

    mul-double/2addr v0, v10

    iget-object v2, p0, Lnbisdk/vx;->wY:Lnbisdk/mu;

    invoke-virtual {v2}, Lnbisdk/mu;->kj()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_c

    invoke-static/range {v4 .. v11}, Lnbisdk/ck;->a(DDDD)V

    :cond_c
    invoke-virtual {v12, v8, v9}, Lnbisdk/zp;->a(D)V

    invoke-virtual {v12, v4, v5}, Lnbisdk/zp;->z(D)V

    invoke-virtual {v12, v6, v7}, Lnbisdk/zp;->c(D)V

    :cond_d
    iget-object v0, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v0}, Lnbisdk/zp;->a()V

    iget-object v0, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v0}, Lnbisdk/zp;->pv()V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v0}, Lnbisdk/zp;->getRouteID()[B

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ck;->c([B)V

    const-string v0, "start"

    iget-object v1, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v1}, Lnbisdk/zp;->k()Lnbisdk/de;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/ck;->a(Ljava/lang/String;Lnbisdk/de;)V

    const-string v0, "dest"

    iget-object v1, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v1}, Lnbisdk/zp;->j()Lnbisdk/de;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/ck;->a(Ljava/lang/String;Lnbisdk/de;)V

    iget-object v0, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v0}, Lnbisdk/zp;->k()Lnbisdk/de;

    move-result-object v2

    if-nez v2, :cond_13

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->y()Lnbisdk/ew;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ew;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v2}, Lnbisdk/h;->y()Lnbisdk/ew;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/ew;->getLongitude()D

    move-result-wide v2

    :goto_4
    iget-object v4, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v4}, Lnbisdk/zp;->j()Lnbisdk/de;

    move-result-object v4

    invoke-virtual {v4}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v4

    invoke-virtual {v4}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v6}, Lnbisdk/zp;->j()Lnbisdk/de;

    move-result-object v6

    invoke-virtual {v6}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v6

    invoke-virtual {v6}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v6

    iget-object v8, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v8}, Lnbisdk/zp;->getRouteID()[B

    move-result-object v8

    invoke-static {v8}, Lnbisdk/kz;->j([B)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v9}, Lnbisdk/zp;->pu()Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    :goto_5
    int-to-byte v9, v9

    invoke-static/range {v0 .. v9}, Lnbisdk/ck;->a(DDDDLjava/lang/String;B)V

    :cond_e
    iget-boolean v0, p0, Lnbisdk/vx;->bG:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lnbisdk/vx;->sW:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v0}, Lnbisdk/zp;->pu()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v13, v0}, Lnbisdk/zc;->d(Z)V

    :goto_7
    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    invoke-interface {v0, v13}, Lnbisdk/jy;->a(Lnbisdk/kr;)V

    iget-boolean v0, p0, Lnbisdk/vx;->sW:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->t()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v13}, Lnbisdk/zc;->po()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    iget-object v1, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v1}, Lnbisdk/zp;->getRouteID()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/h;->a([B)V

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/h;->a(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/vx;->eM:Z

    :cond_f
    :goto_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/vx;->mI:Z

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/h;->a(I)V

    iget-object v0, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v0}, Lnbisdk/zp;->getRouteError()S

    move-result v0

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_10

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/zp;->au(I)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lnbisdk/vx;->Bl:Lnbisdk/zp;

    invoke-virtual {v1}, Lnbisdk/zp;->getTotalDistance()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Lnbisdk/rb;->a(IF)V

    const-string v0, "new-route"

    if-eqz v13, :cond_10

    invoke-interface {v13}, Lnbisdk/kr;->iV()Lnbisdk/zj;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v13}, Lnbisdk/kr;->iV()Lnbisdk/zj;

    const-wide/16 v1, 0x0

    long-to-int v1, v1

    invoke-interface {v13}, Lnbisdk/kr;->iV()Lnbisdk/zj;

    const-wide/16 v2, 0x0

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Lnbisdk/rb;->a(Ljava/lang/String;IF)V

    :cond_10
    return-void

    :cond_11
    iput-object v13, p0, Lnbisdk/vx;->Bj:Lnbisdk/zc;

    goto/16 :goto_2

    :cond_12
    iget-object v10, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v10}, Lnbisdk/h;->k()Lnbisdk/de;

    move-result-object v10

    if-eqz v10, :cond_a

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->k()Lnbisdk/de;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v2}, Lnbisdk/h;->k()Lnbisdk/de;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v2

    goto/16 :goto_3

    :cond_13
    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v2

    goto/16 :goto_4

    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_16
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lnbisdk/zc;->d(Z)V

    goto/16 :goto_7

    :cond_17
    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->u()[B

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/h;->a([B)V

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnbisdk/h;->a(Z)V

    goto/16 :goto_8

    :cond_18
    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    invoke-interface {v0, v13}, Lnbisdk/jy;->b(Lnbisdk/kr;)V

    goto/16 :goto_8
.end method

.method public final cancelRequest()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/vx;->eM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/vx;->Bi:Lnbisdk/vn;

    invoke-virtual {v0}, Lnbisdk/aa;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/vx;->eM:Z

    :cond_0
    return-void
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 3

    const/16 v2, 0xbb9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/vx;->eM:Z

    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->m()Lnbisdk/it;

    move-result-object v0

    sget-object v1, Lnbisdk/it;->nS:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    invoke-interface {v0, p0}, Lnbisdk/jy;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnbisdk/vx;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->t()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lnbisdk/vx;->ip:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnbisdk/vx;->ip:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    invoke-direct {p0}, Lnbisdk/vx;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/navbuilder/nb/NBException;

    invoke-direct {v0, v2}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/navbuilder/nb/NBException;->setCustomData(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/vx;->Bh:Lnbisdk/jy;

    invoke-interface {v1, v0, p0}, Lnbisdk/jy;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    goto :goto_0
.end method

.method public final isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/vx;->eM:Z

    return v0
.end method
