.class public final Lnbisdk/es;
.super Lnbisdk/fb;


# instance fields
.field private eJ:Z

.field private hP:Lnbisdk/ds;


# direct methods
.method public constructor <init>(Lnbisdk/ds;)V
    .locals 2

    invoke-direct {p0, p1}, Lnbisdk/fb;-><init>(Lnbisdk/ds;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/es;->eJ:Z

    new-instance v0, Lnbisdk/ou;

    invoke-direct {v0, p0}, Lnbisdk/ou;-><init>(Lnbisdk/es;)V

    iput-object v0, p0, Lnbisdk/es;->hP:Lnbisdk/ds;

    invoke-super {p0}, Lnbisdk/fb;->lF()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lnbisdk/fb;->vl:J

    return-void
.end method

.method static synthetic a(Lnbisdk/es;)Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/es;->eJ:Z

    return v0
.end method

.method static synthetic a(Lnbisdk/es;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/es;->eJ:Z

    return v0
.end method

.method private static e()Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final ao()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/fb;->vh:Z

    invoke-static {}, Lnbisdk/es;->e()Z

    move-result v0

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lnbisdk/fs;->b(Lnbisdk/ez;)Lnbisdk/fs;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lnbisdk/es;->hP:Lnbisdk/ds;

    iget-wide v4, p0, Lnbisdk/fb;->vl:J

    invoke-virtual {v0, v3, v4, v5}, Lnbisdk/fs;->a(Lnbisdk/ds;J)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/fb;->vf:Lnbisdk/ds;

    const/16 v2, 0x2347

    invoke-interface {v0, v2}, Lnbisdk/ds;->onLocationError(I)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
