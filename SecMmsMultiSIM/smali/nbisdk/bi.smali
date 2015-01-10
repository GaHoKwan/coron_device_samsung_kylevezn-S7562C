.class public Lnbisdk/bi;
.super Ljava/lang/Object;


# instance fields
.field private aB:Ljava/util/Vector;

.field private bF:J

.field private cH:Lnbisdk/qc;

.field private cI:Lnbisdk/gw;

.field private cJ:I

.field private cK:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/bi;->aB:Ljava/util/Vector;

    iput p1, p0, Lnbisdk/bi;->cJ:I

    iput-wide p2, p0, Lnbisdk/bi;->cK:J

    iput-wide p4, p0, Lnbisdk/bi;->bF:J

    return-void
.end method

.method public static f(Lnbisdk/ql;)Lnbisdk/ni;
    .locals 5

    new-instance v0, Lnbisdk/ni;

    invoke-direct {v0}, Lnbisdk/ni;-><init>()V

    const-string v1, "price"

    invoke-static {p0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    new-instance v2, Lnbisdk/hs;

    invoke-direct {v2}, Lnbisdk/hs;-><init>()V

    const-string v3, "value"

    invoke-static {v1, v3}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnbisdk/hs;->k(D)V

    const-string v3, "currency"

    invoke-static {v1, v3}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnbisdk/hs;->am(Ljava/lang/String;)V

    const-string v3, "modtime"

    invoke-virtual {v1, v3}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "modtime"

    invoke-static {v1, v3}, Lnbisdk/fw$a;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnbisdk/hs;->f(J)V

    :cond_0
    invoke-virtual {v0, v2}, Lnbisdk/ni;->a(Lnbisdk/hs;)V

    const-string v1, "units"

    invoke-virtual {p0, v1}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "units"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/ni;->aT(Ljava/lang/String;)V

    :cond_1
    const-string v1, "fuel-type"

    invoke-static {p0, v1}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "fuel-type"

    invoke-static {p0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    new-instance v2, Lnbisdk/pf;

    invoke-direct {v2}, Lnbisdk/pf;-><init>()V

    const-string v3, "product-name"

    invoke-virtual {v1, v3}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "product-name"

    invoke-static {v1, v3}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnbisdk/pf;->aY(Ljava/lang/String;)V

    :cond_2
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "code"

    invoke-static {v1, v3}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnbisdk/pf;->ba(Ljava/lang/String;)V

    :cond_3
    const-string v3, "type-name"

    invoke-virtual {v1, v3}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "type-name"

    invoke-static {v1, v3}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnbisdk/pf;->aZ(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, v2}, Lnbisdk/ni;->a(Lnbisdk/pf;)V

    :cond_5
    const-string v1, "average"

    invoke-static {p0, v1}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/ni;->L(Z)V

    const-string v1, "low"

    invoke-static {p0, v1}, Lnbisdk/cj;->e(Lnbisdk/ql;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/ni;->M(Z)V

    return-object v0
.end method


# virtual methods
.method public a(Lnbisdk/gw;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/bi;->cI:Lnbisdk/gw;

    return-void
.end method

.method public a(Lnbisdk/je;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/bi;->aB:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lnbisdk/qc;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/bi;->cH:Lnbisdk/qc;

    return-void
.end method

.method public bH()Lnbisdk/qc;
    .locals 1

    iget-object v0, p0, Lnbisdk/bi;->cH:Lnbisdk/qc;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lnbisdk/bi;->cJ:I

    return v0
.end method

.method public getFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/bi;->cI:Lnbisdk/gw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/bi;->cI:Lnbisdk/gw;

    invoke-virtual {v0, p1}, Lnbisdk/gw;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilterCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/bi;->cI:Lnbisdk/gw;

    invoke-virtual {v0}, Lnbisdk/gw;->getFilterCount()I

    move-result v0

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/bi;->cK:J

    return-wide v0
.end method

.method public getUtcOffset()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/bi;->bF:J

    return-wide v0
.end method

.method public h(I)Lnbisdk/vl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/bi;->cI:Lnbisdk/gw;

    invoke-virtual {v0, p1}, Lnbisdk/gw;->am(I)Lnbisdk/vl;

    move-result-object v0

    return-object v0
.end method
