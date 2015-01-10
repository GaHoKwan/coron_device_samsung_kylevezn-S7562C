.class public final Lnbisdk/ab;
.super Lnbisdk/fb;


# instance fields
.field private aU:Lnbisdk/ds;


# direct methods
.method public constructor <init>(Lnbisdk/ds;)V
    .locals 2

    invoke-direct {p0, p1}, Lnbisdk/fb;-><init>(Lnbisdk/ds;)V

    new-instance v0, Lnbisdk/os;

    invoke-direct {v0, p0}, Lnbisdk/os;-><init>(Lnbisdk/ab;)V

    iput-object v0, p0, Lnbisdk/ab;->aU:Lnbisdk/ds;

    invoke-super {p0}, Lnbisdk/fb;->lI()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lnbisdk/fb;->vl:J

    return-void
.end method

.method private static e()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final ao()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lnbisdk/ab;->e()Z

    move-result v0

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v2, p0, Lnbisdk/fb;->vj:Z

    invoke-virtual {p0}, Lnbisdk/fb;->lP()V

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v0, :cond_2

    iget-object v3, p0, Lnbisdk/ab;->aU:Lnbisdk/ds;

    invoke-virtual {p0}, Lnbisdk/fb;->lI()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lnbisdk/fs;->a(Lnbisdk/ds;J)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    const/16 v2, 0x2346

    invoke-interface {v0, v2}, Lnbisdk/ds;->onLocationError(I)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final cancel()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnbisdk/ab;->aU:Lnbisdk/ds;

    invoke-virtual {v0, v1}, Lnbisdk/fs;->c(Lnbisdk/ds;)V

    :cond_0
    invoke-super {p0}, Lnbisdk/fb;->cancel()Z

    move-result v0

    return v0
.end method
