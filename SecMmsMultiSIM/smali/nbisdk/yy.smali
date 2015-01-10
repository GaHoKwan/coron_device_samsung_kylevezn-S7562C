.class public final Lnbisdk/yy;
.super Lnbisdk/aa;


# instance fields
.field private DM:Lnbisdk/ap;

.field private EK:Lnbisdk/tm;


# direct methods
.method public constructor <init>(Lnbisdk/tm;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/aa;-><init>()V

    iput-object p1, p0, Lnbisdk/yy;->DM:Lnbisdk/ap;

    iput-object p1, p0, Lnbisdk/yy;->EK:Lnbisdk/tm;

    return-void
.end method

.method private e(Lnbisdk/qk;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnbisdk/yy;->EK:Lnbisdk/tm;

    invoke-virtual {v0, p1}, Lnbisdk/tm;->e(Lnbisdk/qk;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 1

    invoke-super {p0, p1}, Lnbisdk/aa;->a(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/yy;->DM:Lnbisdk/ap;

    invoke-interface {v0, p1}, Lnbisdk/ap;->a(Lnbisdk/ag;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;I)V

    iget-object v0, p0, Lnbisdk/yy;->DM:Lnbisdk/ap;

    invoke-interface {v0, p1, p2}, Lnbisdk/ap;->a(Lnbisdk/ag;I)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lnbisdk/aa;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    iget-object v0, p0, Lnbisdk/yy;->DM:Lnbisdk/ap;

    invoke-interface {v0, p1, p2}, Lnbisdk/ap;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 19

    const-string v2, "maptile-source"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnbisdk/ql;

    const-string v3, "internal-source"

    invoke-static {v2, v3}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v8, 0x1

    :goto_0
    const-string v3, "url"

    invoke-static {v2, v3}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v4

    const-string v3, ""

    if-eqz v4, :cond_b

    const-string v3, "value"

    invoke-static {v4, v3}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    :goto_1
    const-string v3, "//"

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_1
    const-string v3, "gen"

    invoke-static {v2, v3}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "projection"

    invoke-static {v2, v3}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "url-args-template"

    invoke-virtual {v2, v3}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lnbisdk/ql;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "template"

    invoke-static {v3, v4}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const-string v2, "min-zoom"

    invoke-virtual {v3, v2}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "min-zoom"

    invoke-static {v3, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v12

    long-to-int v9, v12

    :cond_2
    const-string v2, "max-zoom"

    invoke-virtual {v3, v2}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "max-zoom"

    invoke-static {v3, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v12

    long-to-int v10, v12

    :cond_3
    const-string v2, "cache-id"

    invoke-virtual {v3, v2}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "cache-id"

    invoke-static {v3, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v11

    long-to-int v11, v11

    :cond_4
    const-string v2, "tile-size"

    invoke-virtual {v3, v2}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "tile-size"

    invoke-static {v3, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v12

    long-to-int v14, v12

    :cond_5
    const-string v12, ""

    const-string v13, ""

    const-string v5, ""

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v2

    const/16 v18, 0x26

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lnbisdk/tt;->bm(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "tile-store-template"

    invoke-virtual {v3, v2}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "tile-store-template"

    invoke-static {v3, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_6
    new-instance v2, Lnbisdk/qk;

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v2 .. v14}, Lnbisdk/qk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/yy;->DM:Lnbisdk/ap;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lnbisdk/ap;->a(Lnbisdk/ag;Lnbisdk/ql;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/yy;->EK:Lnbisdk/tm;

    invoke-virtual {v3, v2}, Lnbisdk/tm;->e(Lnbisdk/qk;)V

    goto/16 :goto_3

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    new-instance v2, Lcom/navbuilder/nb/NBException;

    const/16 v3, 0xfa3

    const-string v4, "Server reply doesn\'t contain /\'tile-store-template/\' element."

    invoke-direct {v2, v3, v4}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lnbisdk/yy;->a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V

    :cond_9
    return-void

    :cond_a
    move-object v3, v15

    goto/16 :goto_2

    :cond_b
    move-object v15, v3

    goto/16 :goto_1
.end method

.method public final a(Lnbisdk/ze;)V
    .locals 4

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/ck;->cM()V

    :cond_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lnbisdk/tt;->bm(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lnbisdk/tt;->bl(I)I

    move-result v0

    const-string v1, "screen-width"

    int-to-long v2, v0

    invoke-static {p1, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lnbisdk/tt;->bl(I)I

    move-result v0

    const-string v1, "screen-height"

    int-to-long v2, v0

    invoke-static {p1, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lnbisdk/tt;->bl(I)I

    move-result v0

    const-string v1, "screen-resolution"

    int-to-long v2, v0

    invoke-static {p1, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v0, "en-US"

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1f

    invoke-interface {v1, v0}, Lnbisdk/ev;->e(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lnbisdk/tt;->bm(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "want-shared-maps"

    :goto_0
    new-instance v1, Lnbisdk/ze;

    invoke-direct {v1, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_2
    invoke-static {}, Lnbisdk/za;->pg()Lnbisdk/za;

    move-result-object v0

    const-string v1, "base_map"

    invoke-virtual {v0, v1}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v1

    invoke-direct {p0, v1}, Lnbisdk/yy;->e(Lnbisdk/qk;)V

    const-string v1, "traffic"

    invoke-virtual {v0, v1}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v1

    invoke-direct {p0, v1}, Lnbisdk/yy;->e(Lnbisdk/qk;)V

    const-string v1, "route"

    invoke-virtual {v0, v1}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v1

    invoke-direct {p0, v1}, Lnbisdk/yy;->e(Lnbisdk/qk;)V

    const-string v1, "satellite"

    invoke-virtual {v0, v1}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v1

    invoke-direct {p0, v1}, Lnbisdk/yy;->e(Lnbisdk/qk;)V

    const-string v1, "hybrid"

    invoke-virtual {v0, v1}, Lnbisdk/za;->by(Ljava/lang/String;)Lnbisdk/qk;

    move-result-object v0

    invoke-direct {p0, v0}, Lnbisdk/yy;->e(Lnbisdk/qk;)V

    return-void

    :cond_3
    const-string v0, "want-extended-maps"

    goto :goto_0
.end method

.method protected final ak()Ljava/lang/String;
    .locals 1

    const-string v0, "maptile-source"

    return-object v0
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 1

    invoke-super {p0, p1}, Lnbisdk/aa;->d(Lnbisdk/ag;)V

    iget-object v0, p0, Lnbisdk/yy;->DM:Lnbisdk/ap;

    invoke-interface {v0, p1}, Lnbisdk/ap;->d(Lnbisdk/ag;)V

    return-void
.end method
