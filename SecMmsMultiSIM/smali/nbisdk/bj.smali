.class public Lnbisdk/bj;
.super Ljava/lang/Object;


# instance fields
.field private c:Lnbisdk/zc;

.field private cL:Lnbisdk/zp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/ql;Lnbisdk/zc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnbisdk/bj;->c:Lnbisdk/zc;

    invoke-virtual {p2}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    check-cast v0, Lnbisdk/zp;

    iput-object v0, p0, Lnbisdk/bj;->cL:Lnbisdk/zp;

    invoke-direct {p0, p1}, Lnbisdk/bj;->b(Lnbisdk/ql;)V

    return-void
.end method

.method public static a(Lnbisdk/mq;Lcom/navbuilder/nb/e;)Lnbisdk/et;
    .locals 2

    new-instance v0, Lnbisdk/vp;

    invoke-direct {v0, p0}, Lnbisdk/vp;-><init>(Lnbisdk/ts;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lnbisdk/wy;

    invoke-direct {v1, v0}, Lnbisdk/wy;-><init>(Lnbisdk/d;)V

    return-object v1
.end method

.method public static a(Lnbisdk/xx;Lcom/navbuilder/nb/e;)Lnbisdk/fc;
    .locals 2

    new-instance v0, Lnbisdk/bc;

    invoke-direct {v0, p0}, Lnbisdk/bc;-><init>(Lnbisdk/ts;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context parameter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "single search listener parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lnbisdk/zy;

    invoke-direct {v1, v0}, Lnbisdk/zy;-><init>(Lnbisdk/hp;)V

    return-object v1
.end method

.method public static a(Lnbisdk/lz;Lcom/navbuilder/nb/e;)Lnbisdk/fn;
    .locals 1

    new-instance v0, Lnbisdk/ib;

    invoke-direct {v0, p0}, Lnbisdk/ib;-><init>(Lnbisdk/ts;)V

    invoke-static {v0, p1}, Lnbisdk/bk;->a(Lnbisdk/aj;Lcom/navbuilder/nb/e;)Lnbisdk/fn;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lnbisdk/ko;Lcom/navbuilder/nb/e;)Lnbisdk/gk;
    .locals 2

    new-instance v0, Lnbisdk/ng;

    invoke-direct {v0, p0}, Lnbisdk/ng;-><init>(Lnbisdk/ts;)V

    new-instance v1, Lnbisdk/uq;

    invoke-direct {v1, v0, p1}, Lnbisdk/uq;-><init>(Lnbisdk/eh;Lcom/navbuilder/nb/e;)V

    return-object v1
.end method

.method public static a(Lnbisdk/n;Lcom/navbuilder/nb/e;)Lnbisdk/hi;
    .locals 2

    new-instance v0, Lnbisdk/su;

    invoke-direct {v0, p0}, Lnbisdk/su;-><init>(Lnbisdk/ts;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lnbisdk/ym;

    invoke-direct {v1, v0}, Lnbisdk/ym;-><init>(Lnbisdk/eo;)V

    return-object v1
.end method

.method public static a(Lnbisdk/a;Lcom/navbuilder/nb/e;)Lnbisdk/jc;
    .locals 1

    new-instance v0, Lnbisdk/i;

    invoke-direct {v0, p0}, Lnbisdk/i;-><init>(Lnbisdk/ts;)V

    invoke-static {v0, p1}, Lnbisdk/bk;->a(Lnbisdk/o;Lcom/navbuilder/nb/e;)Lnbisdk/jc;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lnbisdk/gn;Lcom/navbuilder/nb/e;)Lnbisdk/mr;
    .locals 2

    new-instance v0, Lnbisdk/ep;

    invoke-direct {v0, p0}, Lnbisdk/ep;-><init>(Lnbisdk/ts;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lnbisdk/wf;

    invoke-direct {v1, v0}, Lnbisdk/wf;-><init>(Lnbisdk/ei;)V

    return-object v1
.end method

.method public static a(Lnbisdk/aq;Lcom/navbuilder/nb/e;)Lnbisdk/nm;
    .locals 1

    new-instance v0, Lnbisdk/ed;

    invoke-direct {v0, p0}, Lnbisdk/ed;-><init>(Lnbisdk/ts;)V

    invoke-static {v0, p1}, Lnbisdk/bk;->a(Lnbisdk/mz;Lcom/navbuilder/nb/e;)Lnbisdk/nm;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lnbisdk/dj;Lcom/navbuilder/nb/e;)Lnbisdk/no;
    .locals 1

    new-instance v0, Lnbisdk/io;

    invoke-direct {v0, p0}, Lnbisdk/io;-><init>(Lnbisdk/ts;)V

    invoke-static {v0, p1}, Lnbisdk/bk;->a(Lnbisdk/zb;Lcom/navbuilder/nb/e;)Lnbisdk/no;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lnbisdk/lf;Lcom/navbuilder/nb/e;)Lnbisdk/uj;
    .locals 2

    new-instance v0, Lnbisdk/rh;

    invoke-direct {v0, p0}, Lnbisdk/rh;-><init>(Lnbisdk/ts;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lnbisdk/zw;

    invoke-direct {v1, v0}, Lnbisdk/zw;-><init>(Lnbisdk/dt;)V

    return-object v1
.end method

.method public static a(Lnbisdk/ot;Lcom/navbuilder/nb/e;)Lnbisdk/um;
    .locals 2

    new-instance v0, Lnbisdk/sa;

    invoke-direct {v0, p0}, Lnbisdk/sa;-><init>(Lnbisdk/ts;)V

    new-instance v1, Lnbisdk/ry;

    invoke-direct {v1, v0, p1}, Lnbisdk/ry;-><init>(Lnbisdk/rl;Lcom/navbuilder/nb/e;)V

    return-object v1
.end method

.method private b(Lnbisdk/ql;)V
    .locals 27

    if-eqz p1, :cond_6

    const/4 v2, 0x0

    const-string v3, "age"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v2, "age"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    move/from16 v17, v2

    :goto_1
    const-string v2, "place"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v21

    if-eqz v21, :cond_6

    :cond_0
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnbisdk/ql;

    invoke-static {v2}, Lnbisdk/bf;->e(Lnbisdk/ql;)Lnbisdk/jh;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnbisdk/jh;->D(Z)V

    sget-boolean v2, Lnbisdk/me;->sE:Z

    if-eqz v2, :cond_1

    invoke-static/range {v22 .. v22}, Lnbisdk/ck;->a(Lnbisdk/jh;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/bj;->cL:Lnbisdk/zp;

    invoke-virtual {v2}, Lnbisdk/zp;->ht()I

    move-result v23

    const/4 v2, 0x0

    move/from16 v20, v2

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/bj;->cL:Lnbisdk/zp;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lnbisdk/zp;->ar(I)Lnbisdk/pn;

    move-result-object v16

    if-eqz v16, :cond_5

    const/4 v2, 0x1

    new-array v15, v2, [D

    const/4 v2, 0x1

    new-array v0, v2, [D

    move-object/from16 v24, v0

    const/4 v2, 0x1

    new-array v0, v2, [D

    move-object/from16 v25, v0

    invoke-virtual/range {v22 .. v22}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {v22 .. v22}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v5

    invoke-interface/range {v16 .. v16}, Lnbisdk/pn;->lo()Lnbisdk/em;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lnbisdk/bj;->c:Lnbisdk/zc;

    invoke-virtual {v7}, Lnbisdk/zc;->pi()Lnbisdk/mu;

    move-result-object v7

    invoke-virtual {v7}, Lnbisdk/mu;->ku()D

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lnbisdk/em;->a(DDD)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Lnbisdk/pn;->lo()Lnbisdk/em;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/em;->fe()I

    move-result v26

    const-wide/16 v8, 0x0

    invoke-interface/range {v16 .. v16}, Lnbisdk/pn;->lo()Lnbisdk/em;

    move-result-object v7

    const/4 v2, 0x0

    move-wide/from16 v18, v8

    move v8, v2

    :goto_4
    move/from16 v0, v26

    if-ge v8, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/bj;->c:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->pi()Lnbisdk/mu;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/mu;->ku()D

    move-result-wide v13

    move-wide v9, v3

    move-wide v11, v5

    invoke-virtual/range {v7 .. v14}, Lnbisdk/em;->a(IDDD)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Lnbisdk/pn;->lo()Lnbisdk/em;

    move-result-object v7

    const/4 v12, 0x0

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object v11, v15

    invoke-virtual/range {v7 .. v12}, Lnbisdk/em;->a(I[D[D[D[D)Z

    const/4 v2, 0x0

    aget-wide v7, v24, v2

    const/4 v2, 0x0

    aget-wide v9, v25, v2

    const/4 v15, 0x0

    move-wide v11, v3

    move-wide v13, v5

    invoke-static/range {v7 .. v15}, Lnbisdk/dd;->a(DDDD[D)D

    move-result-wide v2

    add-double v2, v2, v18

    :goto_5
    const-wide/high16 v4, -0x4010

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_5

    invoke-interface/range {v16 .. v16}, Lnbisdk/pn;->lv()D

    move-result-wide v4

    add-double/2addr v4, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lnbisdk/jh;->n(D)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lnbisdk/jh;->m(D)V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lnbisdk/jh;->aC(I)V

    move-object/from16 v2, v16

    check-cast v2, Lnbisdk/yo;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lnbisdk/yo;->b(Lnbisdk/jh;)V

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-interface/range {v16 .. v16}, Lnbisdk/pn;->lo()Lnbisdk/em;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v10, v8

    move-object v13, v15

    invoke-virtual/range {v9 .. v14}, Lnbisdk/em;->a(I[D[D[D[D)Z

    const/4 v2, 0x0

    aget-wide v9, v15, v2

    add-double v9, v9, v18

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v18, v9

    goto :goto_4

    :cond_4
    const-wide/high16 v2, -0x4010

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto/16 :goto_3

    :cond_6
    return-void

    :cond_7
    move/from16 v17, v2

    goto/16 :goto_1
.end method
