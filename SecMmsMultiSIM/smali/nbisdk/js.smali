.class public final Lnbisdk/js;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/navbuilder/nb/a;
.implements Lcom/navbuilder/nb/c;
.implements Lnbisdk/iv;
.implements Lnbisdk/kh;
.implements Lnbisdk/zx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/js$a;
    }
.end annotation


# instance fields
.field private aF:J

.field private aa:Z

.field private da:I

.field private iA:I

.field private iF:Z

.field private oD:Lnbisdk/fa;

.field private oE:Lnbisdk/id;

.field private oF:J

.field private oG:Lnbisdk/jf;

.field private oH:J

.field private oI:Lnbisdk/se;

.field private oJ:Lnbisdk/se;

.field private oK:J

.field private oL:J

.field private volatile oM:Z

.field private oN:Lnbisdk/ir;

.field private oO:I

.field private oP:J

.field private oQ:J

.field private oR:Lnbisdk/ft;

.field private oS:Ljava/util/Vector;

.field private oT:J

.field private oy:Z


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnbisdk/js;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 7

    const-wide/32 v5, 0x1000000

    const/4 v4, 0x2

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lnbisdk/js;->oy:Z

    new-instance v0, Lnbisdk/id;

    invoke-direct {v0}, Lnbisdk/id;-><init>()V

    iput-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    iput-boolean v1, p0, Lnbisdk/js;->aa:Z

    iput-wide v2, p0, Lnbisdk/js;->oK:J

    iput-wide v2, p0, Lnbisdk/js;->oL:J

    invoke-static {v5, v6}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    iput-wide v2, p0, Lnbisdk/js;->oQ:J

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/js;->oR:Lnbisdk/ft;

    iput-boolean v1, p0, Lnbisdk/js;->iF:Z

    :try_start_0
    const-string v0, "com_nim_analytics"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnbisdk/jf;->b(Ljava/lang/String;Z)Lnbisdk/jf;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    invoke-direct {p0}, Lnbisdk/js;->T()V

    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnbisdk/jf;->aA(I)[B

    move-result-object v0

    invoke-static {v0}, Lnbisdk/fa;->e([B)Lnbisdk/fa;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-direct {p0}, Lnbisdk/js;->im()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/tt;->a(Lnbisdk/zx;)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v0

    invoke-interface {v0, p0}, Lnbisdk/dz;->a(Lnbisdk/iv;)Lnbisdk/ft;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/js;->oR:Lnbisdk/ft;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/tt;->a(Lcom/navbuilder/nb/a;)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mU()Lcom/navbuilder/nb/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/navbuilder/nb/e;->b(Lcom/navbuilder/nb/c;)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lnbisdk/tt;->bl(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lnbisdk/js;->oQ:J

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/js;->oS:Ljava/util/Vector;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v6, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    invoke-direct {p0}, Lnbisdk/js;->b()V

    goto :goto_0
.end method

.method private N()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnbisdk/js;->oM:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnbisdk/js;->oy:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hE()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/js;->oM:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mU()Lcom/navbuilder/nb/e;

    move-result-object v0

    new-instance v1, Lnbisdk/tz;

    invoke-direct {v1, p0, v0}, Lnbisdk/tz;-><init>(Lnbisdk/kh;Lcom/navbuilder/nb/e;)V

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_2

    const-string v0, "Analytics (uploading)"

    invoke-static {v0}, Lnbisdk/db;->K(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lnbisdk/js;->O()V

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    iget-object v2, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v0, v2}, Lnbisdk/id;->b(Lnbisdk/fa;)V

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-interface {v1, v0}, Lnbisdk/ea;->a(Lnbisdk/id;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/js;->aF:J

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized O()V
    .locals 10

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v0}, Lnbisdk/fa;->fE()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lnbisdk/id;->hG()J

    move-result-wide v3

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hE()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/uh;

    iget-object v6, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lnbisdk/uh;->hG()J

    move-result-wide v6

    sub-long v6, v3, v6

    iget-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v0}, Lnbisdk/fa;->fE()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    :goto_2
    if-gt v1, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/uh;

    const/4 v3, 0x4

    invoke-direct {p0, v0, v3}, Lnbisdk/js;->a(Lnbisdk/uh;B)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lnbisdk/js;->aJ()V

    invoke-direct {p0}, Lnbisdk/js;->iL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private T()V
    .locals 7

    const/4 v6, 0x4

    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnbisdk/jf;->aA(I)[B

    move-result-object v1

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_3

    iget v2, p0, Lnbisdk/js;->da:I

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lnbisdk/js;->da:I

    if-eqz v0, :cond_2

    iget v2, p0, Lnbisdk/js;->da:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, Lnbisdk/js;->da:I

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    :goto_1
    if-lt v0, v6, :cond_0

    iget-wide v2, p0, Lnbisdk/js;->oF:J

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lnbisdk/js;->oF:J

    if-eq v0, v6, :cond_4

    iget-wide v2, p0, Lnbisdk/js;->oF:J

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    iput-wide v2, p0, Lnbisdk/js;->oF:J

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private a(Lnbisdk/uh;B)I
    .locals 8

    const-wide/high16 v6, 0x8

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v1, p1}, Lnbisdk/id;->c(Lnbisdk/uh;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnbisdk/uh;->getId()I

    move-result v1

    invoke-virtual {p1}, Lnbisdk/uh;->hG()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lnbisdk/uh;->nm()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1}, Lnbisdk/uh;->ng()B

    move-result v4

    invoke-static {v1, v2, v3, v4, p2}, Lnbisdk/db;->a(IIIBB)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnbisdk/uh;->no()I

    move-result v1

    iget-object v2, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    invoke-virtual {v2, v1}, Lnbisdk/jf;->aA(I)[B

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v0, v2

    iget v2, p0, Lnbisdk/js;->da:I

    sub-int/2addr v2, v0

    iput v2, p0, Lnbisdk/js;->da:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lnbisdk/js;->aa:Z

    iget-object v2, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    invoke-virtual {v2, v1}, Lnbisdk/jf;->l(I)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Record id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is expected but missing from Analytics store"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, 0x8

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1, v6, v7, v5}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Del.Fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lnbisdk/uh;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/db;->K(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lnbisdk/js;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/js;->N()V

    return-void
.end method

.method static synthetic a(Lnbisdk/js;Lnbisdk/uh;)V
    .locals 14

    const/4 v4, 0x1

    const-wide/16 v11, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    const-string v1, "ENTER persist"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lnbisdk/uh;->fI()[B

    move-result-object v5

    if-eqz v5, :cond_6

    array-length v0, v5

    iget v1, p0, Lnbisdk/js;->da:I

    add-int/2addr v0, v1

    iget-wide v6, p0, Lnbisdk/js;->oQ:J

    cmp-long v1, v6, v11

    if-lez v1, :cond_8

    int-to-long v6, v0

    iget-wide v8, p0, Lnbisdk/js;->oQ:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_8

    iget-object v1, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v1}, Lnbisdk/id;->hE()Ljava/util/Vector;

    move-result-object v6

    move v1, v2

    move v3, v0

    :goto_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/uh;

    invoke-virtual {v0}, Lnbisdk/uh;->no()I

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x5

    invoke-direct {p0, v0, v7}, Lnbisdk/js;->a(Lnbisdk/uh;B)I

    move-result v0

    move v13, v0

    move v0, v1

    move v1, v13

    :goto_1
    sub-int v1, v3, v1

    int-to-long v7, v1

    iget-wide v9, p0, Lnbisdk/js;->oQ:J

    cmp-long v3, v7, v9

    if-gtz v3, :cond_a

    :goto_2
    int-to-long v0, v1

    iget-wide v6, p0, Lnbisdk/js;->oQ:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_8

    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lnbisdk/uh;->no()I

    move-result v0

    if-eqz v0, :cond_9

    :try_start_0
    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    invoke-virtual {p1}, Lnbisdk/uh;->no()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/jf;->aA(I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lnbisdk/js;->da:I

    array-length v0, v0

    sub-int v0, v1, v0

    iput v0, p0, Lnbisdk/js;->da:I

    :cond_1
    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    invoke-virtual {p1}, Lnbisdk/uh;->no()I

    move-result v1

    const/4 v3, 0x0

    array-length v6, v5

    invoke-virtual {v0, v1, v5, v3, v6}, Lnbisdk/jf;->b(I[BII)V
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnbisdk/uh;->getId()I

    move-result v0

    invoke-virtual {p1}, Lnbisdk/uh;->hG()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p1}, Lnbisdk/uh;->nm()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lnbisdk/uh;->ng()B

    move-result v3

    const/16 v6, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lnbisdk/db;->a(IIIBB)V

    :cond_2
    iget v0, p0, Lnbisdk/js;->da:I

    array-length v1, v5

    add-int/2addr v0, v1

    iput v0, p0, Lnbisdk/js;->da:I

    iget-wide v0, p0, Lnbisdk/js;->oF:J

    cmp-long v0, v0, v11

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lnbisdk/uh;->hG()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/uy;->r(J)J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/js;->oF:J

    :cond_3
    iget-wide v0, p0, Lnbisdk/js;->aF:J

    cmp-long v0, v0, v11

    if-nez v0, :cond_4

    sget-object v0, Lnbisdk/rb;->wI:[Z

    invoke-virtual {p1}, Lnbisdk/uh;->ng()B

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnbisdk/uh;->hG()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/uy;->r(J)J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/js;->aF:J

    :cond_4
    iput-boolean v4, p0, Lnbisdk/js;->aa:Z

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalRecordSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnbisdk/js;->da:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldestRecordTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/js;->oF:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lnbisdk/js;->iL()V

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    const-string v1, "LEAVE persist"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    goto/16 :goto_1

    :cond_8
    move v0, v4

    goto/16 :goto_3

    :catch_0
    move-exception v0

    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    array-length v1, v5

    invoke-virtual {v0, v5, v2, v1}, Lnbisdk/jf;->c([BII)I

    move-result v0

    invoke-virtual {p1, v0}, Lnbisdk/uh;->bs(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    array-length v1, v5

    invoke-virtual {v0, v5, v2, v1}, Lnbisdk/jf;->c([BII)I

    move-result v0

    invoke-virtual {p1, v0}, Lnbisdk/uh;->bs(I)V

    goto/16 :goto_4

    :cond_a
    move v3, v1

    move v1, v0

    goto/16 :goto_0

    :cond_b
    move v1, v3

    goto/16 :goto_2
.end method

.method private declared-synchronized a(ZLjava/util/Vector;)V
    .locals 4

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hE()Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/db;->K(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/uh;

    if-eqz p1, :cond_2

    const/16 v2, 0xa

    :goto_1
    invoke-direct {p0, v0, v2}, Lnbisdk/js;->a(Lnbisdk/uh;B)I

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/16 v2, 0xc

    goto :goto_1

    :cond_3
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rem.Size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v1}, Lnbisdk/id;->hE()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/db;->K(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lnbisdk/js;->aJ()V

    invoke-direct {p0}, Lnbisdk/js;->iL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lnbisdk/lw; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const-wide/high16 v1, 0x8

    const/4 v3, 0x1

    :try_start_2
    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lnbisdk/se;Lnbisdk/se;J)Z
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lnbisdk/tt;->bm(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/tt;->mR()Lnbisdk/dz;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/dz;->eL()Lnbisdk/hv;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/hv;->aZ()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v9

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v2}, Lnbisdk/fa;->fL()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v9

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_3

    sub-long/2addr v0, p3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v2}, Lnbisdk/fa;->fN()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    move v0, v9

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lnbisdk/se;->bR()D

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v2}, Lnbisdk/fa;->fM()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    move v0, v9

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lnbisdk/se;->iR()D

    move-result-wide v0

    invoke-interface {p1}, Lnbisdk/se;->iR()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-interface {p1}, Lnbisdk/se;->iS()D

    move-result-wide v2

    invoke-interface {p1}, Lnbisdk/se;->iS()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v2}, Lnbisdk/fa;->fP()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    move v0, v9

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2}, Lnbisdk/se;->getLatitude()D

    move-result-wide v0

    invoke-interface {p2}, Lnbisdk/se;->getLongitude()D

    move-result-wide v2

    invoke-interface {p1}, Lnbisdk/se;->getLatitude()D

    move-result-wide v4

    invoke-interface {p1}, Lnbisdk/se;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lnbisdk/dd;->a(DDDD[D)D

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v2}, Lnbisdk/fa;->fO()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_6

    move v0, v9

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private aJ()V
    .locals 5

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hE()Ljava/util/Vector;

    move-result-object v0

    iget-wide v1, p0, Lnbisdk/js;->oF:J

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/uh;

    invoke-virtual {v0}, Lnbisdk/uh;->hG()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnbisdk/uy;->r(J)J

    move-result-wide v3

    iput-wide v3, p0, Lnbisdk/js;->oF:J

    :goto_0
    iget-wide v3, p0, Lnbisdk/js;->oF:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/js;->aa:Z

    :cond_0
    return-void

    :cond_1
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lnbisdk/js;->oF:J

    goto :goto_0
.end method

.method private b()V
    .locals 4

    :try_start_0
    const-string v0, "com_nim_analytics"

    invoke-static {v0}, Lnbisdk/jf;->au(Ljava/lang/String;)V
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string v0, "com_nim_analytics"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnbisdk/jf;->b(Ljava/lang/String;Z)Lnbisdk/jf;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    const/16 v1, 0xc

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/jf;->c([BII)I

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/js;->da:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/js;->oF:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/js;->aF:J

    new-instance v0, Lnbisdk/fa;

    invoke-direct {v0}, Lnbisdk/fa;-><init>()V

    iput-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    iget-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v0}, Lnbisdk/fa;->fI()[B

    move-result-object v0

    iget-object v1, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lnbisdk/jf;->c([BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-wide/32 v1, 0x1000000

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized b(Lnbisdk/se;[Lnbisdk/cw;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    array-length v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lnbisdk/js;->oM:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/js;->oI:Lnbisdk/se;

    iget-wide v1, p0, Lnbisdk/js;->oH:J

    invoke-direct {p0, p1, v0, v1, v2}, Lnbisdk/js;->a(Lnbisdk/se;Lnbisdk/se;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lnbisdk/js;->oK:J

    iget-object v2, p0, Lnbisdk/js;->oR:Lnbisdk/ft;

    invoke-interface {v2}, Lnbisdk/ft;->gk()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-gez v0, :cond_2

    rsub-int/lit8 v0, v0, 0x20

    xor-int/lit8 v0, v0, 0x2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_4

    aget-object v2, p2, v1

    if-eqz v2, :cond_3

    aget-object v2, p2, v1

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lnbisdk/cw;->c(J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/js;->oH:J

    iput-object p1, p0, Lnbisdk/js;->oI:Lnbisdk/se;

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v0, p1, p2}, Lnbisdk/id;->a(Lnbisdk/se;[Lnbisdk/cw;)Lnbisdk/uh;

    move-result-object v0

    invoke-direct {p0, v0}, Lnbisdk/js;->d(Lnbisdk/uh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Lnbisdk/uh;)V
    .locals 1

    new-instance v0, Lnbisdk/sk;

    invoke-direct {v0, p0, p1}, Lnbisdk/sk;-><init>(Lnbisdk/js;Lnbisdk/uh;)V

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V

    return-void
.end method

.method private e(Z)V
    .locals 13

    const/4 v0, 0x0

    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lnbisdk/js;->oM:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lnbisdk/me;->DEBUG:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    const-string v3, "ENTER checkUpload"

    invoke-virtual {v2, v3}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/tt;->na()Lnbisdk/y;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnbisdk/y;->b(B)Lnbisdk/cm;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/cm;->isRoaming()Z

    move-result v2

    sget-boolean v3, Lnbisdk/me;->sG:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client is in roaming, skip upload, time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v2, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v2}, Lnbisdk/fa;->fD()I

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v5, p0, Lnbisdk/js;->oF:J

    cmp-long v2, v5, v9

    if-eqz v2, :cond_a

    iget-wide v5, p0, Lnbisdk/js;->oF:J

    sub-long v5, v3, v5

    div-long/2addr v5, v11

    iget-object v2, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v2}, Lnbisdk/fa;->fD()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_a

    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    iget-object v5, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v5}, Lnbisdk/fa;->fF()I

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lnbisdk/js;->da:I

    iget-object v6, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v6}, Lnbisdk/fa;->fF()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-wide v5, p0, Lnbisdk/js;->oQ:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_5

    iget v5, p0, Lnbisdk/js;->da:I

    int-to-long v5, v5

    iget-wide v7, p0, Lnbisdk/js;->oQ:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    if-nez v2, :cond_9

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v5

    invoke-virtual {v5}, Lnbisdk/tt;->mZ()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_9

    iget-wide v5, p0, Lnbisdk/js;->aF:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_9

    iget-object v5, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v5}, Lnbisdk/fa;->fK()I

    move-result v5

    if-eqz v5, :cond_9

    iget-wide v5, p0, Lnbisdk/js;->aF:J

    sub-long v5, v3, v5

    div-long/2addr v5, v11

    iget-object v7, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v7}, Lnbisdk/fa;->fK()I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_9

    :goto_2
    if-eqz v1, :cond_8

    iget-wide v5, p0, Lnbisdk/js;->oP:J

    cmp-long v2, v5, v9

    if-eqz v2, :cond_8

    iget-wide v5, p0, Lnbisdk/js;->oP:J

    sub-long v2, v3, v5

    div-long/2addr v2, v11

    iget-object v4, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v4}, Lnbisdk/fa;->fD()I

    move-result v4

    add-int/lit8 v4, v4, -0x14

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    :goto_3
    if-eqz v0, :cond_6

    invoke-direct {p0}, Lnbisdk/js;->N()V

    :cond_6
    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldestRecordTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnbisdk/js;->oF:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", totalRecordSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lnbisdk/js;->da:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    const-string v1, "LEAVE checkUpload"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_2

    :cond_a
    move v2, v0

    goto/16 :goto_1
.end method

.method private static e(Lnbisdk/se;)Z
    .locals 4

    invoke-interface {p0}, Lnbisdk/se;->bR()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iL()V
    .locals 9

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v5, 0x3

    const/4 v3, 0x0

    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lnbisdk/js;->aa:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lnbisdk/js;->aa:Z

    iget v0, p0, Lnbisdk/js;->da:I

    new-array v4, v8, [B

    move v1, v3

    :goto_1
    if-gt v1, v5, :cond_3

    int-to-byte v2, v0

    aput-byte v2, v4, v1

    if-eq v1, v5, :cond_2

    shr-int/lit8 v0, v0, 0x8

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lnbisdk/js;->oF:J

    const/4 v2, 0x4

    :goto_2
    if-gt v2, v7, :cond_5

    const-wide/16 v5, 0xff

    and-long/2addr v5, v0

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    if-eq v2, v7, :cond_4

    const/16 v5, 0x8

    shr-long/2addr v0, v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4, v3, v8}, Lnbisdk/jf;->b(I[BII)V

    goto :goto_0
.end method

.method private im()V
    .locals 7

    const/4 v1, 0x1

    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnbisdk/jf;->b(Lnbisdk/fz;)Lnbisdk/ch;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/js;->da:I

    move v0, v1

    :cond_2
    :goto_1
    invoke-interface {v2}, Lnbisdk/ch;->cK()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lnbisdk/ch;->cJ()I

    move-result v3

    if-eq v3, v1, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    invoke-virtual {v4, v3}, Lnbisdk/jf;->aA(I)[B

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    if-eq v5, v1, :cond_2

    iget v5, p0, Lnbisdk/js;->da:I

    array-length v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Lnbisdk/js;->da:I

    invoke-static {v4}, Lnbisdk/uh;->q([B)Lnbisdk/uh;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Lnbisdk/uh;->bs(I)V

    iget-object v3, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v3, v4}, Lnbisdk/id;->b(Lnbisdk/uh;)V

    invoke-virtual {v4}, Lnbisdk/uh;->getId()I

    move-result v3

    if-le v3, v0, :cond_2

    invoke-virtual {v4}, Lnbisdk/uh;->getId()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lnbisdk/id;->ay(I)V

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hE()Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lnbisdk/si;

    invoke-direct {v1, p0}, Lnbisdk/si;-><init>(Lnbisdk/js;)V

    invoke-static {v0, v1}, Lnbisdk/jx;->a(Ljava/util/Vector;Lnbisdk/fz;)V

    goto :goto_0
.end method


# virtual methods
.method public final L()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(Lnbisdk/dg;)I
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v1

    const/16 v2, 0xe

    invoke-interface {v1, v2}, Lnbisdk/ev;->isEnabled(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v1}, Lnbisdk/fa;->fG()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {p1}, Lnbisdk/dg;->dY()Lnbisdk/gw;

    move-result-object v2

    invoke-virtual {p1}, Lnbisdk/dg;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnbisdk/dg;->dV()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lnbisdk/id;->a(Lnbisdk/gw;Ljava/lang/String;Ljava/lang/String;)Lnbisdk/uh;

    move-result-object v1

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/tt;->mZ()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    new-instance v2, Lnbisdk/bv;

    invoke-virtual {p1}, Lnbisdk/dg;->bc()Lnbisdk/mi;

    move-result-object v3

    invoke-interface {v3}, Lnbisdk/mi;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lnbisdk/dg;->bc()Lnbisdk/mi;

    move-result-object v5

    invoke-interface {v5}, Lnbisdk/mi;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lnbisdk/bv;-><init>(DD)V

    invoke-virtual {v1, v2}, Lnbisdk/uh;->a(Lnbisdk/bv;)V

    invoke-virtual {p1}, Lnbisdk/dg;->ek()Lnbisdk/cp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnbisdk/uh;->c(Lnbisdk/cp;)V

    invoke-virtual {p1}, Lnbisdk/dg;->el()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnbisdk/uh;->bl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/dg;->dV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnbisdk/uh;->bk(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v1}, Lnbisdk/js;->d(Lnbisdk/uh;)V

    invoke-virtual {v1}, Lnbisdk/uh;->getId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    invoke-virtual {v2, v1}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(IF)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lnbisdk/ev;->isEnabled(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v0}, Lnbisdk/fa;->fH()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    const-wide/16 v1, 0x0

    iget v3, p0, Lnbisdk/js;->oO:I

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lnbisdk/id;->a(JIIF)Lnbisdk/uh;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/uh;->getId()I

    move-result v1

    iput v1, p0, Lnbisdk/js;->iA:I

    invoke-direct {p0, v0}, Lnbisdk/js;->d(Lnbisdk/uh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;IF)V
    .locals 9

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lnbisdk/ev;->isEnabled(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v0}, Lnbisdk/fa;->fH()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "new-route"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "app-exit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lnbisdk/js;->oS:Ljava/util/Vector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/js;->oS:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lnbisdk/js;->oS:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lnbisdk/js;->oS:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    new-instance v1, Lnbisdk/vl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnbisdk/js;->oS:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_4
    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    const-wide/16 v1, 0x0

    iget v3, p0, Lnbisdk/js;->oO:I

    iget v4, p0, Lnbisdk/js;->iA:I

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v8}, Lnbisdk/id;->a(JIILjava/lang/String;IFLjava/util/Vector;)Lnbisdk/uh;

    move-result-object v0

    invoke-direct {p0, v0}, Lnbisdk/js;->d(Lnbisdk/uh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(Lnbisdk/cs;Lnbisdk/cs;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lnbisdk/ev;->isEnabled(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v0}, Lnbisdk/fa;->fH()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    const-wide/16 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/id;->a(Lnbisdk/cs;Lnbisdk/cs;JLjava/lang/String;)Lnbisdk/uh;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/uh;->getId()I

    move-result v1

    iput v1, p0, Lnbisdk/js;->oO:I

    invoke-direct {p0, v0}, Lnbisdk/js;->d(Lnbisdk/uh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lnbisdk/fk;)V
    .locals 0

    return-void
.end method

.method public final a(S)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hE()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lnbisdk/js;->a(ZLjava/util/Vector;)V

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lnbisdk/js;->oR:Lnbisdk/ft;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/js;->oR:Lnbisdk/ft;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnbisdk/ft;->b(Lnbisdk/iv;)V

    :cond_1
    return-void
.end method

.method final a([Lnbisdk/cw;)V
    .locals 4

    iget-object v0, p0, Lnbisdk/js;->oJ:Lnbisdk/se;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnbisdk/js;->oL:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/js;->oL:J

    iget-object v0, p0, Lnbisdk/js;->oJ:Lnbisdk/se;

    invoke-direct {p0, v0, p1}, Lnbisdk/js;->b(Lnbisdk/se;[Lnbisdk/cw;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/js;->oH:J

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lnbisdk/js;->oH:J

    iget-object v2, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v2}, Lnbisdk/fa;->fN()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnbisdk/js;->oH:J

    :cond_1
    return-void
.end method

.method public final b(Lnbisdk/hd;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    const/16 v1, 0x24

    invoke-interface {v0, v1}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v0}, Lnbisdk/fa;->fR()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v0, p1}, Lnbisdk/id;->a(Lnbisdk/hd;)Lnbisdk/uh;

    move-result-object v0

    invoke-direct {p0, v0}, Lnbisdk/js;->d(Lnbisdk/uh;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b(Lnbisdk/jv;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    const/16 v1, 0x25

    invoke-interface {v0, v1}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v0}, Lnbisdk/fa;->fQ()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/js;->oE:Lnbisdk/id;

    invoke-virtual {v0, p1}, Lnbisdk/id;->a(Lnbisdk/jv;)Lnbisdk/uh;

    move-result-object v0

    invoke-direct {p0, v0}, Lnbisdk/js;->d(Lnbisdk/uh;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    invoke-virtual {v1, v0}, Lnbisdk/ir;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c(Lnbisdk/fa;)V
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnbisdk/js;->oP:J

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    const-string v1, "ENTER onAnalyticsInformation"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-virtual {v0, p1}, Lnbisdk/fa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lnbisdk/fa;->fI()[B

    move-result-object v0

    iget-object v1, p0, Lnbisdk/js;->oG:Lnbisdk/jf;

    const/4 v2, 0x2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Lnbisdk/jf;->b(I[BII)V
    :try_end_0
    .catch Lnbisdk/lw; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-object p1, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/js;->oy:Z

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/js;->oD:Lnbisdk/fa;

    invoke-static {v0}, Lnbisdk/ck;->a(Lnbisdk/fa;)V

    :cond_2
    invoke-virtual {p1}, Lnbisdk/fa;->fJ()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lnbisdk/js;->a(ZLjava/util/Vector;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnbisdk/fa;->e(Ljava/util/Vector;)V

    iput-boolean v5, p0, Lnbisdk/js;->oM:Z

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    const-string v1, "LEAVE onAnalyticsInformation"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/js;->oN:Lnbisdk/ir;

    invoke-virtual {p1}, Lnbisdk/fa;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    const-string v0, "Configsave failed"

    invoke-static {v0}, Lnbisdk/ck;->K(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "analytics-events"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnbisdk/js;->e(Z)V

    :cond_0
    return-void
.end method

.method public final f(Lnbisdk/se;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v7, 0x0

    if-eqz p1, :cond_1

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {p1}, Lnbisdk/se;->getLatitude()D

    move-result-wide v2

    invoke-interface {p1}, Lnbisdk/se;->getLongitude()D

    move-result-wide v4

    cmpl-double v6, v2, v7

    if-nez v6, :cond_3

    cmpl-double v6, v4, v7

    if-eqz v6, :cond_0

    :cond_3
    const-wide v6, 0x4056800000000000L

    cmpl-double v6, v2, v6

    if-gtz v6, :cond_0

    const-wide v6, -0x3fa9800000000000L

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_0

    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v4, v2

    if-gtz v2, :cond_0

    const-wide v2, -0x3f99800000000000L

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v0, Lnbisdk/kf;

    invoke-static {p1}, Lnbisdk/hn;->d(Lnbisdk/se;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lnbisdk/kf;-><init>([B)V

    iput-object v0, p0, Lnbisdk/js;->oJ:Lnbisdk/se;
    :try_end_0
    .catch Lcom/navbuilder/nb/NBException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lnbisdk/js;->oK:J

    iget-object v0, p0, Lnbisdk/js;->oR:Lnbisdk/ft;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/js;->oR:Lnbisdk/ft;

    invoke-interface {v0}, Lnbisdk/ft;->gm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/js;->oJ:Lnbisdk/se;

    iget-object v2, p0, Lnbisdk/js;->oI:Lnbisdk/se;

    iget-wide v3, p0, Lnbisdk/js;->oH:J

    invoke-direct {p0, v0, v2, v3, v4}, Lnbisdk/js;->a(Lnbisdk/se;Lnbisdk/se;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lnbisdk/js;->iF:Z

    goto :goto_1

    :catch_0
    move-exception v0

    iput-object p1, p0, Lnbisdk/js;->oJ:Lnbisdk/se;

    goto :goto_2
.end method

.method public final h(Ljava/util/Vector;)V
    .locals 12

    const/4 v9, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v11, v0, [Lnbisdk/cw;

    move v8, v9

    move v10, v9

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    invoke-virtual {p1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lnbisdk/xg;

    new-instance v0, Lnbisdk/cw;

    invoke-interface {v7}, Lnbisdk/xg;->dC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7}, Lnbisdk/xg;->jb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-interface {v7}, Lnbisdk/xg;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7}, Lnbisdk/xg;->dD()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lnbisdk/cw;-><init>(Ljava/lang/String;IJLjava/lang/String;I)V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-interface {v7}, Lnbisdk/xg;->dE()Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_2

    move v2, v9

    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/dy;

    if-eqz v1, :cond_0

    new-instance v5, Lnbisdk/vl;

    invoke-virtual {v1}, Lnbisdk/dy;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lnbisdk/dy;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Lnbisdk/cw;->d(Ljava/util/Vector;)V

    :cond_2
    aput-object v0, v11, v10

    add-int/lit8 v1, v10, 0x1

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v10, v1

    goto :goto_0

    :cond_3
    new-instance v0, Lnbisdk/sh;

    invoke-direct {v0, p0, v11}, Lnbisdk/sh;-><init>(Lnbisdk/js;[Lnbisdk/cw;)V

    invoke-static {v0}, Lnbisdk/tt;->d(Lnbisdk/ru;)V

    :cond_4
    return-void
.end method

.method public final iK()V
    .locals 6

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnbisdk/js;->oT:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0, v4}, Lnbisdk/js;->e(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/js;->oT:J

    :cond_0
    iget-boolean v0, p0, Lnbisdk/js;->iF:Z

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/js;->iF:Z

    iget-object v0, p0, Lnbisdk/js;->oR:Lnbisdk/ft;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/js;->oJ:Lnbisdk/se;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/js;->oR:Lnbisdk/ft;

    invoke-interface {v0}, Lnbisdk/ft;->gk()J

    move-result-wide v0

    iget-wide v2, p0, Lnbisdk/js;->oK:J

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double v2, v0, v2

    iget-object v4, p0, Lnbisdk/js;->oJ:Lnbisdk/se;

    invoke-interface {v4}, Lnbisdk/se;->bR()D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-object v4, p0, Lnbisdk/js;->oJ:Lnbisdk/se;

    invoke-static {v4}, Lnbisdk/js;->e(Lnbisdk/se;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/high16 v4, 0x4059

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lnbisdk/js;->oJ:Lnbisdk/se;

    invoke-static {v2}, Lnbisdk/js;->e(Lnbisdk/se;)Z

    move-result v2

    if-nez v2, :cond_4

    const-wide v2, 0x40cd4c0000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lnbisdk/js;->oR:Lnbisdk/ft;

    invoke-interface {v0}, Lnbisdk/ft;->gl()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lnbisdk/js;->oL:J

    invoke-virtual {p0, v0}, Lnbisdk/js;->h(Ljava/util/Vector;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/js;->oL:J

    iget-object v0, p0, Lnbisdk/js;->oR:Lnbisdk/ft;

    invoke-interface {v0}, Lnbisdk/ft;->gj()Z

    goto :goto_0
.end method

.method public final onRequestCancelled(Lcom/navbuilder/nb/b;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/js;->oM:Z

    return-void
.end method

.method public final onRequestComplete(Lcom/navbuilder/nb/b;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/js;->oM:Z

    return-void
.end method

.method public final onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/js;->oM:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/js;->oP:J

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const-string v0, "Analytics (uploading failed)"

    invoke-static {v0}, Lnbisdk/db;->K(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onRequestProgress(ILcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public final onRequestStart(Lcom/navbuilder/nb/b;)V
    .locals 0

    return-void
.end method

.method public final onRequestTimedOut(Lcom/navbuilder/nb/b;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/js;->oM:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/js;->oP:J

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    const-string v0, "Analytics (uploading failed)"

    invoke-static {v0}, Lnbisdk/db;->K(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
