.class public final Lnbisdk/je;
.super Ljava/lang/Object;


# instance fields
.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private oi:Lnbisdk/gg;

.field private oj:Lnbisdk/in;

.field private ok:Lnbisdk/gw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/gg;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/je;->oi:Lnbisdk/gg;

    return-void
.end method

.method public final a(Lnbisdk/gw;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/je;->ok:Lnbisdk/gw;

    return-void
.end method

.method public final a(Lnbisdk/in;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/je;->oj:Lnbisdk/in;

    return-void
.end method

.method public final bI()Lnbisdk/in;
    .locals 1

    iget-object v0, p0, Lnbisdk/je;->oj:Lnbisdk/in;

    return-object v0
.end method

.method public final d(Lnbisdk/gw;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/je;->ok:Lnbisdk/gw;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnbisdk/je;->ok:Lnbisdk/gw;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/je;->ok:Lnbisdk/gw;

    invoke-virtual {v0, p1}, Lnbisdk/gw;->c(Lnbisdk/gw;)V

    goto :goto_0
.end method

.method public final dY()Lnbisdk/gw;
    .locals 1

    iget-object v0, p0, Lnbisdk/je;->ok:Lnbisdk/gw;

    return-object v0
.end method

.method public final getFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/je;->ok:Lnbisdk/gw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/je;->ok:Lnbisdk/gw;

    invoke-virtual {v0, p1}, Lnbisdk/gw;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMPAARating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/je;->oi:Lnbisdk/gg;

    invoke-virtual {v0}, Lnbisdk/gg;->gz()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/je;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final getRatingStar()I
    .locals 1

    iget-object v0, p0, Lnbisdk/je;->oi:Lnbisdk/gg;

    invoke-virtual {v0}, Lnbisdk/gg;->getStar()I

    move-result v0

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/je;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final hasRating()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/je;->oi:Lnbisdk/gg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/je;->M:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/je;->N:Ljava/lang/String;

    return-void
.end method
