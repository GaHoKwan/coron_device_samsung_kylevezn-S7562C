.class final Lnbisdk/tx;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/zo;


# instance fields
.field private N:Ljava/lang/String;

.field private synthetic yR:Lnbisdk/wg;


# direct methods
.method constructor <init>(Lnbisdk/wg;)V
    .locals 2

    iput-object p1, p0, Lnbisdk/tx;->yR:Lnbisdk/wg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lnbisdk/tx;->yR:Lnbisdk/wg;

    iget-object v1, p0, Lnbisdk/tx;->yR:Lnbisdk/wg;

    invoke-static {v1}, Lnbisdk/wg;->a(Lnbisdk/wg;)Lnbisdk/eu;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/wg;->a(Lnbisdk/wg;Lnbisdk/eu;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/tx;->N:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final J()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mS()Lnbisdk/gv;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/gv;->getClientGuid()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lnbisdk/kz;->j([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "clientGUID is null. Will not specify it in HTTP request"

    invoke-static {v0}, Lnbisdk/xo;->g(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "default_apn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mS()Lnbisdk/gv;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/gv;->gL()[Lnbisdk/tg;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/tx;->yR:Lnbisdk/wg;

    invoke-static {v0}, Lnbisdk/wg;->a(Lnbisdk/wg;)Lnbisdk/eu;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/tx;->N:Ljava/lang/String;

    invoke-static {v0, v1}, Lnbisdk/ck;->a(Lnbisdk/eu;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/tx;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "request.type"

    if-ne p1, v0, :cond_0

    const-string v0, "GET"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "replies_count"

    if-ne p1, v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mS()Lnbisdk/gv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/gv;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
