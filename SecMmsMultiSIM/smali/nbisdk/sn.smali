.class public final Lnbisdk/sn;
.super Lnbisdk/sw;

# interfaces
.implements Lnbisdk/fn;


# instance fields
.field private xF:Lnbisdk/aj;

.field private xG:Lnbisdk/qo;


# direct methods
.method public constructor <init>(Lnbisdk/aj;Lcom/navbuilder/nb/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/sw;-><init>(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V

    iput-object p1, p0, Lnbisdk/sn;->xF:Lnbisdk/aj;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-super {p0}, Lnbisdk/sw;->P()V

    new-instance v1, Lnbisdk/zr;

    invoke-direct {v1}, Lnbisdk/zr;-><init>()V

    const-string v0, "store-coupon-data"

    invoke-virtual {p2, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    new-instance v3, Lnbisdk/xv;

    invoke-direct {v3}, Lnbisdk/xv;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, v3, Lnbisdk/xv;->aR:Ljava/util/Vector;

    const-string v4, "store-data"

    invoke-static {v0, v4}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v4

    invoke-static {v4}, Lnbisdk/ye;->w(Lnbisdk/ql;)Lnbisdk/ye;

    move-result-object v4

    iput-object v4, v3, Lnbisdk/xv;->Dt:Lnbisdk/jb;

    const-string v4, "coupon-data"

    invoke-virtual {v0, v4}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-static {v0}, Lnbisdk/qn;->u(Lnbisdk/ql;)Lnbisdk/qn;

    move-result-object v0

    iget-object v5, v3, Lnbisdk/xv;->aR:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/navbuilder/nb/NBException;

    const/16 v2, 0x42

    invoke-direct {v1, v2, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0, v1}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    :goto_2
    return-void

    :cond_0
    :try_start_2
    iget-object v0, v1, Lnbisdk/zr;->aB:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0, v6}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    throw v0

    :cond_1
    :try_start_3
    invoke-static {p2}, Lnbisdk/ir;->r(Lnbisdk/ql;)Lnbisdk/va;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/km;->a(Lnbisdk/va;)V

    iget-object v0, p0, Lnbisdk/sn;->xF:Lnbisdk/aj;

    invoke-interface {v0, v1, p0}, Lnbisdk/aj;->a(Lnbisdk/ln;Lnbisdk/fn;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    invoke-super {p0, v6}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    goto :goto_2
.end method

.method public final a(Lnbisdk/pe;)V
    .locals 1

    new-instance v0, Lnbisdk/qo;

    invoke-direct {v0, p1, p0}, Lnbisdk/qo;-><init>(Lnbisdk/pe;Lnbisdk/ap;)V

    iput-object v0, p0, Lnbisdk/sn;->xG:Lnbisdk/qo;

    iget-object v0, p0, Lnbisdk/sn;->xG:Lnbisdk/qo;

    invoke-super {p0, v0}, Lnbisdk/sw;->a(Lnbisdk/yx;)V

    return-void
.end method
