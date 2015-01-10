.class public Lnbisdk/bl;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/ql;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lnbisdk/ql;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "area-building"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "area-interior"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "area-water"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "area-campus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "area-parks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "area-geopolitical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "label"

    invoke-static {p1, v0}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "priority"

    invoke-static {p1, v0}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    new-instance v0, Lnbisdk/tq;

    const-string v1, "polyline-pack"

    invoke-static {p1, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lnbisdk/ql;->aA(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/tq;-><init>([B)V

    return-void
.end method

.method public static a(Lnbisdk/vl;)Lnbisdk/ze;
    .locals 3

    new-instance v0, Lnbisdk/ze;

    const-string v1, "pair"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v1, "key"

    invoke-virtual {p0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-virtual {p0}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lnbisdk/gw;)Lnbisdk/ze;
    .locals 4

    new-instance v1, Lnbisdk/ze;

    const-string v0, "search-filter"

    invoke-direct {v1, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnbisdk/gw;->getFilterCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lnbisdk/gw;->am(I)Lnbisdk/vl;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/bl;->a(Lnbisdk/vl;)Lnbisdk/ze;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnbisdk/gw;->gU()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lnbisdk/ze;

    const-string v3, "result-style"

    invoke-direct {v2, v3}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v3, "key"

    invoke-static {v2, v3, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    return-object v1
.end method

.method public static b(Lnbisdk/lc;)Lnbisdk/ze;
    .locals 4

    new-instance v1, Lnbisdk/ze;

    const-string v0, "address"

    invoke-direct {v1, v0}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnbisdk/lc;->getAirport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnbisdk/lc;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v2, "type"

    const-string v3, "airport"

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string v2, "sa"

    invoke-virtual {p0}, Lnbisdk/lc;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "xstr"

    invoke-virtual {p0}, Lnbisdk/lc;->getCrossStreet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "str"

    invoke-virtual {p0}, Lnbisdk/lc;->getStreet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "city"

    invoke-virtual {p0}, Lnbisdk/lc;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {p0}, Lnbisdk/lc;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "postal"

    invoke-virtual {p0}, Lnbisdk/lc;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "airport"

    invoke-static {v0}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "county"

    invoke-virtual {p0}, Lnbisdk/lc;->getCounty()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-virtual {p0}, Lnbisdk/lc;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnbisdk/ju;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lnbisdk/lc;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    const-string v2, "type"

    const-string v3, "freeform"

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnbisdk/lc;->getFreeform()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ltz v3, :cond_3

    const-string v3, "freeform"

    invoke-static {v1, v3, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value for freeform search cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lnbisdk/lc;->getCrossStreet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "type"

    const-string v3, "intersect"

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "type"

    const-string v3, "street"

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static g(Lnbisdk/ql;)Lnbisdk/vl;
    .locals 3

    new-instance v0, Lnbisdk/vl;

    const-string v1, "key"

    invoke-static {p0, v1}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-static {p0, v2}, Lnbisdk/ur;->j(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "section"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/vl;->bs(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/vl;->bt(Ljava/lang/String;)V

    return-object v0
.end method
