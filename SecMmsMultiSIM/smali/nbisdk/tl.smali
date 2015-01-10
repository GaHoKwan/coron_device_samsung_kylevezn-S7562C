.class public final Lnbisdk/tl;
.super Lnbisdk/sw;

# interfaces
.implements Lnbisdk/jc;


# instance fields
.field private yo:Lnbisdk/o;

.field private yp:Lnbisdk/rn;


# direct methods
.method public constructor <init>(Lnbisdk/o;Lcom/navbuilder/nb/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/sw;-><init>(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V

    iput-object p1, p0, Lnbisdk/tl;->yo:Lnbisdk/o;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-super {p0}, Lnbisdk/sw;->P()V

    new-instance v0, Lnbisdk/vw;

    invoke-direct {v0, p2}, Lnbisdk/vw;-><init>(Lnbisdk/ql;)V

    iget-object v1, p0, Lnbisdk/tl;->yo:Lnbisdk/o;

    invoke-interface {v1, v0, p0}, Lnbisdk/o;->a(Lnbisdk/hy;Lnbisdk/jc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0, v3}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/navbuilder/nb/NBException;

    const/16 v2, 0x42

    invoke-direct {v1, v2, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0, v1}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0, v3}, Lnbisdk/sw;->b(Lcom/navbuilder/nb/NBException;)V

    throw v0
.end method

.method public final a(Lnbisdk/bu;)V
    .locals 1

    new-instance v0, Lnbisdk/rn;

    invoke-direct {v0, p1, p0}, Lnbisdk/rn;-><init>(Lnbisdk/bu;Lnbisdk/ap;)V

    iput-object v0, p0, Lnbisdk/tl;->yp:Lnbisdk/rn;

    iget-object v0, p0, Lnbisdk/tl;->yp:Lnbisdk/rn;

    invoke-super {p0, v0}, Lnbisdk/sw;->a(Lnbisdk/yx;)V

    return-void
.end method
