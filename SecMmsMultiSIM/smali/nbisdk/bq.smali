.class public Lnbisdk/bq;
.super Ljava/lang/Object;


# instance fields
.field private V:I

.field private bj:I

.field private cS:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/ql;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/bq;->bj:I

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/bq;->V:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/uy;->s(J)I

    move-result v0

    int-to-long v4, v0

    const-string v0, "age"

    invoke-virtual {p1, v0}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "age"

    invoke-static {p1, v0}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnbisdk/bq;->bj:I

    const-string v0, "type"

    invoke-static {p1, v0}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lnbisdk/bq;->V:I

    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/bq;->cS:Ljava/util/Hashtable;

    const-string v0, "traffic-flow-item"

    invoke-virtual {p1, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v13

    if-eqz v13, :cond_3

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lnbisdk/bg;

    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/ql;

    iget v2, p0, Lnbisdk/bq;->bj:I

    iget v3, p0, Lnbisdk/bq;->V:I

    invoke-direct/range {v0 .. v5}, Lnbisdk/bg;-><init>(Lnbisdk/ql;IIJ)V

    iget-object v1, p0, Lnbisdk/bq;->cS:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lnbisdk/bg;->bg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnbisdk/bg;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1
    invoke-virtual {v0}, Lnbisdk/bg;->ai()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lnbisdk/bg;->bg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lnbisdk/bg;->be()D

    move-result-wide v9

    invoke-virtual {v0}, Lnbisdk/bg;->bf()D

    move-result-wide v11

    invoke-static/range {v6 .. v12}, Lnbisdk/db;->a(Ljava/lang/String;Ljava/lang/String;CDD)V

    goto :goto_0

    :cond_2
    const/16 v8, 0x55

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static a(Lnbisdk/ql;Lnbisdk/ui;)Lnbisdk/hn;
    .locals 7

    new-instance v1, Lnbisdk/hn;

    invoke-virtual {p1}, Lnbisdk/ui;->ny()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnbisdk/hn;-><init>(Ljava/lang/String;)V

    const-string v0, "suggest-match"

    invoke-virtual {p0, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    if-eqz v0, :cond_0

    new-instance v3, Lnbisdk/dk;

    const-string v4, "line1"

    invoke-static {v0, v4}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "line2"

    invoke-static {v0, v5}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "match-type"

    invoke-static {v0, v6}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lnbisdk/bq;->q(Lnbisdk/ql;)Lnbisdk/fg;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lnbisdk/dk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnbisdk/gw;)V

    invoke-virtual {v1, v3}, Lnbisdk/hn;->a(Lnbisdk/dk;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static q(Lnbisdk/ql;)Lnbisdk/fg;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "search-filter"

    invoke-static {p0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lnbisdk/fg;

    invoke-direct {v0, v1}, Lnbisdk/fg;-><init>(Lnbisdk/ql;)V

    const-string v2, "result-style"

    invoke-static {v1, v2}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    const-string v2, "key"

    invoke-static {v1, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/gw;->ai(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lnbisdk/bq;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Lnbisdk/bq;->V:I

    iget v3, p1, Lnbisdk/bq;->V:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lnbisdk/bq;->V:I

    iget v3, p1, Lnbisdk/bq;->V:I

    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lnbisdk/bq;->bj:I

    iget v3, p1, Lnbisdk/bq;->bj:I

    if-lt v2, v3, :cond_0

    iget v0, p0, Lnbisdk/bq;->bj:I

    iget v2, p1, Lnbisdk/bq;->bj:I

    if-le v0, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lnbisdk/bq;)V
    .locals 4

    iget-object v0, p1, Lnbisdk/bq;->cS:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/bq;->cS:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnbisdk/bq;->cS:Ljava/util/Hashtable;

    iget-object v3, p1, Lnbisdk/bq;->cS:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final s(Ljava/lang/String;)Lnbisdk/bg;
    .locals 1

    iget-object v0, p0, Lnbisdk/bq;->cS:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bg;

    return-object v0
.end method
