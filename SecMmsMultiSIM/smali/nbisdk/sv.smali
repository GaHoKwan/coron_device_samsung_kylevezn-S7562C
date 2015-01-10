.class public Lnbisdk/sv;
.super Ljava/lang/Object;


# instance fields
.field private cT:I

.field private eM:Z

.field private tX:B

.field private xP:Lnbisdk/in;

.field private xQ:B


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/in;

    invoke-direct {v0}, Lnbisdk/in;-><init>()V

    iput-object v0, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    iput v1, p0, Lnbisdk/sv;->cT:I

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    iput-byte v2, p0, Lnbisdk/sv;->tX:B

    iput-byte v2, p0, Lnbisdk/sv;->xQ:B

    return-void
.end method


# virtual methods
.method public a(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;Lnbisdk/ua;)V
    .locals 11

    :try_start_0
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-ne p4, v1, :cond_1

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->be()D

    move-result-wide v1

    :goto_0
    iget-object v9, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v10, Lnbisdk/nn;

    const/4 v3, 0x1

    sget-wide v4, Lnbisdk/mu;->sX:D

    const/4 v6, 0x1

    const/4 v8, 0x1

    move/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lnbisdk/ju;->a(DZDZZZ)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v9, v10}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {v0, p4}, Lnbisdk/vu;->bA(I)D

    move-result-wide v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "font"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "name"

    invoke-static {p1, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/nn;->getFontSize(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, p0, Lnbisdk/sv;->tX:B

    invoke-static {v1}, Lnbisdk/nn;->getFontStyle(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Lnbisdk/sv;->xQ:B
    :try_end_0
    .catch Lnbisdk/tk; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-wide/16 v2, 0x400

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "red"

    invoke-static {p1, v1}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "green"

    invoke-static {p1, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "blue"

    invoke-static {p1, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    shl-int/lit8 v1, v1, 0x10

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    iput v1, p0, Lnbisdk/sv;->cT:I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "data"

    invoke-static {p1, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cardinal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p6

    invoke-virtual {v0, p4}, Lnbisdk/vu;->bB(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start-name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->ob()Lnbisdk/de;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnbisdk/de;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start-address"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->ob()Lnbisdk/de;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Lnbisdk/lc;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const-string v1, "multiline"

    invoke-static {p1, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start-phonenum"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->ob()Lnbisdk/de;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnbisdk/de;->C(I)Lnbisdk/di;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Lnbisdk/di;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "destination-name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->oc()Lnbisdk/de;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnbisdk/de;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "destination-address"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->oc()Lnbisdk/de;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    invoke-virtual {v2}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v2

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Lnbisdk/lc;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const-string v1, "multiline"

    invoke-static {p1, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "destination-phonenum"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->oc()Lnbisdk/de;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnbisdk/de;->C(I)Lnbisdk/di;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Lnbisdk/di;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p6

    invoke-virtual {v0, p4}, Lnbisdk/vu;->bC(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p6

    invoke-virtual {v0, p4}, Lnbisdk/vu;->bD(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dname-base"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p6

    invoke-virtual {v0, p4}, Lnbisdk/vu;->bE(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p6

    invoke-virtual {v0, p4}, Lnbisdk/vu;->bF(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aname-base"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p6

    invoke-virtual {v0, p4}, Lnbisdk/vu;->bG(I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tripdist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->be()D

    move-result-wide v1

    const/4 v3, 0x1

    sget-wide v4, Lnbisdk/mu;->sX:D

    const/4 v6, 0x1

    const/4 v8, 0x1

    move/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lnbisdk/ju;->a(DZDZZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "triptime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->oa()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lnbisdk/ju;->a(JZZZZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_15
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "newline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lnbisdk/sv;->eM:Z

    if-eqz v1, :cond_16

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    const-string v2, " "

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_17
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stack-dist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->oh()D

    move-result-wide v1

    const/4 v3, 0x1

    sget-wide v4, Lnbisdk/mu;->sX:D

    const/4 v6, 0x1

    const/4 v8, 0x1

    move/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lnbisdk/ju;->a(DZDZZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_18
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ahead-dist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v0, p6

    invoke-virtual {v0, p4}, Lnbisdk/vu;->bP(I)D

    move-result-wide v1

    const/4 v3, 0x1

    sget-wide v4, Lnbisdk/mu;->sX:D

    const/4 v6, 0x1

    const/4 v8, 0x1

    move/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lnbisdk/ju;->a(DZDZZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_19
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "step-number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object/from16 v0, p6

    invoke-virtual {v0, p4}, Lnbisdk/vu;->bN(I)I

    move-result v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "total-steps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object/from16 v0, p6

    invoke-virtual {v0, p4}, Lnbisdk/vu;->bO(I)I

    move-result v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_1b
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tripremaindist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->of()D

    move-result-wide v1

    const/4 v3, 0x1

    sget-wide v4, Lnbisdk/mu;->sX:D

    const/4 v6, 0x1

    const/4 v8, 0x1

    move/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lnbisdk/ju;->a(DZDZZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_1c
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tripremaintime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->og()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lnbisdk/ju;->a(JZZZZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_1d
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tripsettings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->oe()Lnbisdk/br;

    move-result-object v2

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Lnbisdk/br;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_1e
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "if-traffic-delay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->oj()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnbisdk/ql;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lnbisdk/sv;->a(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;Lnbisdk/ua;)V

    goto :goto_2

    :cond_1f
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "traffic-delay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->oi()J

    move-result-wide v1

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lnbisdk/ju;->a(JZZZZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_20
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ferriesremaining"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->ol()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_21
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "speedcameraremaindist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual/range {p6 .. p6}, Lnbisdk/vu;->om()D

    move-result-wide v1

    const/4 v3, 0x1

    sget-wide v4, Lnbisdk/mu;->sX:D

    const/4 v6, 0x1

    const/4 v8, 0x1

    move/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lnbisdk/ju;->a(DZDZZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_22
    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v1

    const-string v2, "next-significant-dist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move-object/from16 v0, p6

    invoke-virtual {v0, p4}, Lnbisdk/vu;->bR(I)D

    move-result-wide v1

    const/4 v3, 0x1

    sget-wide v4, Lnbisdk/mu;->sX:D

    const/4 v6, 0x1

    const/4 v8, 0x1

    move/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lnbisdk/ju;->a(DZDZZZ)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    new-instance v1, Lnbisdk/nn;

    iget v3, p0, Lnbisdk/sv;->cT:I

    iget-byte v4, p0, Lnbisdk/sv;->tX:B

    iget-byte v5, p0, Lnbisdk/sv;->xQ:B

    iget-boolean v6, p0, Lnbisdk/sv;->eM:Z

    invoke-direct/range {v1 .. v6}, Lnbisdk/nn;-><init>(Ljava/lang/String;IBBZ)V

    invoke-virtual {v7, v1}, Lnbisdk/in;->a(Lnbisdk/nn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/sv;->eM:Z

    goto/16 :goto_1

    :cond_23
    move-object/from16 v1, p7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lnbisdk/ua;->a(Lnbisdk/ql;Lnbisdk/sv;ZIZLnbisdk/vu;)V
    :try_end_1
    .catch Lnbisdk/tk; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public mB()Lnbisdk/in;
    .locals 1

    iget-object v0, p0, Lnbisdk/sv;->xP:Lnbisdk/in;

    return-object v0
.end method
