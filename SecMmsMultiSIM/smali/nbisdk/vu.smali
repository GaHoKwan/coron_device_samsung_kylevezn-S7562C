.class public Lnbisdk/vu;
.super Ljava/lang/Object;


# instance fields
.field private Bg:Lnbisdk/zc;

.field private V:I

.field private lR:Lnbisdk/de;

.field private lS:Lnbisdk/br;

.field private oy:Z

.field private sW:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/vu;->sW:Z

    invoke-virtual {p0}, Lnbisdk/vu;->R()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/zc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Lnbisdk/jg;->j(J)Lnbisdk/ir;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/vu;->sW:Z

    iput-object p1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {p0}, Lnbisdk/vu;->R()V

    return-void
.end method

.method private bS(I)Lnbisdk/ti;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    check-cast v0, Lnbisdk/zp;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnbisdk/zp;->b(IZ)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, -0x3

    if-eq p1, v1, :cond_0

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public R()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/vu;->V:I

    iput-boolean v0, p0, Lnbisdk/vu;->oy:Z

    return-void
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lnbisdk/br;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/vu;->lS:Lnbisdk/br;

    return-void
.end method

.method public aI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ai()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public bA(I)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/pn;->getDistance()D

    move-result-wide v1

    invoke-virtual {v0}, Lnbisdk/ti;->mC()D

    move-result-wide v3

    add-double v0, v1, v3

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    if-lt p1, v0, :cond_2

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->getDistance()D

    move-result-wide v0

    goto :goto_0
.end method

