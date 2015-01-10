.class public Lnbisdk/bn;
.super Ljava/lang/Object;


# instance fields
.field private aR:Ljava/util/Vector;

.field private cO:Lnbisdk/je;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/je;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/bn;->aR:Ljava/util/Vector;

    iput-object p1, p0, Lnbisdk/bn;->cO:Lnbisdk/je;

    return-void
.end method

.method public static a(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/cp;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lnbisdk/yt;

    const-string v2, "provider-id"

    invoke-static {v1, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v1, v3}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lnbisdk/yt;-><init>(Ljava/lang/String;[B)V

    :cond_0
    return-object v0
.end method

.method public static a(Lnbisdk/rt;I)Lnbisdk/sp;
    .locals 2

    new-instance v0, Lnbisdk/sp;

    invoke-direct {v0}, Lnbisdk/sp;-><init>()V

    invoke-virtual {p0}, Lnbisdk/rt;->fj()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/sp;->k(I)V

    invoke-virtual {v0, p1}, Lnbisdk/sp;->l(I)V

    return-object v0
.end method

.method public static a(Lnbisdk/ql;Lnbisdk/rt;)Lnbisdk/sq;
    .locals 5

    new-instance v2, Lnbisdk/sq;

    invoke-direct {v2}, Lnbisdk/sq;-><init>()V

    const-string v0, "proxmatch"

    invoke-virtual {p0, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-static {v0}, Lnbisdk/bn;->j(Lnbisdk/ql;)Lnbisdk/mh;

    move-result-object v4

    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v1}, Lnbisdk/bn;->a(Lnbisdk/rt;I)Lnbisdk/sp;

    move-result-object v1

    invoke-virtual {v4, v1}, Lnbisdk/uz;->f(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lnbisdk/sq;->a(Lnbisdk/uz;)V

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "fuel-price-summary"

    invoke-static {p0, v0}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "fuel-price-summary"

    invoke-static {p0, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    const-string v1, "fuel-product"

    invoke-virtual {v0, v1}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-static {v0}, Lnbisdk/bi;->f(Lnbisdk/ql;)Lnbisdk/ni;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ni;->isAverage()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Lnbisdk/sq;->b(Lnbisdk/ni;)V

    :cond_2
    invoke-virtual {v0}, Lnbisdk/ni;->isLow()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Lnbisdk/sq;->c(Lnbisdk/ni;)V

    goto :goto_1

    :cond_3
    invoke-static {p0, v2}, Lnbisdk/bn;->a(Lnbisdk/ql;Lnbisdk/sq;)V

    return-object v2
.end method

.method private static a(Lnbisdk/ql;Lnbisdk/sq;)V
    .locals 4

    const-string v0, "file"

    invoke-virtual {p0, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    const-string v2, "name"

    invoke-static {v0, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lnbisdk/sq;->b(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lnbisdk/ql;Lnbisdk/uz;)V
    .locals 2

    const-string v0, "search-filter"

    invoke-static {p0, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnbisdk/yg;

    invoke-direct {v1, v0}, Lnbisdk/yg;-><init>(Lnbisdk/ql;)V

    invoke-virtual {p1, v1}, Lnbisdk/uz;->a(Lnbisdk/gw;)V

    :cond_0
    return-void
.end method

.method public static a(Lnbisdk/ze;Lnbisdk/cp;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lnbisdk/ze;

    invoke-direct {v0, p2, p0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "provider-id"

    invoke-virtual {p1}, Lnbisdk/cp;->cQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {p1}, Lnbisdk/cp;->cR()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public static b(Lnbisdk/ql;Lnbisdk/rt;)Lnbisdk/sq;
    .locals 8

    const-string v0, "fuel-price-summary"

    invoke-static {p0, v0}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lnbisdk/bn;->a(Lnbisdk/ql;Lnbisdk/rt;)Lnbisdk/sq;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lnbisdk/sq;

    invoke-direct {v3}, Lnbisdk/sq;-><init>()V

    const-string v0, "search-event-cookie"

    invoke-static {p0, v0}, Lnbisdk/bn;->a(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/cp;

    const-string v0, "proxmatch"

    invoke-virtual {p0, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    const-string v2, "place"

    invoke-static {v0, v2}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v2

    const-string v5, "fuel-product"

    invoke-static {v2, v5}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lnbisdk/bn;->j(Lnbisdk/ql;)Lnbisdk/mh;

    move-result-object v0

    move-object v2, v0

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v1}, Lnbisdk/bn;->a(Lnbisdk/rt;I)Lnbisdk/sp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnbisdk/uz;->f(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lnbisdk/sq;->a(Lnbisdk/uz;)V

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v5, "distance"

    invoke-static {v0, v5}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v2}, Lnbisdk/bf;->c(Lnbisdk/ql;)Lnbisdk/de;

    move-result-object v7

    new-instance v2, Lnbisdk/uz;

    invoke-direct {v2, v7, v5, v6}, Lnbisdk/uz;-><init>(Lnbisdk/de;D)V

    invoke-static {v0}, Lnbisdk/bn;->n(Lnbisdk/ql;)Lnbisdk/jj;

    move-result-object v5

    invoke-virtual {v2, v5}, Lnbisdk/uz;->a(Lnbisdk/jj;)V

    invoke-static {v0, v2}, Lnbisdk/bn;->a(Lnbisdk/ql;Lnbisdk/uz;)V

    const-string v5, "unmappable"

    invoke-static {v0, v5}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    const-string v5, "accuracy"

    invoke-virtual {v0, v5}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "accuracy"

    invoke-static {v0, v5}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    goto :goto_2

    :cond_3
    invoke-static {p0, v3}, Lnbisdk/bn;->a(Lnbisdk/ql;Lnbisdk/sq;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static b(Lnbisdk/ql;Lnbisdk/uz;)Lnbisdk/sq;
    .locals 6

    new-instance v1, Lnbisdk/sq;

    invoke-direct {v1}, Lnbisdk/sq;-><init>()V

    const-string v0, "proxmatch"

    invoke-static {p0, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "poi-content"

    invoke-static {v0, v2}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "id"

    invoke-static {v0, v2}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnbisdk/sf;

    invoke-direct {v3, v2}, Lnbisdk/sf;-><init>(Ljava/lang/String;)V

    const-string v2, "pair"

    invoke-virtual {v0, v2}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-static {v0}, Lnbisdk/bl;->g(Lnbisdk/ql;)Lnbisdk/vl;

    move-result-object v0

    const-string v4, "OpinionIndices"

    invoke-virtual {v0}, Lnbisdk/vl;->nV()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Lnbisdk/sf;->g(Lnbisdk/vl;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v0}, Lnbisdk/sf;->f(Lnbisdk/vl;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Lnbisdk/uz;->a(Lnbisdk/fl;)V

    invoke-virtual {v1, p1}, Lnbisdk/sq;->a(Lnbisdk/uz;)V

    invoke-static {p0, v1}, Lnbisdk/bn;->a(Lnbisdk/ql;Lnbisdk/sq;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static j(Lnbisdk/ql;)Lnbisdk/mh;
    .locals 5

    const-string v0, "distance"

    invoke-static {p0, v0}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v0

    float-to-double v1, v0

    const-string v0, "place"

    invoke-static {p0, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    new-instance v3, Lnbisdk/oa;

    invoke-direct {v3}, Lnbisdk/oa;-><init>()V

    invoke-static {v0}, Lnbisdk/bf;->c(Lnbisdk/ql;)Lnbisdk/de;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnbisdk/de;->b(Lnbisdk/de;)V

    const-string v4, "fuel-product"

    invoke-virtual {v0, v4}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-static {v0}, Lnbisdk/bi;->f(Lnbisdk/ql;)Lnbisdk/ni;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnbisdk/oa;->a(Lnbisdk/ni;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnbisdk/mh;

    invoke-direct {v0, v3, v1, v2}, Lnbisdk/mh;-><init>(Lnbisdk/oa;D)V

    invoke-static {p0}, Lnbisdk/bn;->n(Lnbisdk/ql;)Lnbisdk/jj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/uz;->a(Lnbisdk/jj;)V

    invoke-static {p0, v0}, Lnbisdk/bn;->a(Lnbisdk/ql;Lnbisdk/uz;)V

    return-object v0
.end method

.method public static k(Lnbisdk/ql;)Lnbisdk/pb;
    .locals 10

    const-string v0, "distance"

    invoke-static {p0, v0}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v0

    float-to-double v1, v0

    const-string v0, "place"

    invoke-static {p0, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    new-instance v3, Lnbisdk/lq;

    invoke-direct {v3}, Lnbisdk/lq;-><init>()V

    invoke-static {v0}, Lnbisdk/bf;->c(Lnbisdk/ql;)Lnbisdk/de;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnbisdk/de;->b(Lnbisdk/de;)V

    const-string v4, "event"

    invoke-virtual {v0, v4}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    new-instance v5, Lnbisdk/bn;

    const-string v6, "event-content"

    invoke-static {v0, v6}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v6

    invoke-static {v6}, Lnbisdk/bm;->h(Lnbisdk/ql;)Lnbisdk/je;

    move-result-object v6

    invoke-direct {v5, v6}, Lnbisdk/bn;-><init>(Lnbisdk/je;)V

    const-string v6, "event-performance"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    new-instance v7, Lnbisdk/yd;

    invoke-direct {v7}, Lnbisdk/yd;-><init>()V

    const-string v8, "start-time"

    invoke-static {v0, v8}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lnbisdk/yd;->setStartTime(J)V

    const-string v8, "end-time"

    invoke-static {v0, v8}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lnbisdk/yd;->k(J)V

    const-string v8, "utc-offset"

    invoke-static {v0, v8}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lnbisdk/yd;->bY(I)V

    const-string v8, "all-day"

    invoke-static {v0, v8}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lnbisdk/yd;->Z(Z)V

    const-string v8, "indeterminate-time"

    invoke-static {v0, v8}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lnbisdk/yd;->aa(Z)V

    const-string v8, "bargain-price"

    invoke-static {v0, v8}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lnbisdk/yd;->ab(Z)V

    const-string v8, "pair"

    invoke-virtual {v0, v8}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v8

    if-eqz v8, :cond_0

    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-static {v0}, Lnbisdk/bl;->g(Lnbisdk/ql;)Lnbisdk/vl;

    move-result-object v0

    invoke-virtual {v7, v0}, Lnbisdk/yd;->h(Lnbisdk/vl;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v5, v7}, Lnbisdk/bn;->a(Lnbisdk/yd;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v5}, Lnbisdk/lq;->a(Lnbisdk/bn;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lnbisdk/pb;

    invoke-direct {v0, v3, v1, v2}, Lnbisdk/pb;-><init>(Lnbisdk/lq;D)V

    invoke-static {p0}, Lnbisdk/bn;->n(Lnbisdk/ql;)Lnbisdk/jj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/uz;->a(Lnbisdk/jj;)V

    invoke-static {p0, v0}, Lnbisdk/bn;->a(Lnbisdk/ql;Lnbisdk/uz;)V

    return-object v0
.end method

.method public static l(Lnbisdk/ql;)Lnbisdk/fd;
    .locals 4

    const-string v0, "distance"

    invoke-static {p0, v0}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    const-string v2, "place"

    invoke-static {p0, v2}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v2

    invoke-static {v2}, Lnbisdk/bf;->e(Lnbisdk/ql;)Lnbisdk/jh;

    move-result-object v2

    new-instance v3, Lnbisdk/fd;

    invoke-direct {v3, v2, v0, v1}, Lnbisdk/fd;-><init>(Lnbisdk/jh;D)V

    invoke-static {p0, v3}, Lnbisdk/bn;->a(Lnbisdk/ql;Lnbisdk/uz;)V

    return-object v3
.end method

.method public static m(Lnbisdk/ql;)Lnbisdk/mb;
    .locals 8

    const-string v0, "distance"

    invoke-static {p0, v0}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v0

    float-to-double v1, v0

    const-string v0, "place"

    invoke-static {p0, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    new-instance v3, Lnbisdk/ll;

    invoke-direct {v3}, Lnbisdk/ll;-><init>()V

    invoke-static {v0}, Lnbisdk/bf;->c(Lnbisdk/ql;)Lnbisdk/de;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnbisdk/de;->b(Lnbisdk/de;)V

    const-string v4, "weather-conditions"

    invoke-static {v0, v4}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "weather-conditions"

    invoke-static {v0, v4}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v4

    new-instance v5, Lnbisdk/wx;

    invoke-direct {v5}, Lnbisdk/wx;-><init>()V

    const-string v6, "temperature"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "temperature"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Ch:F

    :cond_0
    const-string v6, "dew-point"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "dew-point"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Ci:F

    :cond_1
    const-string v6, "rel-humidity"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "rel-humidity"

    invoke-static {v4, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/wx;->vS:J

    :cond_2
    const-string v6, "wind-speed"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "wind-speed"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->vQ:F

    :cond_3
    const-string v6, "wind-direction"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "wind-direction"

    invoke-static {v4, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/wx;->vP:J

    :cond_4
    const-string v6, "wind-gust"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "wind-gust"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Cj:F

    :cond_5
    const-string v6, "pressure"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "pressure"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Ck:F

    :cond_6
    const-string v6, "condition"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "condition"

    invoke-static {v4, v6}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lnbisdk/wx;->vT:Ljava/lang/String;

    :cond_7
    const-string v6, "condition-code"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "condition-code"

    invoke-static {v4, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/wx;->vU:J

    :cond_8
    const-string v6, "sky"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "sky"

    invoke-static {v4, v6}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lnbisdk/wx;->Cl:Ljava/lang/String;

    :cond_9
    const-string v6, "ceiling"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "ceiling"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Cm:F

    :cond_a
    const-string v6, "visibility"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "visibility"

    invoke-static {v4, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/wx;->Cn:J

    :cond_b
    const-string v6, "heat-index"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "heat-index"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Co:F

    :cond_c
    const-string v6, "wind-chill"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "wind-chill"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Cp:F

    :cond_d
    const-string v6, "snow-depth"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "snow-depth"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Cq:F

    :cond_e
    const-string v6, "max-temp-6hr"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "max-temp-6hr"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Cr:F

    :cond_f
    const-string v6, "max-temp-24hr"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "max-temp-24hr"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Cs:F

    :cond_10
    const-string v6, "min-temp-6hr"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "min-temp-6hr"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Ct:F

    :cond_11
    const-string v6, "min-temp-24hr"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "min-temp-24hr"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Cu:F

    :cond_12
    const-string v6, "precipitation-3hr"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "precipitation-3hr"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Cv:F

    :cond_13
    const-string v6, "precipitation-6hr"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "precipitation-6hr"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Cw:F

    :cond_14
    const-string v6, "precipitation-24hr"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, "precipitation-24hr"

    invoke-static {v4, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/wx;->Cx:F

    :cond_15
    const-string v6, "update-time"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v6, "update-time"

    invoke-static {v4, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/wx;->wc:J

    :cond_16
    const-string v6, "utc-offset"

    invoke-virtual {v4, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "utc-offset"

    invoke-static {v4, v6}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lnbisdk/wx;->Cy:I

    :cond_17
    invoke-virtual {v3, v5}, Lnbisdk/ll;->a(Lnbisdk/wx;)V

    :cond_18
    const-string v4, "weather-forecast"

    invoke-virtual {v0, v4}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    if-eqz v4, :cond_2a

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    new-instance v5, Lnbisdk/qr;

    invoke-direct {v5}, Lnbisdk/qr;-><init>()V

    const-string v6, "date"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    const-string v6, "date"

    invoke-static {v0, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/qr;->vM:J

    :cond_19
    const-string v6, "high-temperature"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const-string v6, "high-temperature"

    invoke-static {v0, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/qr;->vN:F

    :cond_1a
    const-string v6, "low-temperature"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string v6, "low-temperature"

    invoke-static {v0, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/qr;->vO:F

    :cond_1b
    const-string v6, "relative-humidity"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const-string v6, "relative-humidity"

    invoke-static {v0, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/qr;->vS:J

    :cond_1c
    const-string v6, "wind-speed"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string v6, "wind-speed"

    invoke-static {v0, v6}, Lnbisdk/hz;->h(Lnbisdk/ql;Ljava/lang/String;)F

    move-result v6

    iput v6, v5, Lnbisdk/qr;->vQ:F

    :cond_1d
    const-string v6, "wind-direction"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const-string v6, "wind-direction"

    invoke-static {v0, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/qr;->vP:J

    :cond_1e
    const-string v6, "precipitation-probability"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const-string v6, "precipitation-probability"

    invoke-static {v0, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/qr;->vR:J

    :cond_1f
    const-string v6, "condition"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "condition"

    invoke-static {v0, v6}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lnbisdk/qr;->vT:Ljava/lang/String;

    :cond_20
    const-string v6, "condition-code"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, "condition-code"

    invoke-static {v0, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/qr;->vU:J

    :cond_21
    const-string v6, "uv-index"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    const-string v6, "uv-index"

    invoke-static {v0, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/qr;->vV:J

    :cond_22
    const-string v6, "uv-description"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    const-string v6, "uv-description"

    invoke-static {v0, v6}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lnbisdk/qr;->vW:Ljava/lang/String;

    :cond_23
    const-string v6, "sunrise"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    const-string v6, "sunrise"

    invoke-static {v0, v6}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lnbisdk/qr;->vX:Ljava/lang/String;

    :cond_24
    const-string v6, "sunset"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    const-string v6, "sunset"

    invoke-static {v0, v6}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lnbisdk/qr;->vY:Ljava/lang/String;

    :cond_25
    const-string v6, "moonrise"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "moonrise"

    invoke-static {v0, v6}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lnbisdk/qr;->vZ:Ljava/lang/String;

    :cond_26
    const-string v6, "moonset"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v6, "moonset"

    invoke-static {v0, v6}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lnbisdk/qr;->wa:Ljava/lang/String;

    :cond_27
    const-string v6, "moon-phase"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "moon-phase"

    invoke-static {v0, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/qr;->wb:J

    :cond_28
    const-string v6, "update-time"

    invoke-virtual {v0, v6}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    const-string v6, "update-time"

    invoke-static {v0, v6}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lnbisdk/qr;->wc:J

    :cond_29
    invoke-virtual {v3, v5}, Lnbisdk/ll;->a(Lnbisdk/qr;)V

    goto/16 :goto_0

    :cond_2a
    new-instance v0, Lnbisdk/mb;

    invoke-direct {v0, v3, v1, v2}, Lnbisdk/mb;-><init>(Lnbisdk/ll;D)V

    invoke-static {p0, v0}, Lnbisdk/bn;->a(Lnbisdk/ql;Lnbisdk/uz;)V

    return-object v0
.end method

.method private static n(Lnbisdk/ql;)Lnbisdk/jj;
    .locals 7

    const/4 v6, 0x1

    const-string v0, "premium-placement"

    invoke-static {p0, v0}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v2

    const-string v0, "enhanced-poi"

    invoke-static {p0, v0}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v3

    const/4 v0, 0x0

    const-string v1, "poi-content"

    invoke-static {p0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v1, Lnbisdk/jj;

    invoke-direct {v1}, Lnbisdk/jj;-><init>()V

    invoke-virtual {v1, v3}, Lnbisdk/jj;->e(Z)V

    invoke-virtual {v1, v2}, Lnbisdk/jj;->E(Z)V

    const-string v0, "id"

    invoke-static {v4, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/jj;->t(Ljava/lang/String;)V

    const-string v0, "formatted-text"

    invoke-static {v4, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/bm;->i(Lnbisdk/ql;)Lnbisdk/in;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/jj;->b(Lnbisdk/in;)V

    const-string v0, "pair"

    invoke-virtual {v4, v0}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    invoke-static {v0}, Lnbisdk/bl;->g(Lnbisdk/ql;)Lnbisdk/vl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/jj;->f(Lnbisdk/vl;)V

    goto :goto_0

    :cond_0
    const-string v0, "overall-rating"

    invoke-static {v4, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v6}, Lnbisdk/jj;->d(Z)V

    const-string v2, "average-rating"

    invoke-static {v0, v2}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lnbisdk/jj;->a(F)V

    const-string v2, "rating-count"

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lnbisdk/jj;->k(I)V

    :cond_1
    const-string v0, "tagline"

    invoke-static {v4, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "text"

    invoke-static {v0, v2}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/jj;->au(Ljava/lang/String;)V

    :cond_2
    const-string v0, "icon"

    invoke-static {v4, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lnbisdk/cu;->dB()Lnbisdk/cu;

    move-result-object v2

    const-string v3, "image"

    invoke-static {v0, v3}, Lnbisdk/ur;->l(Lnbisdk/ql;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v3, v5}, Lnbisdk/cu;->b([BII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const-string v0, "golden-cookie"

    invoke-static {v4, v0}, Lnbisdk/bn;->a(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/cp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/jj;->d(Lnbisdk/cp;)V

    const-string v0, "place-event-cookie"

    invoke-static {v4, v0}, Lnbisdk/bn;->a(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/cp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/jj;->e(Lnbisdk/cp;)V

    const-string v0, "has-extended-details"

    invoke-static {v4, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-object v0, v1

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    const-wide v2, 0x20000000000L

    invoke-static {v0, v2, v3, v6}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    goto :goto_1
.end method

.method public static o(Lnbisdk/ql;)Lnbisdk/bd;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "spelling-suggestion"

    invoke-static {p0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lnbisdk/yg;

    const-string v0, "search-filter"

    invoke-static {v1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    invoke-direct {v2, v0}, Lnbisdk/yg;-><init>(Lnbisdk/ql;)V

    new-instance v0, Lnbisdk/bd;

    invoke-direct {v0, v2}, Lnbisdk/bd;-><init>(Lnbisdk/gw;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lnbisdk/yd;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/bn;->aR:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public bI()Lnbisdk/in;
    .locals 1

    iget-object v0, p0, Lnbisdk/bn;->cO:Lnbisdk/je;

    invoke-virtual {v0}, Lnbisdk/je;->bI()Lnbisdk/in;

    move-result-object v0

    return-object v0
.end method

.method public getEventPerformancesCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/bn;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/bn;->cO:Lnbisdk/je;

    invoke-virtual {v0, p1}, Lnbisdk/je;->getFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMPAARating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/bn;->cO:Lnbisdk/je;

    invoke-virtual {v0}, Lnbisdk/je;->getMPAARating()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/bn;->cO:Lnbisdk/je;

    invoke-virtual {v0}, Lnbisdk/je;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatingStar()I
    .locals 1

    iget-object v0, p0, Lnbisdk/bn;->cO:Lnbisdk/je;

    invoke-virtual {v0}, Lnbisdk/je;->getRatingStar()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/bn;->cO:Lnbisdk/je;

    invoke-virtual {v0}, Lnbisdk/je;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRating()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/bn;->cO:Lnbisdk/je;

    invoke-virtual {v0}, Lnbisdk/je;->hasRating()Z

    move-result v0

    return v0
.end method

.method public i(I)Lnbisdk/yd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/bn;->aR:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/yd;

    return-object v0
.end method
