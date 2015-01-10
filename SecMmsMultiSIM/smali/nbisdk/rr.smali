.class public final Lnbisdk/rr;
.super Lnbisdk/qx;


# instance fields
.field private wY:Lnbisdk/mu;

.field private wZ:Lnbisdk/it;

.field private xa:Lnbisdk/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnbisdk/qx;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lnbisdk/lc;)Lnbisdk/ze;
    .locals 5

    new-instance v0, Lnbisdk/ze;

    invoke-direct {v0, p0}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v3, "sa"

    invoke-static {v0, v3, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    const-string v1, "str"

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lnbisdk/ze;

    const-string v2, "point"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v2, "lat"

    invoke-virtual {p1}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v2, "lon"

    invoke-virtual {p1}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    return-object v0
.end method

.method private static a(Lnbisdk/ze;Lnbisdk/h;)V
    .locals 10

    const-wide/16 v8, 0x0

    invoke-virtual {p1}, Lnbisdk/h;->o()Lnbisdk/ic;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lnbisdk/ic;->hC()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_7

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/j;

    invoke-virtual {v0}, Lnbisdk/j;->z()D

    move-result-wide v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_0

    invoke-virtual {v0}, Lnbisdk/j;->getLength()D

    move-result-wide v4

    cmpg-double v4, v4, v8

    if-ltz v4, :cond_6

    :cond_0
    new-instance v4, Lnbisdk/ze;

    const-string v5, "detour-avoid"

    invoke-direct {v4, v5}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/j;->z()D

    move-result-wide v5

    cmpl-double v5, v5, v8

    if-ltz v5, :cond_1

    const-string v5, "start"

    invoke-virtual {v0}, Lnbisdk/j;->z()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    :cond_1
    invoke-virtual {v0}, Lnbisdk/j;->getLength()D

    move-result-wide v5

    cmpl-double v5, v5, v8

    if-ltz v5, :cond_2

    const-string v5, "length"

    invoke-virtual {v0}, Lnbisdk/j;->getLength()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    :cond_2
    invoke-virtual {v0}, Lnbisdk/j;->A()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lnbisdk/j;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "label"

    invoke-virtual {v0}, Lnbisdk/j;->A()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lnbisdk/j;->C()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Lnbisdk/ze;

    const-string v6, "want-historical-traffic"

    invoke-direct {v5, v6}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_4
    invoke-virtual {v0}, Lnbisdk/j;->B()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lnbisdk/ze;

    const-string v6, "want-realtime-traffic"

    invoke-direct {v5, v6}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_5
    const-string v5, "route-id"

    invoke-virtual {v0}, Lnbisdk/j;->getRouteID()[B

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    invoke-virtual {p0, v4}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private c(Lnbisdk/ze;)V
    .locals 6

    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->o()Lnbisdk/ic;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnbisdk/ic;->hC()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/j;

    invoke-virtual {v0}, Lnbisdk/j;->C()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lnbisdk/ze;

    const-string v5, "want-historical-traffic"

    invoke-direct {v4, v5}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_0
    invoke-virtual {v0}, Lnbisdk/j;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnbisdk/ze;

    const-string v4, "want-realtime-traffic"

    invoke-direct {v0, v4}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected final b(Lnbisdk/h;Lnbisdk/ze;Lnbisdk/mu;)V
    .locals 11

    iput-object p1, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    iput-object p3, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {p1}, Lnbisdk/h;->m()Lnbisdk/it;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->r()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->u()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->m()Lnbisdk/it;

    move-result-object v0

    sget-object v1, Lnbisdk/it;->nS:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnbisdk/ze;

    const-string v1, "recreate-route"

    invoke-direct {v0, v1, p2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "route-id"

    iget-object v2, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v2}, Lnbisdk/h;->u()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    :goto_0
    new-instance v1, Lnbisdk/ze;

    const-string v0, "cache-contents"

    invoke-direct {v1, v0, p2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v2, Lnbisdk/it;->nC:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x8

    if-ge v0, v2, :cond_5

    new-instance v2, Lnbisdk/ze;

    const-string v3, "cache-item"

    invoke-direct {v2, v3, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v3, "name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->q()Lnbisdk/j;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnbisdk/j;->F()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_3

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lnbisdk/j;->G()Lnbisdk/se;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lnbisdk/ck;->b(Lnbisdk/se;)V

    :cond_1
    invoke-virtual {v0}, Lnbisdk/j;->H()Lnbisdk/se;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lnbisdk/ck;->b(Lnbisdk/se;)V

    :cond_2
    invoke-virtual {v0}, Lnbisdk/j;->F()Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lnbisdk/ze;

    const-string v2, "origin"

    invoke-direct {v1, v2, p2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/se;

    invoke-static {v0}, Lnbisdk/hn;->c(Lnbisdk/se;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->k()Lnbisdk/de;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "origin"

    iget-object v1, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v1}, Lnbisdk/h;->k()Lnbisdk/de;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/rr;->a(Ljava/lang/String;Lnbisdk/lc;)Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_4
    const-string v0, "destination"

    iget-object v1, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v1}, Lnbisdk/h;->j()Lnbisdk/de;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/de;->ba()Lnbisdk/lc;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/rr;->a(Ljava/lang/String;Lnbisdk/lc;)Lnbisdk/ze;

    move-result-object v0

    invoke-static {v1}, Lnbisdk/bl;->b(Lnbisdk/lc;)Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->p()Lnbisdk/hg;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lnbisdk/zp;->pt()Ljava/util/Enumeration;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v3, Lnbisdk/ze;

    const-string v0, "cache-item"

    invoke-direct {v3, v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v4, "name"

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/yc;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v2, Lnbisdk/it;->nD:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_8

    check-cast v0, Lnbisdk/yc;

    invoke-virtual {v0}, Lnbisdk/yc;->oQ()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v3, Lnbisdk/ze;

    const-string v1, "map-cache-contents"

    invoke-direct {v3, v1, p2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lnbisdk/yc;->oQ()Ljava/util/Hashtable;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/uc;

    if-eqz v1, :cond_7

    iget v4, v1, Lnbisdk/uc;->ze:I

    iget v1, v1, Lnbisdk/uc;->zf:I

    sget v5, Lnbisdk/pl;->MIN_PRIORITY:I

    sget v6, Lnbisdk/pl;->MAX_PRIORITY:I

    sget-wide v7, Lnbisdk/pl;->uT:D

    new-instance v9, Lnbisdk/ze;

    const-string v10, "vector-tile-descriptor"

    invoke-direct {v9, v10}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v10, "tx"

    invoke-static {v9, v10, v4}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v4, "ty"

    invoke-static {v9, v4, v1}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "tz"

    iget-object v4, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v4}, Lnbisdk/mu;->ks()I

    move-result v4

    invoke-static {v9, v1, v4}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "min-priority"

    invoke-static {v9, v1, v5}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "max-priority"

    invoke-static {v9, v1, v6}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "min-scale"

    double-to-float v4, v7

    invoke-static {v9, v1, v4}, Lnbisdk/hz;->a(Lnbisdk/ze;Ljava/lang/String;F)V

    invoke-virtual {v3, v9}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->l()Lnbisdk/br;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/br;->bP()Lnbisdk/ze;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v0}, Lnbisdk/mu;->kA()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v0}, Lnbisdk/mu;->ky()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->l()Lnbisdk/br;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/br;->bO()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-speed-cameras"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_9
    iget-object v0, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v0}, Lnbisdk/mu;->kf()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "pronun-style"

    iget-object v1, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v1}, Lnbisdk/h;->l()Lnbisdk/br;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/br;->bQ()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v0}, Lnbisdk/mu;->kA()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->n()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mX()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->m()Lnbisdk/it;

    move-result-object v0

    sget-object v1, Lnbisdk/it;->nS:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->t()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "max-pronun-files"

    const-wide/16 v1, 0x3

    invoke-static {p2, v0, v1, v2}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    :cond_a
    :goto_5
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nF:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-origin-location"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_b
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nG:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-destination-location"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_c
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nR:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lnbisdk/ze;

    const-string v1, "disable-navigation"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_d
    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-static {p2, v0}, Lnbisdk/rr;->a(Lnbisdk/ze;Lnbisdk/h;)V

    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nH:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-route-polyline"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_e
    iget-object v0, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v0}, Lnbisdk/mu;->kA()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nE:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-cross-streets"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_f
    iget-object v0, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v0}, Lnbisdk/mu;->kz()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nD:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-route-map"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v1, "distance-of-view"

    iget-object v2, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v2}, Lnbisdk/mu;->kq()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "angle-of-view"

    iget-object v2, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v2}, Lnbisdk/mu;->kt()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "min-time"

    iget-object v2, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v2}, Lnbisdk/mu;->kw()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "passes"

    iget-object v2, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v2}, Lnbisdk/mu;->kr()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "tz"

    iget-object v2, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v2}, Lnbisdk/mu;->ks()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "max-tiles"

    iget-object v2, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v2}, Lnbisdk/mu;->kp()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_10
    iget-object v0, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v0}, Lnbisdk/mu;->kA()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nI:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v0}, Lnbisdk/mu;->kx()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_11
    :goto_6
    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    invoke-direct {p0, p2}, Lnbisdk/rr;->c(Lnbisdk/ze;)V

    :cond_12
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nC:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-toward-roadinfo"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_13
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nJ:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lnbisdk/rr;->wY:Lnbisdk/mu;

    invoke-virtual {v0}, Lnbisdk/mu;->kA()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-ferry-maneuvers"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_15
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nK:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-tunnel-maneuvers"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_16
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nL:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-bridge-maneuvers"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_17
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nM:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-unpaved-info"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_18
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nN:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-country-info"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_19
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nO:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-enter-country-maneuvers"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_1a
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nP:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-enter-roundabout-maneuvers"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_1b
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nQ:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-route-extents"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_1c
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nW:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-realistic-road-signs"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_1d
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nU:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-city-models"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_1e
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nV:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-junction-models"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_1f
    iget-object v0, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v1, Lnbisdk/it;->nX:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->l()Lnbisdk/br;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/br;->bM()I

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-speed-regions"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_20
    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mX()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Lnbisdk/h;->t()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lnbisdk/h;->m()Lnbisdk/it;

    move-result-object v1

    sget-object v2, Lnbisdk/it;->nS:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lnbisdk/h;->r()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_21

    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-maneuvers"

    invoke-direct {v0, v1, p2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    new-instance v1, Lnbisdk/ze;

    const-string v2, "sliceres"

    invoke-direct {v1, v2, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v0, "start"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v0, "end"

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    :cond_21
    const-string v0, "command-set-version"

    iget-object v1, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v1}, Lnbisdk/h;->m()Lnbisdk/it;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/it;->ih()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2, v0, v1, v2}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "language"

    invoke-static {p2, v1, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->p()Lnbisdk/hg;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->u()[B

    move-result-object v0

    if-eqz v0, :cond_24

    :cond_23
    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->r()I

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    iget-object v0, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v0}, Lnbisdk/h;->r()I

    move-result v0

    iget-object v1, p0, Lnbisdk/rr;->xa:Lnbisdk/h;

    invoke-virtual {v1}, Lnbisdk/h;->p()Lnbisdk/hg;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/hg;->getRouteID()[B

    move-result-object v1

    if-eqz v1, :cond_25

    const/4 v2, 0x1

    if-eq v0, v2, :cond_25

    const/4 v2, 0x2

    if-eq v0, v2, :cond_25

    new-instance v2, Lnbisdk/ze;

    const-string v3, "recalc"

    invoke-direct {v2, v3, p2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v3, "route-id"

    invoke-virtual {v2, v3, v1}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    const-string v1, "why"

    invoke-static {v0}, Lnbisdk/y;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mT()Lnbisdk/ev;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lnbisdk/ev;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lnbisdk/h;->w()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lnbisdk/h;->s()Lnbisdk/uz;

    move-result-object v1

    new-instance v2, Lnbisdk/cs;

    invoke-direct {v2}, Lnbisdk/cs;-><init>()V

    if-eqz v1, :cond_28

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lnbisdk/cs;->i(Z)V

    invoke-virtual {v1}, Lnbisdk/uz;->getSearchInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/sp;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lnbisdk/sp;->hF()I

    move-result v3

    invoke-virtual {v2, v3}, Lnbisdk/cs;->w(I)V

    invoke-virtual {v0}, Lnbisdk/sp;->fj()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnbisdk/cs;->D(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/sp;->fj()I

    move-result v0

    invoke-virtual {v2, v0}, Lnbisdk/cs;->setIndex(I)V

    :cond_26
    invoke-virtual {v1}, Lnbisdk/uz;->nM()Lnbisdk/jj;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lnbisdk/jj;->isEnhancedPOI()Z

    move-result v1

    invoke-virtual {v2, v1}, Lnbisdk/cs;->k(Z)V

    invoke-virtual {v0}, Lnbisdk/jj;->iv()Lnbisdk/cp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnbisdk/cs;->a(Lnbisdk/cp;)V

    invoke-virtual {v0}, Lnbisdk/jj;->it()Z

    move-result v1

    invoke-virtual {v2, v1}, Lnbisdk/cs;->j(Z)V

    invoke-virtual {v0}, Lnbisdk/jj;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnbisdk/cs;->D(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/jj;->df()Lnbisdk/cp;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnbisdk/cs;->b(Lnbisdk/cp;)V

    :cond_27
    invoke-virtual {p1}, Lnbisdk/h;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnbisdk/cs;->E(Ljava/lang/String;)V

    :cond_28
    invoke-virtual {p1}, Lnbisdk/h;->p()Lnbisdk/hg;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string v0, "init"

    :goto_7
    invoke-virtual {p1}, Lnbisdk/h;->m()Lnbisdk/it;

    move-result-object v1

    sget-object v3, Lnbisdk/it;->nR:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v0, "preview"

    :cond_29
    new-instance v1, Lnbisdk/cs;

    invoke-direct {v1}, Lnbisdk/cs;-><init>()V

    invoke-static {v1, v2, v0}, Lnbisdk/rb;->a(Lnbisdk/cs;Lnbisdk/cs;Ljava/lang/String;)V

    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnbisdk/h;->c(Z)V

    return-void

    :cond_2b
    const-string v0, "max-pronun-files"

    const-wide/16 v1, 0x0

    invoke-static {p2, v0, v1, v2}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    goto/16 :goto_5

    :pswitch_0
    new-instance v1, Lnbisdk/ze;

    const-string v2, "want-realtime-traffic"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    new-instance v1, Lnbisdk/ze;

    const-string v2, "want-historical-traffic"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :pswitch_1
    new-instance v1, Lnbisdk/ze;

    const-string v2, "want-realtime-speed"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    new-instance v1, Lnbisdk/ze;

    const-string v2, "want-historical-speed"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    iget-object v1, p0, Lnbisdk/rr;->wZ:Lnbisdk/it;

    sget-object v2, Lnbisdk/it;->nR:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lnbisdk/it;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Lnbisdk/ze;

    const-string v2, "want-traffic-notification"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    goto/16 :goto_6

    :cond_2c
    invoke-virtual {p1}, Lnbisdk/h;->r()I

    move-result v0

    invoke-static {v0}, Lnbisdk/y;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
