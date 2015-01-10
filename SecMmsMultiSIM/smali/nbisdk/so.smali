.class public final Lnbisdk/so;
.super Ljava/lang/Object;


# instance fields
.field private ch:Ljava/lang/String;

.field private ci:Ljava/lang/String;

.field private cj:Ljava/lang/String;

.field private ck:Ljava/lang/String;

.field private da:I

.field private iq:I

.field private it:I

.field private pO:D

.field private pQ:D

.field private vb:D

.field private xH:[[B

.field private xI:B

.field private xJ:Lnbisdk/gd;

.field private xK:Lnbisdk/ly;


# direct methods
.method public constructor <init>(Lnbisdk/ql;Lnbisdk/hg;)V
    .locals 26

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lnbisdk/so;->xJ:Lnbisdk/gd;

    const-string v2, "id"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnbisdk/so;->ch:Ljava/lang/String;

    const-string v2, "version"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnbisdk/so;->ci:Ljava/lang/String;

    const-string v2, "dataset-id"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnbisdk/so;->cj:Ljava/lang/String;

    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnbisdk/so;->ck:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/so;->ck:Ljava/lang/String;

    const-string v3, "city-model"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-byte v2, v0, Lnbisdk/so;->xI:B

    :goto_0
    const-string v2, "start-maneuver-index"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnbisdk/so;->da:I

    const-string v2, "start-maneuver-offset"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lnbisdk/so;->pO:D

    const-string v2, "end-maneuver-index"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnbisdk/so;->iq:I

    const-string v2, "end-maneuver-offset"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lnbisdk/so;->pQ:D

    const-string v2, "projection"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lnbisdk/ql;->is()Ljava/util/Enumeration;

    move-result-object v6

    const/16 v24, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnbisdk/ql;

    invoke-virtual {v2}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v7, "content-path"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "route-spline-packed"

    invoke-virtual {v2, v3}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v3, "junction-model"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-byte v2, v0, Lnbisdk/so;->xI:B

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput-byte v2, v0, Lnbisdk/so;->xI:B

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v3

    const-string v7, "projection-parameters"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lnbisdk/uw;

    invoke-direct {v3, v4, v2}, Lnbisdk/uw;-><init>(Ljava/lang/String;Lnbisdk/ql;)V

    move-object v2, v3

    :goto_2
    move-object/from16 v24, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v2, v4, [[B

    move-object/from16 v0, p0

    iput-object v2, v0, Lnbisdk/so;->xH:[[B

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/so;->xH:[[B

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v6, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnbisdk/so;->b(Lnbisdk/hg;)V

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/so;->xJ:Lnbisdk/gd;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lnbisdk/uw;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "mercator"

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "transverse-mercator"

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gs()D

    move-result-wide v2

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gu()D

    move-result-wide v4

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gt()D

    move-result-wide v6

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gq()D

    move-result-wide v8

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gr()D

    move-result-wide v10

    invoke-static/range {v2 .. v11}, Lnbisdk/pt;->a(DDDDD)Lnbisdk/pt;

    :cond_5
    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lnbisdk/so;->xJ:Lnbisdk/gd;

    :cond_6
    sget-boolean v2, Lnbisdk/me;->sE:Z

    if-eqz v2, :cond_8

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v24, :cond_7

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mercator"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x1

    :goto_5
    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gw()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WGS84"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v3, 0x1

    :goto_6
    move v13, v3

    move v12, v2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/so;->ch:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-byte v3, v0, Lnbisdk/so;->xI:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    const/4 v3, 0x3

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lnbisdk/so;->ci:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnbisdk/so;->cj:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lnbisdk/so;->da:I

    move-object/from16 v0, p0

    iget-wide v7, v0, Lnbisdk/so;->pO:D

    move-object/from16 v0, p0

    iget v9, v0, Lnbisdk/so;->iq:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lnbisdk/so;->pQ:D

    if-eqz v24, :cond_11

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gu()D

    move-result-wide v14

    :goto_8
    if-eqz v24, :cond_12

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gt()D

    move-result-wide v16

    :goto_9
    if-eqz v24, :cond_13

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gq()D

    move-result-wide v18

    :goto_a
    if-eqz v24, :cond_14

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gr()D

    move-result-wide v20

    :goto_b
    if-eqz v24, :cond_15

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gs()D

    move-result-wide v22

    :goto_c
    if-eqz v24, :cond_16

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gv()D

    move-result-wide v24

    :goto_d
    invoke-static/range {v2 .. v25}, Lnbisdk/ck;->a(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;IDIDBBDDDDDD)V

    :cond_8
    return-void

    :cond_9
    const-string v2, "universal-transverse-mercator"

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gq()D

    move-result-wide v2

    invoke-interface/range {v24 .. v24}, Lnbisdk/gd;->gr()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lnbisdk/pt;->c(DD)Lnbisdk/pt;

    goto/16 :goto_4

    :cond_a
    const-string v3, "transverse-mercator"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x2

    goto :goto_5

    :cond_b
    const-string v3, "universal-transverse-mercator"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x3

    goto/16 :goto_5

    :cond_c
    const-string v3, "web-mercator"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x4

    goto/16 :goto_5

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_e
    const-string v4, "D_North_American_1983"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x2

    goto/16 :goto_6

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_11
    const-wide/16 v14, 0x0

    goto :goto_8

    :cond_12
    const-wide/16 v16, 0x0

    goto :goto_9

    :cond_13
    const-wide v18, -0x3f70c80000000000L

    goto :goto_a

    :cond_14
    const-wide v20, -0x3f70c80000000000L

    goto :goto_b

    :cond_15
    const-wide/16 v22, 0x0

    goto :goto_c

    :cond_16
    const-wide/16 v24, 0x0

    goto :goto_d

    :cond_17
    move-object/from16 v2, v24

    goto/16 :goto_2
.end method

.method private b(Lnbisdk/hg;)V
    .locals 22

    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->da:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/pn;->lv()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lnbisdk/so;->pO:D

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lnbisdk/so;->vb:D

    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->da:I

    move v8, v2

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->iq:I

    if-gt v8, v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->da:I

    if-eq v8, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->iq:I

    if-eq v8, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->it:I

    int-to-double v2, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/pn;->getDistance()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnbisdk/so;->it:I

    :cond_0
    :goto_1
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->da:I

    if-ne v8, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->iq:I

    if-ne v8, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->it:I

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lnbisdk/so;->pQ:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lnbisdk/so;->pO:D

    sub-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnbisdk/so;->it:I

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->iq:I

    if-ne v8, v2, :cond_0

    const/4 v2, 0x1

    new-array v4, v2, [D

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    const/4 v2, 0x1

    new-array v5, v2, [D

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v2

    const/4 v2, 0x1

    new-array v6, v2, [D

    const/4 v2, 0x0

    const-wide/16 v9, 0x0

    aput-wide v9, v6, v2

    const/4 v2, 0x1

    new-array v7, v2, [D

    const/4 v2, 0x0

    const-wide/16 v9, 0x0

    aput-wide v9, v7, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v13

    invoke-interface {v13}, Lnbisdk/pn;->lo()Lnbisdk/em;

    move-result-object v2

    const-wide/16 v9, 0x0

    invoke-virtual {v2}, Lnbisdk/em;->fe()I

    move-result v14

    const/4 v3, 0x0

    move-wide v11, v9

    :goto_3
    if-ge v3, v14, :cond_2

    invoke-virtual/range {v2 .. v7}, Lnbisdk/em;->a(I[D[D[D[D)Z

    const/4 v9, 0x0

    aget-wide v9, v6, v9

    add-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v15, v0, Lnbisdk/so;->pQ:D

    cmpl-double v9, v9, v15

    if-ltz v9, :cond_7

    const/4 v7, 0x1

    new-array v7, v7, [D

    const/4 v9, 0x0

    const-wide/16 v15, 0x0

    aput-wide v15, v7, v9

    const/4 v9, 0x1

    new-array v15, v9, [D

    const/4 v9, 0x0

    const-wide/16 v16, 0x0

    aput-wide v16, v15, v9

    add-int/lit8 v9, v14, -0x1

    if-ne v3, v9, :cond_5

    invoke-interface {v13}, Lnbisdk/pn;->lp()Lnbisdk/ly;

    move-result-object v9

    iget-wide v9, v9, Lnbisdk/ly;->sp:D

    :goto_4
    add-int/lit8 v14, v14, -0x1

    if-ne v3, v14, :cond_6

    invoke-interface {v13}, Lnbisdk/pn;->lp()Lnbisdk/ly;

    move-result-object v2

    iget-wide v2, v2, Lnbisdk/ly;->sq:D

    :goto_5
    const/4 v14, 0x0

    aget-wide v16, v4, v14

    const/4 v4, 0x0

    aget-wide v4, v5, v4

    const/4 v14, 0x0

    aget-wide v18, v6, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnbisdk/so;->pQ:D

    move-wide/from16 v20, v0

    sub-double v11, v20, v11

    const-wide/high16 v20, 0x3ff0

    mul-double v11, v11, v20

    div-double v11, v11, v18

    const/4 v6, 0x0

    sub-double v9, v9, v16

    mul-double/2addr v9, v11

    add-double v9, v9, v16

    aput-wide v9, v7, v6

    const/4 v6, 0x0

    sub-double/2addr v2, v4

    mul-double/2addr v2, v11

    add-double/2addr v2, v4

    aput-wide v2, v15, v6

    new-instance v2, Lnbisdk/ly;

    const/4 v3, 0x0

    aget-wide v3, v7, v3

    const/4 v5, 0x0

    aget-wide v5, v15, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lnbisdk/ly;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnbisdk/so;->xK:Lnbisdk/ly;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/so;->xK:Lnbisdk/ly;

    if-nez v2, :cond_0

    const-string v2, "EC End Maneuver offset is longer than End Maneuver length"

    invoke-static {v2}, Lnbisdk/xo;->i(Ljava/lang/Object;)V

    new-instance v2, Lnbisdk/ly;

    invoke-interface {v13}, Lnbisdk/pn;->lp()Lnbisdk/ly;

    move-result-object v3

    invoke-direct {v2, v3}, Lnbisdk/ly;-><init>(Lnbisdk/ly;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnbisdk/so;->xK:Lnbisdk/ly;

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->da:I

    if-ne v8, v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->da:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/pn;->getDistance()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lnbisdk/so;->pO:D

    sub-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnbisdk/so;->it:I

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/so;->it:I

    move-object/from16 v0, p0

    iget-wide v3, v0, Lnbisdk/so;->pQ:D

    double-to-int v3, v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lnbisdk/so;->it:I

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v2, v9}, Lnbisdk/em;->N(I)D

    move-result-wide v9

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lnbisdk/em;->O(I)D

    move-result-wide v2

    goto/16 :goto_5

    :cond_7
    const/4 v9, 0x0

    aget-wide v9, v6, v9

    add-double/2addr v9, v11

    add-int/lit8 v3, v3, 0x1

    move-wide v11, v9

    goto/16 :goto_3

    :cond_8
    return-void
.end method


# virtual methods
.method public final bS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/so;->cj:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/so;->ch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/so;->ck:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dataSetID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/so;->cj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnbisdk/so;->da:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/so;->pO:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " End:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnbisdk/so;->iq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/so;->pQ:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lnbisdk/so;->vb:D

    double-to-int v1, v1

    iget v2, p0, Lnbisdk/so;->it:I

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Range: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lnbisdk/so;->vb:D

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnbisdk/so;->it:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " End Point:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/so;->xK:Lnbisdk/ly;

    iget-wide v2, v2, Lnbisdk/ly;->sp:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/so;->xK:Lnbisdk/ly;

    iget-wide v2, v2, Lnbisdk/ly;->sq:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnbisdk/so;->xJ:Lnbisdk/gd;

    if-eqz v1, :cond_0

    const-string v1, " Projection Parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/so;->xJ:Lnbisdk/gd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