.method public bB(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v0

    check-cast v0, Lnbisdk/yo;

    invoke-virtual {v0}, Lnbisdk/yo;->oY()D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/ju;->o(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    if-lt p1, v0, :cond_2

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    check-cast v0, Lnbisdk/yo;

    invoke-virtual {v0}, Lnbisdk/yo;->oY()D

    move-result-wide v0

    invoke-static {v0, v1}, Lnbisdk/ju;->o(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bC(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lnbisdk/tk;

    const-string v1, "null base maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->lr()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kK()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    if-lt p1, v0, :cond_2

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->lr()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kK()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bD(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lnbisdk/tk;

    const-string v1, "null maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kK()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    if-lt p1, v0, :cond_2

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kK()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bE(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lnbisdk/tk;

    const-string v1, "null base maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kK()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    if-lt p1, v0, :cond_2

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kK()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bF(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lnbisdk/tk;

    const-string v1, "null maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    if-lt p1, v0, :cond_2

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bG(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lnbisdk/tk;

    const-string v1, "null maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    if-lt p1, v0, :cond_2

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bH(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, -0x4

    if-eq p1, v1, :cond_0

    const/4 v1, -0x5

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lnbisdk/vu;->oy:Z

    if-eqz v1, :cond_2

    iget v0, p0, Lnbisdk/vu;->V:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->as()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bI(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    const-string v0, "OR."

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string v0, "TS."

    goto :goto_0

    :cond_1
    const/4 v0, -0x4

    if-ne p1, v0, :cond_2

    const-string v0, "SC."

    goto :goto_0

    :cond_2
    const/4 v0, -0x5

    if-ne p1, v0, :cond_3

    const-string v0, "SC.S"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Lnbisdk/tk;

    const-string v1, "null maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->getCommand()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    if-lt p1, v0, :cond_6

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->getCommand()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bJ(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lnbisdk/ti;->as()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lnbisdk/ti;->mF()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Lnbisdk/tk;

    const-string v1, "no stack"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lnbisdk/ti;->mF()Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->getCommand()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Lnbisdk/tk;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bK(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kM()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    if-lt p1, v0, :cond_3

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kM()Z

    move-result v0

    goto :goto_0
.end method

.method public bL(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kN()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    if-lt p1, v0, :cond_3

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->ls()Lnbisdk/mx;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/mx;->kN()Z

    move-result v0

    goto :goto_0
.end method

.method public bM(I)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->kJ()Z

    move-result v0

    return v0
.end method

.method public bN(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->as()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x3

    if-ne p1, v1, :cond_0

    move p1, v0

    :cond_0
    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/ti;->am()I

    move-result v1

    invoke-static {v3, v1, v2}, Lnbisdk/uk;->a(Lnbisdk/kr;I[I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget v0, v2, v0

    :goto_0
    return v0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method public bO(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/ti;->am()I

    move-result v0

    invoke-static {v2, v0, v1}, Lnbisdk/uk;->a(Lnbisdk/kr;I[I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    aget v0, v1, v0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    goto :goto_0
.end method

.method public bP(I)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/ti;->am()I

    move-result v3

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v2

    invoke-interface {v2, v3}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v2

    invoke-interface {v2}, Lnbisdk/hg;->ht()I

    move-result v4

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    if-gez v3, :cond_1

    :cond_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v3, :cond_0

    if-ge v2, v4, :cond_0

    iget-object v5, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v5}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v5

    invoke-interface {v5, v2}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v5

    invoke-interface {v5}, Lnbisdk/pn;->getDistance()D

    move-result-wide v5

    add-double/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public bQ(I)I
    .locals 2

    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/hg;->ht()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v1

    invoke-interface {v1, p1}, Lnbisdk/hg;->av(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    :goto_1
    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    goto :goto_1
.end method

.method public bR(I)D
    .locals 6

    const/4 v4, -0x1

    const-wide/16 v0, 0x0

    if-ne p1, v4, :cond_1

    :cond_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    invoke-virtual {p0, p1}, Lnbisdk/vu;->bQ(I)I

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, p1, 0x1

    :goto_0
    if-gt v2, v3, :cond_0

    iget-object v4, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v4}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v4

    invoke-interface {v4, v2}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v4

    invoke-interface {v4}, Lnbisdk/pn;->getDistance()D

    move-result-wide v4

    add-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public be()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [D

    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->as()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    invoke-static {v4, v1, v5, v0, v4}, Lnbisdk/uk;->a(Lnbisdk/mu;Lnbisdk/kr;I[D[J)V

    :goto_0
    aget-wide v0, v0, v5

    return-wide v0

    :cond_0
    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->pi()Lnbisdk/mu;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Lnbisdk/uk;->a(Lnbisdk/mu;Lnbisdk/kr;I[D[J)V

    goto :goto_0
.end method

.method public bz(I)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lnbisdk/vu;->bS(I)Lnbisdk/ti;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/ti;->mE()Lnbisdk/pn;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    if-nez p1, :cond_1

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lnbisdk/ti;->mD()Lnbisdk/pn;

    move-result-object v1

    invoke-interface {v1}, Lnbisdk/pn;->getDistance()D

    move-result-wide v1

    invoke-virtual {v0}, Lnbisdk/ti;->mC()D

    move-result-wide v3

    add-double v0, v1, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->ht()I

    move-result v0

    if-lt p1, v0, :cond_3

    new-instance v0, Lnbisdk/tk;

    const-string v1, "invalid maneuver"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0, p1}, Lnbisdk/hg;->ar(I)Lnbisdk/pn;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/pn;->getDistance()D

    move-result-wide v0

    goto :goto_0
.end method

.method public d(Lnbisdk/de;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/vu;->lR:Lnbisdk/de;

    return-void
.end method

.method public k(I)V
    .locals 1

    iput p1, p0, Lnbisdk/vu;->V:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/vu;->oy:Z

    return-void
.end method

.method public oa()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [J

    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->as()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    invoke-static {v4, v1, v5, v4, v0}, Lnbisdk/uk;->a(Lnbisdk/mu;Lnbisdk/kr;I[D[J)V

    :goto_0
    aget-wide v1, v0, v5

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long v0, v1, v3

    return-wide v0

    :cond_0
    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->pi()Lnbisdk/mu;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v4, v0}, Lnbisdk/uk;->a(Lnbisdk/mu;Lnbisdk/kr;I[D[J)V

    goto :goto_0
.end method

.method public ob()Lnbisdk/de;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/tk;

    const-string v1, "null trip"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    invoke-interface {v0}, Lnbisdk/hg;->k()Lnbisdk/de;

    move-result-object v0

    return-object v0
.end method

.method public oc()Lnbisdk/de;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->lR:Lnbisdk/de;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/tk;

    const-string v1, "null destination"

    invoke-direct {v0, v1}, Lnbisdk/tk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lnbisdk/vu;->lR:Lnbisdk/de;

    return-object v0
.end method

.method public od()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const/4 v0, 0x0

    throw v0

    move-result-wide v0

    return-wide v0
.end method

.method public oe()Lnbisdk/br;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/vu;->lS:Lnbisdk/br;

    return-object v0
.end method

.method public of()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    cmpl-double v2, v0, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [D

    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->pi()Lnbisdk/mu;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lnbisdk/uk;->a(Lnbisdk/mu;Lnbisdk/kr;I[D[J)V

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method public og()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/tk;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    cmp-long v2, v0, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v2}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->pi()Lnbisdk/mu;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lnbisdk/uk;->a(Lnbisdk/mu;Lnbisdk/kr;I[D[J)V

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long v0, v1, v3

    goto :goto_0
.end method

.method public oh()D
    .locals 2

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public oi()J
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->as()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v0, v2}, Lnbisdk/hg;->as(I)J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_0
    iget-object v1, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v1}, Lnbisdk/zc;->iV()Lnbisdk/zj;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public oj()Z
    .locals 4

    invoke-virtual {p0}, Lnbisdk/vu;->oi()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ok()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    check-cast v0, Lnbisdk/zp;

    invoke-virtual {v0}, Lnbisdk/zp;->am()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ol()I
    .locals 1

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->p()Lnbisdk/hg;

    move-result-object v0

    check-cast v0, Lnbisdk/zp;

    invoke-virtual {v0}, Lnbisdk/zp;->am()I

    move-result v0

    return v0
.end method

.method public om()D
    .locals 2

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->pk()Lnbisdk/vv;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public on()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->as()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/vu;->Bg:Lnbisdk/zc;

    invoke-virtual {v0}, Lnbisdk/zc;->pk()Lnbisdk/vv;

    :cond_0
    return v1
.end method
