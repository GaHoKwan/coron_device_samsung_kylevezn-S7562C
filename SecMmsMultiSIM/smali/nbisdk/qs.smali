.class public final Lnbisdk/qs;
.super Lnbisdk/yi;


# instance fields
.field private wd:Lnbisdk/id;

.field private we:Lnbisdk/fa;

.field private wf:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lnbisdk/id;Lnbisdk/ap;)V
    .locals 5

    invoke-direct {p0, p2}, Lnbisdk/yi;-><init>(Lnbisdk/ap;)V

    iput-object p1, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {p1}, Lnbisdk/id;->hE()Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lnbisdk/qs;->wf:Ljava/util/Vector;

    invoke-virtual {p1}, Lnbisdk/id;->hL()Lnbisdk/fa;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/qs;->wf:Ljava/util/Vector;

    new-instance v1, Lnbisdk/ux;

    invoke-direct {v1, p0, p1}, Lnbisdk/ux;-><init>(Lnbisdk/qs;Lnbisdk/id;)V

    invoke-static {v0, v1}, Lnbisdk/jx;->a(Ljava/util/Vector;Lnbisdk/fz;)V

    :cond_1
    return-void
.end method

.method private a(Lnbisdk/ze;Ljava/lang/String;[BLnbisdk/lc;)V
    .locals 5

    if-eqz p3, :cond_1

    new-instance v0, Lnbisdk/ze;

    invoke-direct {v0, p2, p1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    new-instance v1, Lnbisdk/ze;

    const-string v2, "gps"

    invoke-direct {v1, v2, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v0, "packed"

    invoke-virtual {v1, v0, p3}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_0

    new-instance v0, Lnbisdk/ze;

    invoke-direct {v0, p2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    const-string v3, "sa"

    invoke-static {v0, v3, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_3

    const-string v1, "str"

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lnbisdk/ze;

    const-string v2, "point"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v2, "lat"

    invoke-virtual {p4}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v2, "lon"

    invoke-virtual {p4}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    invoke-virtual {p1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    goto :goto_0
.end method

.method private static a(Lnbisdk/ze;Lnbisdk/cs;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "analytic-event-place cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnbisdk/ze;

    const-string v1, "analytics-event-place"

    invoke-direct {v0, v1, p0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "id"

    invoke-virtual {p1}, Lnbisdk/cs;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "search-query-event-id"

    invoke-virtual {p1}, Lnbisdk/cs;->de()I

    move-result v2

    invoke-static {v0, v1, v2}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lnbisdk/cs;->db()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lnbisdk/ze;

    const-string v2, "gps-based"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_1
    invoke-virtual {p1}, Lnbisdk/cs;->dc()Lnbisdk/cp;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnbisdk/cs;->dc()Lnbisdk/cp;

    move-result-object v1

    const-string v2, "golden-cookie"

    invoke-static {v0, v1, v2}, Lnbisdk/bn;->a(Lnbisdk/ze;Lnbisdk/cp;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lnbisdk/cs;->dd()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lnbisdk/ze;

    const-string v2, "premium-placement"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_3
    invoke-virtual {p1}, Lnbisdk/cs;->isEnhancedPOI()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lnbisdk/ze;

    const-string v2, "enhanced-poi"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_4
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mZ()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_6

    invoke-virtual {p1}, Lnbisdk/cs;->df()Lnbisdk/cp;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lnbisdk/cs;->df()Lnbisdk/cp;

    move-result-object v1

    const-string v2, "place-event-cookie"

    invoke-static {v0, v1, v2}, Lnbisdk/bn;->a(Lnbisdk/ze;Lnbisdk/cp;Ljava/lang/String;)V

    :cond_5
    const-string v1, "index"

    invoke-virtual {p1}, Lnbisdk/cs;->getIndex()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    invoke-virtual {p1}, Lnbisdk/cs;->dg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "origin"

    invoke-virtual {p1}, Lnbisdk/cs;->dg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private b(Lnbisdk/ze;)V
    .locals 13

    iget-object v4, p0, Lnbisdk/qs;->wf:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_12

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/uh;

    sget-boolean v1, Lnbisdk/me;->sE:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnbisdk/uh;->getId()I

    move-result v1

    invoke-virtual {v0}, Lnbisdk/uh;->hG()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-virtual {v0}, Lnbisdk/uh;->nm()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v0}, Lnbisdk/uh;->ng()B

    move-result v7

    const/4 v8, 0x2

    invoke-static {v1, v2, v6, v7, v8}, Lnbisdk/db;->a(IIIBB)V

    :cond_0
    new-instance v1, Lnbisdk/ze;

    const-string v2, "analytics-event"

    invoke-direct {v1, v2, p1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v2, "id"

    invoke-virtual {v0}, Lnbisdk/uh;->getId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v1, v2, v6, v7}, Lnbisdk/fw$a;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v2, "ts"

    invoke-virtual {v0}, Lnbisdk/uh;->hG()J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Lnbisdk/fw$a;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v2, "session-id"

    invoke-virtual {v0}, Lnbisdk/uh;->nm()J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Lnbisdk/fw$a;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lnbisdk/uh;->ng()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :pswitch_0
    new-instance v2, Lnbisdk/ze;

    const-string v6, "search-query-event"

    invoke-direct {v2, v6, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v0}, Lnbisdk/uh;->dY()Lnbisdk/gw;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lnbisdk/uh;->dY()Lnbisdk/gw;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/bl;->b(Lnbisdk/gw;)Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_2
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/tt;->mZ()I

    move-result v1

    const/4 v6, 0x5

    if-le v1, v6, :cond_5

    invoke-virtual {v0}, Lnbisdk/uh;->np()Lnbisdk/bv;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lnbisdk/uh;->np()Lnbisdk/bv;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/bv;->cb()Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_3
    invoke-virtual {v0}, Lnbisdk/uh;->ek()Lnbisdk/cp;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v6, "search-event-cookie"

    invoke-static {v2, v1, v6}, Lnbisdk/bn;->a(Lnbisdk/ze;Lnbisdk/cp;Ljava/lang/String;)V

    :cond_4
    const-string v1, "input-method"

    invoke-virtual {v0}, Lnbisdk/uh;->el()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "scheme"

    invoke-virtual {v0}, Lnbisdk/uh;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/uh;->dV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "asr-provider-session-id"

    invoke-static {v2, v1, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    new-instance v6, Lnbisdk/ze;

    sget-object v7, Lnbisdk/rb;->wH:[Ljava/lang/String;

    aget-object v2, v7, v2

    invoke-direct {v6, v2, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v0}, Lnbisdk/uh;->nh()Lnbisdk/cs;

    move-result-object v0

    invoke-static {v6, v0}, Lnbisdk/qs;->a(Lnbisdk/ze;Lnbisdk/cs;)V

    goto :goto_1

    :pswitch_2
    new-instance v2, Lnbisdk/ze;

    const-string v6, "route-request-event"

    invoke-direct {v2, v6, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    new-instance v1, Lnbisdk/ze;

    const-string v6, "analytics-event-origin"

    invoke-direct {v1, v6, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v0}, Lnbisdk/uh;->ni()Lnbisdk/cs;

    move-result-object v6

    invoke-static {v1, v6}, Lnbisdk/qs;->a(Lnbisdk/ze;Lnbisdk/cs;)V

    new-instance v1, Lnbisdk/ze;

    const-string v6, "analytics-event-destination"

    invoke-direct {v1, v6, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v0}, Lnbisdk/uh;->nj()Lnbisdk/cs;

    move-result-object v6

    invoke-static {v1, v6}, Lnbisdk/qs;->a(Lnbisdk/ze;Lnbisdk/cs;)V

    const-string v1, "nav-session-id"

    invoke-virtual {v0}, Lnbisdk/uh;->iD()J

    move-result-wide v6

    invoke-static {v2, v1, v6, v7}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "reason"

    invoke-virtual {v0}, Lnbisdk/uh;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v2, Lnbisdk/ze;

    const-string v6, "route-reply-event"

    invoke-direct {v2, v6, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "nav-session-id"

    invoke-virtual {v0}, Lnbisdk/uh;->iD()J

    move-result-wide v6

    invoke-static {v2, v1, v6, v7}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "route-request-event-id"

    invoke-virtual {v0}, Lnbisdk/uh;->iE()I

    move-result v6

    invoke-static {v2, v1, v6}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "duration"

    invoke-virtual {v0}, Lnbisdk/uh;->getDuration()I

    move-result v6

    invoke-static {v2, v1, v6}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "distance"

    invoke-virtual {v0}, Lnbisdk/uh;->nl()F

    move-result v0

    invoke-static {v2, v1, v0}, Lnbisdk/hz;->a(Lnbisdk/ze;Ljava/lang/String;F)V

    goto/16 :goto_1

    :pswitch_4
    new-instance v2, Lnbisdk/ze;

    const-string v6, "route-state-event"

    invoke-direct {v2, v6, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "nav-session-id"

    invoke-virtual {v0}, Lnbisdk/uh;->iD()J

    move-result-wide v6

    invoke-static {v2, v1, v6, v7}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "route-request-event-id"

    invoke-virtual {v0}, Lnbisdk/uh;->iE()I

    move-result v6

    invoke-static {v2, v1, v6}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "route-reply-event-id"

    invoke-virtual {v0}, Lnbisdk/uh;->nk()I

    move-result v6

    invoke-static {v2, v1, v6}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "state"

    invoke-virtual {v0}, Lnbisdk/uh;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "distance"

    invoke-virtual {v0}, Lnbisdk/uh;->nl()F

    move-result v6

    invoke-static {v2, v1, v6}, Lnbisdk/hz;->a(Lnbisdk/ze;Ljava/lang/String;F)V

    const-string v1, "duration"

    invoke-virtual {v0}, Lnbisdk/uh;->getDuration()I

    move-result v6

    invoke-static {v2, v1, v6}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lnbisdk/uh;->nx()Ljava/util/Vector;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    new-instance v7, Lnbisdk/ze;

    const-string v8, "content-displayed"

    invoke-direct {v7, v8, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v8, "type"

    invoke-virtual {v0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "country"

    invoke-virtual {v0}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v8, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_5
    invoke-virtual {v0}, Lnbisdk/uh;->nn()Lnbisdk/zd;

    move-result-object v0

    new-instance v2, Lnbisdk/ze;

    const-string v6, "gps-probes-event"

    invoke-direct {v2, v6, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "nav-session-id"

    invoke-virtual {v0}, Lnbisdk/zd;->pq()J

    move-result-wide v6

    invoke-static {v2, v1, v6, v7}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "packing-version"

    invoke-virtual {v0}, Lnbisdk/zd;->bU()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnbisdk/ze;

    const-string v6, "gps"

    invoke-direct {v1, v6, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v6, "packed"

    invoke-virtual {v0}, Lnbisdk/zd;->ap()[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lnbisdk/zd;->pp()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v7, :cond_1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v8, Lnbisdk/ze;

    const-string v9, "gps-offset"

    invoke-direct {v8, v9, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v9, "packed"

    invoke-virtual {v8, v9, v0}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :pswitch_6
    new-instance v6, Lnbisdk/ze;

    const-string v2, "wifi-probes-event"

    invoke-direct {v6, v2, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    new-instance v1, Lnbisdk/ze;

    const-string v2, "gps"

    invoke-direct {v1, v2, v6}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v2, "packed"

    invoke-virtual {v0}, Lnbisdk/uh;->nq()[B

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lnbisdk/ze;->b(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lnbisdk/uh;->nr()[Lnbisdk/cw;

    move-result-object v7

    const/4 v0, 0x0

    move v2, v0

    :goto_4
    array-length v0, v7

    if-ge v2, v0, :cond_1

    new-instance v0, Lnbisdk/ze;

    const-string v1, "wifi-probe"

    invoke-direct {v0, v1, v6}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "frequency"

    aget-object v8, v7, v2

    invoke-virtual {v8}, Lnbisdk/cw;->dD()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v0, v1, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "mac-address"

    aget-object v8, v7, v2

    invoke-virtual {v8}, Lnbisdk/cw;->dC()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signal-strength"

    aget-object v8, v7, v2

    invoke-virtual {v8}, Lnbisdk/qh;->jb()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v0, v1, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "ssid"

    aget-object v8, v7, v2

    invoke-virtual {v8}, Lnbisdk/cw;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time-delta"

    aget-object v8, v7, v2

    invoke-virtual {v8}, Lnbisdk/cw;->getTimeDelta()J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Lnbisdk/fw$a;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    aget-object v1, v7, v2

    invoke-virtual {v1}, Lnbisdk/cw;->dE()Ljava/util/Vector;

    move-result-object v8

    if-eqz v8, :cond_7

    new-instance v9, Lnbisdk/ze;

    const-string v1, "wifi-capabilities"

    invoke-direct {v9, v1, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    new-instance v10, Lnbisdk/ze;

    const-string v0, "pair"

    invoke-direct {v10, v0, v9}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    if-eqz v0, :cond_6

    const-string v11, "key"

    invoke-virtual {v0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "value"

    invoke-virtual {v0}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4

    :pswitch_7
    new-instance v2, Lnbisdk/ze;

    const-string v6, "feedback-event"

    invoke-direct {v2, v6, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v0}, Lnbisdk/uh;->ns()Lnbisdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/jl;->cX()Lnbisdk/de;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Lnbisdk/bf;->a(Lnbisdk/de;)Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_8
    const-string v1, "origin"

    invoke-virtual {v0}, Lnbisdk/jl;->iy()[B

    move-result-object v6

    invoke-virtual {v0}, Lnbisdk/jl;->ix()Lnbisdk/lc;

    move-result-object v7

    invoke-direct {p0, v2, v1, v6, v7}, Lnbisdk/qs;->a(Lnbisdk/ze;Ljava/lang/String;[BLnbisdk/lc;)V

    const-string v1, "destination"

    invoke-virtual {v0}, Lnbisdk/jl;->iz()[B

    move-result-object v6

    invoke-virtual {v0}, Lnbisdk/jl;->iA()Lnbisdk/lc;

    move-result-object v7

    invoke-direct {p0, v2, v1, v6, v7}, Lnbisdk/qs;->a(Lnbisdk/ze;Ljava/lang/String;[BLnbisdk/lc;)V

    invoke-virtual {v0}, Lnbisdk/jl;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Lnbisdk/ze;

    const-string v6, "text"

    invoke-direct {v1, v6, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v6, "data"

    invoke-virtual {v0}, Lnbisdk/jl;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v1, "screen-id"

    invoke-virtual {v0}, Lnbisdk/jl;->iB()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nav-session-id"

    invoke-virtual {v0}, Lnbisdk/jl;->iD()J

    move-result-wide v6

    invoke-static {v2, v1, v6, v7}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "route-request-event-id"

    invoke-virtual {v0}, Lnbisdk/jl;->iE()I

    move-result v6

    invoke-static {v2, v1, v6}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "search-query-event-id"

    invoke-virtual {v0}, Lnbisdk/jl;->de()I

    move-result v6

    invoke-static {v2, v1, v6}, Lnbisdk/hf;->a(Lnbisdk/ze;Ljava/lang/String;I)V

    const-string v1, "provider-id"

    invoke-virtual {v0}, Lnbisdk/jl;->iF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "poi-id"

    invoke-virtual {v0}, Lnbisdk/jl;->iw()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/jl;->iC()Ljava/util/Vector;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v7, Lnbisdk/ze;

    const-string v0, "issue-type"

    invoke-direct {v7, v0, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v8, "type"

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v7, v8, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :pswitch_8
    new-instance v2, Lnbisdk/ze;

    const-string v6, "app-error-event"

    invoke-direct {v2, v6, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v0}, Lnbisdk/uh;->nt()Lnbisdk/ie;

    move-result-object v6

    invoke-virtual {v6}, Lnbisdk/ie;->hU()Ljava/util/Vector;

    move-result-object v7

    if-eqz v7, :cond_b

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    if-eqz v0, :cond_a

    new-instance v8, Lnbisdk/ze;

    const-string v9, "pair"

    invoke-direct {v8, v9, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v9, "key"

    invoke-virtual {v0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "value"

    invoke-virtual {v0}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_b
    new-instance v0, Lnbisdk/ze;

    const-string v1, "error-category"

    invoke-direct {v0, v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "type"

    invoke-virtual {v6}, Lnbisdk/ie;->hQ()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "error-code"

    invoke-virtual {v6}, Lnbisdk/ie;->hR()J

    move-result-wide v7

    invoke-static {v2, v0, v7, v8}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v0, "detailed-code"

    invoke-virtual {v6}, Lnbisdk/ie;->hS()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "detailed-description"

    invoke-virtual {v6}, Lnbisdk/ie;->hT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v0}, Lnbisdk/uh;->nu()Lnbisdk/hd;

    move-result-object v2

    new-instance v6, Lnbisdk/ze;

    const-string v0, "nav-invocation-event"

    invoke-direct {v6, v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v2}, Lnbisdk/hd;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    new-instance v0, Lnbisdk/ze;

    const-string v1, "use-navigator"

    invoke-direct {v0, v1, v6}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v2}, Lnbisdk/hd;->j()Lnbisdk/de;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/bf;->a(Lnbisdk/de;)Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    invoke-virtual {v2}, Lnbisdk/hd;->l()Lnbisdk/br;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/br;->bP()Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_c
    :goto_8
    const-string v1, "platform"

    invoke-virtual {v2}, Lnbisdk/hd;->hf()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "carrier"

    invoke-virtual {v2}, Lnbisdk/hd;->getCarrier()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk-version"

    invoke-virtual {v2}, Lnbisdk/hd;->hg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    new-instance v0, Lnbisdk/ze;

    const-string v1, "app-discovery"

    invoke-direct {v0, v1, v6}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v2}, Lnbisdk/hd;->hh()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lnbisdk/ze;

    const-string v6, "app-present"

    invoke-direct {v1, v6, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    goto :goto_8

    :pswitch_a
    invoke-virtual {v0}, Lnbisdk/uh;->nv()Lnbisdk/jv;

    move-result-object v0

    new-instance v2, Lnbisdk/ze;

    const-string v6, "coupon-analytics-action-event"

    invoke-direct {v2, v6, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    invoke-virtual {v0}, Lnbisdk/jv;->iM()Lnbisdk/qn;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lnbisdk/jv;->iM()Lnbisdk/qn;

    move-result-object v1

    invoke-static {v1}, Lnbisdk/qn;->a(Lnbisdk/xz;)Lnbisdk/ze;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_e
    invoke-virtual {v0}, Lnbisdk/jv;->iN()Lnbisdk/ye;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lnbisdk/jv;->iN()Lnbisdk/ye;

    move-result-object v1

    new-instance v6, Lnbisdk/ze;

    const-string v7, "store-data"

    invoke-direct {v6, v7}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lnbisdk/ye;->Q:Lnbisdk/de;

    if-eqz v7, :cond_f

    iget-object v7, v1, Lnbisdk/ye;->Q:Lnbisdk/de;

    invoke-static {v7}, Lnbisdk/bf;->a(Lnbisdk/de;)Lnbisdk/ze;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_f
    const-string v7, "retailer-name"

    iget-object v8, v1, Lnbisdk/ye;->ax:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "retailer-id"

    iget-object v8, v1, Lnbisdk/ye;->L:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "coupon-count"

    iget v8, v1, Lnbisdk/ye;->cJ:I

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v7, "coupon-broad-category"

    const-string v8, "coupon-broad-category-text"

    iget-object v9, v1, Lnbisdk/ye;->fd:Ljava/util/Vector;

    invoke-static {v6, v7, v8, v9}, Lnbisdk/ir;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    const-string v7, "coupon-category"

    const-string v8, "coupon-category-text"

    iget-object v9, v1, Lnbisdk/ye;->ow:Ljava/util/Vector;

    invoke-static {v6, v7, v8, v9}, Lnbisdk/ir;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    const-string v7, "coupon-sub-category"

    const-string v8, "coupon-sub-category-text"

    iget-object v1, v1, Lnbisdk/ye;->DK:Ljava/util/Vector;

    invoke-static {v6, v7, v8, v1}, Lnbisdk/ir;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {v2, v6}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_10
    invoke-virtual {v0}, Lnbisdk/jv;->iO()Lnbisdk/wb;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lnbisdk/jv;->iO()Lnbisdk/wb;

    move-result-object v1

    new-instance v6, Lnbisdk/ze;

    const-string v7, "loyalty-program-card"

    invoke-direct {v6, v7}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v7, "loyalty-program-name"

    invoke-interface {v1}, Lnbisdk/hm;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "loyalty-program-number"

    invoke-interface {v1}, Lnbisdk/hm;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v7, v1}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_11
    const-string v1, "action"

    invoke-virtual {v0}, Lnbisdk/jv;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v0}, Lnbisdk/uh;->nw()Lnbisdk/yk;

    move-result-object v0

    new-instance v2, Lnbisdk/ze;

    const-string v6, "asr-event"

    invoke-direct {v2, v6, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v1, "asr-screen"

    invoke-virtual {v0}, Lnbisdk/yk;->oT()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "session-id"

    invoke-virtual {v0}, Lnbisdk/yk;->oU()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "asr-text"

    invoke-virtual {v0}, Lnbisdk/yk;->oV()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "provider-session-id"

    invoke-virtual {v0}, Lnbisdk/yk;->oW()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user-lang"

    invoke-virtual {v0}, Lnbisdk/yk;->oX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 8

    new-instance v0, Lnbisdk/fa;

    invoke-direct {v0}, Lnbisdk/fa;-><init>()V

    iput-object v0, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    iget-object v0, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    iget-object v1, p0, Lnbisdk/qs;->wf:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lnbisdk/fa;->e(Ljava/util/Vector;)V

    const-string v0, "result"

    invoke-virtual {p2, v0}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v1, "result"

    invoke-static {p2, v1}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/fa;->e(J)V

    :cond_0
    const-string v0, "analytics-config"

    invoke-static {p2, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v2, "max-hold-time"

    invoke-static {v1, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lnbisdk/fa;->Q(I)V

    iget-object v0, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v2, "max-data-age"

    invoke-static {v1, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lnbisdk/fa;->R(I)V

    iget-object v0, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v2, "max-request-size"

    invoke-static {v1, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lnbisdk/fa;->S(I)V

    const-string v0, "gold-events-config"

    invoke-static {v1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "priority"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lnbisdk/fa;->T(I)V

    const-string v2, "max-hold-time"

    invoke-virtual {v0, v2}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "max-hold-time"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lnbisdk/fa;->Y(I)V

    :cond_1
    const-string v2, "event-type"

    invoke-virtual {v0, v2}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {}, Lnbisdk/rb;->b()V

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    const-string v3, "name"

    invoke-static {v0, v3}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnbisdk/rb;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "poi-events-config"

    invoke-static {v1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "priority"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lnbisdk/fa;->U(I)V

    :cond_3
    const-string v0, "route-tracking-config"

    invoke-static {v1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "priority"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lnbisdk/fa;->V(I)V

    :cond_4
    const-string v0, "gps-probes-config"

    invoke-static {v1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "priority"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lnbisdk/fa;->W(I)V

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "sample-rate"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lnbisdk/fa;->X(I)V

    :cond_5
    const-string v0, "wifi-probes-config"

    invoke-static {v1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "priority"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lnbisdk/fa;->Z(I)V

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "max-speed"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lnbisdk/fa;->aa(I)V

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "collection-interval"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lnbisdk/fa;->ab(I)V

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "minimum-distance-delta"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lnbisdk/fa;->ac(I)V

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "max-horizontal-uncertainty"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lnbisdk/fa;->ad(I)V

    :cond_6
    const-string v0, "feedback-config"

    invoke-static {v1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "priority"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lnbisdk/fa;->ae(I)V

    :cond_7
    const-string v0, "app-errors-config"

    invoke-static {v1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "priority"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lnbisdk/fa;->af(I)V

    const-string v2, "error-category"

    invoke-virtual {v0, v2}, Lnbisdk/ql;->bd(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    iget-object v3, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v4, "type"

    invoke-static {v0, v4}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnbisdk/fa;->aa(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v0, "nav-invocation-config"

    invoke-static {v1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v3, "priority"

    invoke-static {v0, v3}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lnbisdk/fa;->ag(I)V

    :cond_9
    const-string v0, "coupon-events-config"

    invoke-static {v1, v0}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    const-string v2, "priority"

    invoke-static {v0, v2}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lnbisdk/fa;->ah(I)V

    :cond_a
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    invoke-static {v0}, Lnbisdk/ck;->a(Lnbisdk/fa;)V

    :cond_b
    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_c

    iget-object v2, p0, Lnbisdk/qs;->wf:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_c

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/uh;

    invoke-virtual {v0}, Lnbisdk/uh;->getId()I

    move-result v4

    invoke-virtual {v0}, Lnbisdk/uh;->hG()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0}, Lnbisdk/uh;->nm()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v0}, Lnbisdk/uh;->ng()B

    move-result v0

    const/4 v7, 0x3

    invoke-static {v4, v5, v6, v0, v7}, Lnbisdk/db;->a(IIIBB)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lnbisdk/yi;->DM:Lnbisdk/ap;

    invoke-interface {v0, p1, p2}, Lnbisdk/ap;->a(Lnbisdk/ag;Lnbisdk/ql;)V

    return-void
.end method

.method public final a(Lnbisdk/ze;)V
    .locals 7

    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hD()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lnbisdk/qs;->wf:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input parameter, size=0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_c

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/j;

    new-instance v4, Lnbisdk/ze;

    const-string v5, "event-detail"

    invoke-direct {v4, v5, p1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v5, "id"

    invoke-virtual {v0}, Lnbisdk/j;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "type"

    invoke-virtual {v0}, Lnbisdk/j;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnbisdk/j;->E()Lnbisdk/di;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v5, Lnbisdk/ze;

    const-string v6, "phone"

    invoke-direct {v5, v6, v4}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    const-string v4, "kind"

    invoke-virtual {v0}, Lnbisdk/j;->E()Lnbisdk/di;

    move-result-object v6

    invoke-virtual {v6}, Lnbisdk/di;->eq()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "country"

    invoke-virtual {v0}, Lnbisdk/j;->E()Lnbisdk/di;

    move-result-object v6

    invoke-virtual {v6}, Lnbisdk/di;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "area"

    invoke-virtual {v0}, Lnbisdk/j;->E()Lnbisdk/di;

    move-result-object v6

    invoke-virtual {v6}, Lnbisdk/di;->ep()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "number"

    invoke-virtual {v0}, Lnbisdk/j;->E()Lnbisdk/di;

    move-result-object v6

    invoke-virtual {v6}, Lnbisdk/di;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ext"

    invoke-virtual {v0}, Lnbisdk/j;->E()Lnbisdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/di;->er()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lnbisdk/ze;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lnbisdk/qs;->b(Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hH()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hK()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hJ()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hI()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hM()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hN()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_3
    new-instance v0, Lnbisdk/ze;

    const-string v1, "want-analytics-config"

    invoke-direct {v0, v1, p1}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    new-instance v1, Lnbisdk/ze;

    const-string v2, "event-categories"

    invoke-direct {v1, v2, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;Lnbisdk/ze;)V

    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hH()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lnbisdk/ze;

    const-string v2, "gold-category"

    invoke-direct {v0, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/tt;->mZ()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_4

    new-instance v2, Lnbisdk/ze;

    const-string v3, "want-max-hold-time"

    invoke-direct {v2, v3}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_4
    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hI()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lnbisdk/ze;

    const-string v2, "poi-category"

    invoke-direct {v0, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_5
    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hJ()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lnbisdk/ze;

    const-string v2, "route-tracking-category"

    invoke-direct {v0, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_6
    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hK()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lnbisdk/ze;

    const-string v2, "gps-probes-category"

    invoke-direct {v0, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_7
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lnbisdk/tt;->bm(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lnbisdk/ze;

    const-string v2, "wifi-probes-category"

    invoke-direct {v0, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_8
    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hM()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lnbisdk/ze;

    const-string v2, "feedback-category"

    invoke-direct {v0, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_9
    iget-object v0, p0, Lnbisdk/qs;->wd:Lnbisdk/id;

    invoke-virtual {v0}, Lnbisdk/id;->hN()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lnbisdk/ze;

    const-string v2, "app-errors-category"

    invoke-direct {v0, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_a
    invoke-static {}, Lnbisdk/id;->hO()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lnbisdk/ze;

    const-string v2, "nav-invocation-category"

    invoke-direct {v0, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_b
    invoke-static {}, Lnbisdk/id;->hP()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lnbisdk/ze;

    const-string v2, "coupons-category"

    invoke-direct {v0, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    :cond_c
    return-void
.end method

.method protected final ak()Ljava/lang/String;
    .locals 1

    const-string v0, "analytics-events"

    return-object v0
.end method

.method protected final mg()Lnbisdk/fa;
    .locals 1

    iget-object v0, p0, Lnbisdk/qs;->we:Lnbisdk/fa;

    return-object v0
.end method
