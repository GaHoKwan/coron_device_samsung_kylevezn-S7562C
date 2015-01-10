.class public final Lnbisdk/eb;
.super Lnbisdk/fb;


# instance fields
.field private eJ:Z

.field private gs:Ljava/util/Timer;

.field private gt:Lnbisdk/ds;

.field private gu:Lnbisdk/jp;


# direct methods
.method public constructor <init>(Lnbisdk/ds;)V
    .locals 2

    invoke-direct {p0, p1}, Lnbisdk/fb;-><init>(Lnbisdk/ds;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/eb;->eJ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/eb;->gs:Ljava/util/Timer;

    new-instance v0, Lnbisdk/of;

    invoke-direct {v0, p0}, Lnbisdk/of;-><init>(Lnbisdk/eb;)V

    iput-object v0, p0, Lnbisdk/eb;->gt:Lnbisdk/ds;

    new-instance v0, Lnbisdk/oh;

    invoke-direct {v0, p0}, Lnbisdk/oh;-><init>(Lnbisdk/eb;)V

    iput-object v0, p0, Lnbisdk/eb;->gu:Lnbisdk/jp;

    invoke-virtual {p0}, Lnbisdk/fb;->lF()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lnbisdk/fb;->vl:J

    return-void
.end method

.method private e()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v1

    invoke-super {p0}, Lnbisdk/fb;->lL()Lnbisdk/ph;

    move-result-object v2

    iput-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    iget-object v2, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    iget-object v2, p0, Lnbisdk/eb;->gu:Lnbisdk/jp;

    invoke-virtual {p0}, Lnbisdk/fb;->lJ()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lnbisdk/ph;->a(Lnbisdk/jp;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final ao()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnbisdk/fb;->lC()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0, v3, v4}, Lnbisdk/fb;->o(J)Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lnbisdk/eb;->e()Z

    move-result v0

    if-eq v0, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnbisdk/fb;->lP()V

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lnbisdk/fs;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    iget-object v3, p0, Lnbisdk/eb;->gt:Lnbisdk/ds;

    invoke-virtual {p0}, Lnbisdk/fb;->lF()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lnbisdk/fs;->a(Lnbisdk/ds;J)Z

    move-result v0

    :goto_1
    invoke-super {p0}, Lnbisdk/fb;->lR()Lnbisdk/ft;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lnbisdk/ft;->getWifiState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    invoke-interface {v3}, Lnbisdk/ft;->gj()Z

    :cond_3
    iget-object v3, p0, Lnbisdk/fb;->ve:Lnbisdk/ph;

    invoke-interface {v3}, Lnbisdk/ph;->requestLocationFix()Z

    move-result v3

    :goto_2
    if-nez v0, :cond_7

    if-nez v3, :cond_7

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    const/16 v2, 0x2346

    invoke-interface {v0, v2}, Lnbisdk/ds;->onLocationError(I)V

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lnbisdk/fb;->vk:Z

    move v0, v1

    goto :goto_1

    :cond_5
    iput-boolean v2, p0, Lnbisdk/fb;->vk:Z

    move v0, v1

    goto :goto_1

    :cond_6
    iput-boolean v2, p0, Lnbisdk/fb;->vk:Z

    move v0, v1

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    move v3, v1

    goto :goto_2
.end method

.method public final cancel()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnbisdk/eb;->gt:Lnbisdk/ds;

    invoke-virtual {v0, v1}, Lnbisdk/fs;->c(Lnbisdk/ds;)V

    :cond_0
    invoke-super {p0}, Lnbisdk/fb;->cancel()Z

    move-result v0

    return v0
.end method
