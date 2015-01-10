.class public final Lnbisdk/sy;
.super Lnbisdk/sw;

# interfaces
.implements Lnbisdk/nm;


# instance fields
.field private xU:Lnbisdk/mz;

.field private xV:Lnbisdk/qu;


# direct methods
.method public constructor <init>(Lnbisdk/mz;Lcom/navbuilder/nb/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/sw;-><init>(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V

    iput-object p1, p0, Lnbisdk/sy;->xU:Lnbisdk/mz;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-super {p0}, Lnbisdk/sw;->P()V

    new-instance v1, Lnbisdk/rs;

    invoke-direct {v1}, Lnbisdk/rs;-><init>()V

    const-string v0, "store-data"

    invoke-virtual {p2, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-static {v0}, Lnbisdk/ye;->w(Lnbisdk/ql;)Lnbisdk/ye;

    move-result-object v0

    iget-object v3, v1, Lnbisdk/rs;->aB:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/navbuilder/nb/NBException;

    const/16 v2, 0x42

    invoke-direct {v1, v2, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0, v1}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    :goto_1
    return-void

    :cond_0
    :try_start_2
    invoke-static {p2}, Lnbisdk/ir;->r(Lnbisdk/ql;)Lnbisdk/va;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/km;->a(Lnbisdk/va;)V

    iget-object v0, p0, Lnbisdk/sy;->xU:Lnbisdk/mz;

    invoke-interface {v0, v1, p0}, Lnbisdk/mz;->a(Lnbisdk/kb;Lnbisdk/nm;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-super {p0, v4}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-super {p0, v4}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    throw v0
.end method

.method public final a(Lnbisdk/zk;)V
    .locals 1

    new-instance v0, Lnbisdk/qu;

    invoke-direct {v0, p1, p0}, Lnbisdk/qu;-><init>(Lnbisdk/zk;Lnbisdk/ap;)V

    iput-object v0, p0, Lnbisdk/sy;->xV:Lnbisdk/qu;

    iget-object v0, p0, Lnbisdk/sy;->xV:Lnbisdk/qu;

    invoke-super {p0, v0}, Lnbisdk/sw;->a(Lnbisdk/yx;)V

    return-void
.end method
