.class public final Lnbisdk/yg;
.super Lnbisdk/gw;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lnbisdk/gw;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    iput-object p1, p0, Lnbisdk/gw;->lx:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnbisdk/ql;)V
    .locals 4

    invoke-direct {p0}, Lnbisdk/gw;-><init>()V

    const-string v0, "pair"

    invoke-virtual {p1, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    const-string v2, "key"

    invoke-static {v0, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-static {v0, v3}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lnbisdk/vl;

    invoke-direct {v3, v2, v0}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnbisdk/gw;->c(Lnbisdk/vl;)V

    goto :goto_0

    :cond_0
    return-void
.end method
