.class public final Lnbisdk/mx;
.super Ljava/lang/Object;


# instance fields
.field private L:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Z

.field private ax:Ljava/lang/String;

.field private bF:J

.field private bG:Z

.field private tG:Lnbisdk/f;


# direct methods
.method public constructor <init>(Lnbisdk/ql;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "unnamed"

    invoke-static {p1, v0}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/mx;->O:Z

    sget-boolean v0, Lnbisdk/me;->sF:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnbisdk/mx;->O:Z

    if-eqz v0, :cond_0

    const-string v0, "unnamed"

    invoke-static {p1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    :try_start_0
    const-string v1, "trans"

    invoke-static {v0, v1}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/mx;->bF:J
    :try_end_0
    .catch Lnbisdk/ro; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "toward"

    invoke-static {p1, v0}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/mx;->bG:Z

    const-string v0, "primary"

    invoke-static {p1, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/mx;->N:Ljava/lang/String;

    const-string v0, "secondary"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/mx;->ax:Ljava/lang/String;

    const-string v0, "pronun"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/mx;->L:Ljava/lang/String;

    const-string v0, "unpaved"

    invoke-static {p1, v0}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    const-string v0, "country-info"

    invoke-static {p1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lnbisdk/f;

    invoke-direct {v1, v0}, Lnbisdk/f;-><init>(Lnbisdk/ql;)V

    iput-object v1, p0, Lnbisdk/mx;->tG:Lnbisdk/f;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/mx;->tG:Lnbisdk/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/mx;->tG:Lnbisdk/f;

    invoke-virtual {v0}, Lnbisdk/f;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final kI()Lnbisdk/f;
    .locals 1

    iget-object v0, p0, Lnbisdk/mx;->tG:Lnbisdk/f;

    return-object v0
.end method

.method public final kJ()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/mx;->tG:Lnbisdk/f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/mx;->tG:Lnbisdk/f;

    invoke-virtual {v0}, Lnbisdk/f;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public final kK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/mx;->N:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/mx;->N:Ljava/lang/String;

    goto :goto_0
.end method

.method public final kL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/mx;->ax:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/mx;->ax:Ljava/lang/String;

    goto :goto_0
.end method

.method public final kM()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/mx;->O:Z

    return v0
.end method

.method public final kN()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/mx;->bG:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnbisdk/mx;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(primary), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/mx;->ax:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(secondary), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/mx;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(pronun), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/mx;->bF:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "(translation code). country info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/mx;->tG:Lnbisdk/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
