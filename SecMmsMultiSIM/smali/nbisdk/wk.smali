.class public final Lnbisdk/wk;
.super Ljava/lang/Object;


# instance fields
.field private BD:Lnbisdk/qm;

.field private yM:Lnbisdk/yn;


# direct methods
.method private constructor <init>(Lnbisdk/yn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/wk;->yM:Lnbisdk/yn;

    return-void
.end method

.method public static a(Lnbisdk/yn;Lnbisdk/wa;)Lnbisdk/ql;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;,
            Lnbisdk/tv;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-instance v6, Lnbisdk/wk;

    invoke-direct {v6, p0}, Lnbisdk/wk;-><init>(Lnbisdk/yn;)V

    :try_start_0
    invoke-static {p1}, Lnbisdk/jd;->b(Lnbisdk/wa;)J

    move-result-wide v3

    long-to-int v7, v3

    if-gtz v7, :cond_0

    new-instance v0, Lnbisdk/rm;

    invoke-direct {v0}, Lnbisdk/rm;-><init>()V

    throw v0
    :try_end_0
    .catch Lnbisdk/kt; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnbisdk/tv; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    new-array v8, v7, [I

    move v3, v2

    :cond_1
    if-ge v3, v7, :cond_3

    invoke-virtual {p1}, Lnbisdk/wa;->readByte()B

    move-result v9

    sub-int v0, v7, v3

    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    const/4 v4, 0x3

    move v5, v4

    :goto_0
    rsub-int/lit8 v4, v0, 0x4

    if-lt v5, v4, :cond_1

    shl-int/lit8 v4, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    ushr-int v4, v9, v4

    and-int/lit8 v10, v4, 0x1

    shl-int/lit8 v4, v5, 0x1

    ushr-int v4, v9, v4

    and-int/lit8 v11, v4, 0x1

    add-int/lit8 v4, v3, 0x1

    shl-int/lit8 v11, v11, 0x1

    or-int/2addr v10, v11

    aput v10, v8, v3

    add-int/lit8 v3, v5, -0x1

    move v5, v3

    move v3, v4

    goto :goto_0

    :cond_3
    new-array v1, v7, [Lnbisdk/yv;

    move v0, v2

    :goto_1
    if-ge v0, v7, :cond_5

    invoke-static {p1}, Lnbisdk/jd;->b(Lnbisdk/wa;)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, v6, Lnbisdk/wk;->yM:Lnbisdk/yn;

    invoke-virtual {v4, v3}, Lnbisdk/yn;->ca(I)Lnbisdk/yv;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v0, Lnbisdk/st;

    invoke-direct {v0}, Lnbisdk/st;-><init>()V

    throw v0
    :try_end_1
    .catch Lnbisdk/kt; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnbisdk/tv; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    throw v0

    :cond_4
    :try_start_2
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Lnbisdk/qm;

    invoke-direct {v0, v8, v1}, Lnbisdk/qm;-><init>([I[Lnbisdk/yv;)V

    iput-object v0, v6, Lnbisdk/wk;->BD:Lnbisdk/qm;

    iget-object v0, v6, Lnbisdk/wk;->BD:Lnbisdk/qm;

    iget v3, v0, Lnbisdk/qm;->ay:I

    iget-object v0, v6, Lnbisdk/wk;->yM:Lnbisdk/yn;

    const-string v1, "obsecurity"

    invoke-virtual {v0, v1}, Lnbisdk/yn;->bg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lnbisdk/vt;

    invoke-direct {v0, p1}, Lnbisdk/vt;-><init>(Lnbisdk/wa;)V

    move-object v1, v0

    :goto_2
    new-array v3, v3, [[B

    move v0, v2

    :goto_3
    array-length v4, v3

    if-ge v0, v4, :cond_7

    invoke-virtual {v1}, Lnbisdk/ul;->ap()[B

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Lnbisdk/ul;

    invoke-direct {v0, p1}, Lnbisdk/ul;-><init>(Lnbisdk/wa;)V

    move-object v1, v0

    goto :goto_2

    :cond_7
    iget-object v0, v6, Lnbisdk/wk;->BD:Lnbisdk/qm;

    iput-object v3, v0, Lnbisdk/qm;->vB:[[B
    :try_end_2
    .catch Lnbisdk/kt; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lnbisdk/tv; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    :goto_4
    iget-object v0, v6, Lnbisdk/wk;->BD:Lnbisdk/qm;

    iget-object v0, v0, Lnbisdk/qm;->vA:[Lnbisdk/ji;

    aget-object v0, v0, v2

    return-object v0

    :catch_2
    move-exception v0

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_8

    const-wide/high16 v3, 0x4000

    const/4 v1, 0x2

    invoke-static {v0, v3, v4, v1}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    goto :goto_4
.end method
