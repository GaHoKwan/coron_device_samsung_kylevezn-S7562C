.class public Lnbisdk/bo;
.super Ljava/lang/Object;


# instance fields
.field public L:Ljava/lang/String;

.field private cP:Lnbisdk/ay;

.field private cQ:Lnbisdk/ly;

.field private cR:Lnbisdk/lc;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/lc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/bo;->cR:Lnbisdk/lc;

    return-void
.end method

.method public constructor <init>(Lnbisdk/ql;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/ay;

    const-string v1, "address"

    invoke-static {p1, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/ay;-><init>(Lnbisdk/ql;)V

    iput-object v0, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    new-instance v0, Lnbisdk/ly;

    const-string v1, "point"

    invoke-static {p1, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    invoke-direct {v0, v1}, Lnbisdk/ly;-><init>(Lnbisdk/ql;)V

    iput-object v0, p0, Lnbisdk/bo;->cQ:Lnbisdk/ly;

    const-string v0, "name"

    invoke-static {p1, v0}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/bo;->L:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    goto :goto_0
.end method

.method public static p(Lnbisdk/ql;)Lnbisdk/uv;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "location"

    invoke-static {p0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lnbisdk/bo;

    invoke-direct {v0, v1}, Lnbisdk/bo;-><init>(Lnbisdk/ql;)V

    invoke-virtual {v0}, Lnbisdk/bo;->bJ()Lnbisdk/lc;

    move-result-object v0

    :cond_0
    const-string v1, "incomplete"

    invoke-static {p0, v1}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v2

    sget-byte v1, Lnbisdk/uv;->AF:B

    const-string v3, "accuracy"

    invoke-virtual {p0, v3}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "accuracy"

    invoke-static {p0, v1}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v1, v3

    int-to-byte v1, v1

    :cond_1
    new-instance v3, Lnbisdk/uv;

    invoke-direct {v3, v0, v1, v2}, Lnbisdk/uv;-><init>(Lnbisdk/lc;BZ)V

    return-object v3
.end method


# virtual methods
.method public final bJ()Lnbisdk/lc;
    .locals 5

    new-instance v0, Lnbisdk/lc;

    invoke-direct {v0}, Lnbisdk/lc;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setType(I)V

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->cg:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->cg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setType(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lnbisdk/bo;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setAreaName(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->ce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setAddress(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->cf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setStreet(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->cg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCrossStreet(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->ch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCity(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->ci:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCounty(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->cj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setState(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->ck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setPostal(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setCountry(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->cl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setAirport(Ljava/lang/String;)V

    iget-object v1, p0, Lnbisdk/bo;->cQ:Lnbisdk/ly;

    iget-wide v1, v1, Lnbisdk/ly;->sp:D

    iget-object v3, p0, Lnbisdk/bo;->cQ:Lnbisdk/ly;

    iget-wide v3, v3, Lnbisdk/ly;->sq:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lnbisdk/lc;->updateLatLon(DD)V

    return-object v0

    :cond_1
    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->cl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/bo;->cP:Lnbisdk/ay;

    iget-object v1, v1, Lnbisdk/ay;->cl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lnbisdk/lc;->setType(I)V

    goto :goto_0
.end method

.method public final bK()Lnbisdk/ze;
    .locals 7

    iget-object v0, p0, Lnbisdk/bo;->cR:Lnbisdk/lc;

    new-instance v1, Lnbisdk/ze;

    const-string v2, "location"

    invoke-direct {v1, v2}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {v0}, Lnbisdk/lc;->getAreaName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lnbisdk/ay;

    invoke-direct {v2, v0}, Lnbisdk/ay;-><init>(Lnbisdk/lc;)V

    new-instance v3, Lnbisdk/ze;

    const-string v4, "address"

    invoke-direct {v3, v4}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v4, "type"

    iget-object v5, v2, Lnbisdk/ay;->M:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sa"

    iget-object v5, v2, Lnbisdk/ay;->ce:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "xstr"

    iget-object v5, v2, Lnbisdk/ay;->cg:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "str"

    iget-object v5, v2, Lnbisdk/ay;->cf:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "city"

    iget-object v5, v2, Lnbisdk/ay;->ch:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "state"

    iget-object v5, v2, Lnbisdk/ay;->cj:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "postal"

    iget-object v5, v2, Lnbisdk/ay;->ck:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "airport"

    iget-object v5, v2, Lnbisdk/ay;->cl:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "county"

    iget-object v5, v2, Lnbisdk/ay;->ci:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "country"

    iget-object v2, v2, Lnbisdk/ay;->Y:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    new-instance v2, Lnbisdk/ly;

    invoke-virtual {v0}, Lnbisdk/lc;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Lnbisdk/lc;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lnbisdk/ly;-><init>(DD)V

    new-instance v0, Lnbisdk/ze;

    const-string v3, "point"

    invoke-direct {v0, v3}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v3, "lat"

    iget-wide v4, v2, Lnbisdk/ly;->sp:D

    invoke-static {v0, v3, v4, v5}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v3, "lon"

    iget-wide v4, v2, Lnbisdk/ly;->sq:D

    invoke-static {v0, v3, v4, v5}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    invoke-virtual {v1, v0}, Lnbisdk/ze;->a(Lnbisdk/ze;)V

    return-object v1
.end method
