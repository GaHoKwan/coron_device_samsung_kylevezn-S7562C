.class public final Lnbisdk/pj;
.super Lnbisdk/gp;


# instance fields
.field private uL:Lnbisdk/pj;

.field private uM:Lnbisdk/pj;

.field private uN:F

.field private uO:I

.field private uP:Z

.field private uv:I


# direct methods
.method public constructor <init>(Lnbisdk/au;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnbisdk/pj;-><init>(Lnbisdk/au;Z)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/au;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lnbisdk/gp;-><init>(Lnbisdk/au;)V

    iput-object v0, p0, Lnbisdk/pj;->uL:Lnbisdk/pj;

    iput-object v0, p0, Lnbisdk/pj;->uM:Lnbisdk/pj;

    const/high16 v0, -0x4080

    iput v0, p0, Lnbisdk/pj;->uN:F

    iput v1, p0, Lnbisdk/pj;->uv:I

    iput v1, p0, Lnbisdk/pj;->uO:I

    iput-boolean p2, p0, Lnbisdk/pj;->uP:Z

    return-void
.end method


# virtual methods
.method public final a(DD[I[I)V
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p6

    invoke-super/range {v0 .. v5}, Lnbisdk/gp;->a(DD[I)V

    iget-object v0, p0, Lnbisdk/pj;->uM:Lnbisdk/pj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/gp;->lh:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jo()Lnbisdk/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/pj;->uM:Lnbisdk/pj;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->a(DD[I)V

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Lnbisdk/gp;->a(DD[I)V

    goto :goto_0
.end method

.method public final a(DF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget v0, p0, Lnbisdk/pj;->uN:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lnbisdk/pj;->uO:I

    iget v1, p0, Lnbisdk/gp;->dR:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lnbisdk/gp;->dR:I

    iput v0, p0, Lnbisdk/pj;->uO:I

    iput p3, p0, Lnbisdk/pj;->uN:F

    float-to-double v0, p3

    invoke-virtual {p0, v0, v1, p1, p2}, Lnbisdk/gp;->b(DD)I

    move-result v0

    iput v0, p0, Lnbisdk/pj;->uv:I

    :cond_2
    return-void
.end method

.method public final b([I)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lnbisdk/gp;->dR:I

    aput v0, p1, v2

    const/4 v0, 0x1

    iget v1, p0, Lnbisdk/gp;->dR:I

    aput v1, p1, v0

    iget-object v0, p0, Lnbisdk/pj;->uM:Lnbisdk/pj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/pj;->uM:Lnbisdk/pj;

    invoke-virtual {v0}, Lnbisdk/gp;->getZoomLevel()I

    move-result v0

    aput v0, p1, v2

    :cond_0
    return-void
.end method

.method public final gG()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/pj;->uP:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lnbisdk/gp;->gG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j(Lnbisdk/au;)V
    .locals 2

    new-instance v0, Lnbisdk/pj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnbisdk/pj;-><init>(Lnbisdk/au;Z)V

    iput-object v0, p0, Lnbisdk/pj;->uM:Lnbisdk/pj;

    iget-object v0, p0, Lnbisdk/pj;->uM:Lnbisdk/pj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/pj;->uM:Lnbisdk/pj;

    invoke-virtual {v0, p1}, Lnbisdk/gp;->b(Lnbisdk/au;)V

    iget-object v0, p0, Lnbisdk/pj;->uM:Lnbisdk/pj;

    iget v1, p0, Lnbisdk/pj;->uv:I

    iput v1, v0, Lnbisdk/pj;->uv:I

    :cond_0
    return-void
.end method

.method public final k(Lnbisdk/au;)V
    .locals 2

    new-instance v0, Lnbisdk/pj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnbisdk/pj;-><init>(Lnbisdk/au;Z)V

    iput-object v0, p0, Lnbisdk/pj;->uL:Lnbisdk/pj;

    iget-object v0, p0, Lnbisdk/pj;->uL:Lnbisdk/pj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/pj;->uL:Lnbisdk/pj;

    invoke-virtual {v0, p1}, Lnbisdk/gp;->b(Lnbisdk/au;)V

    iget-object v0, p0, Lnbisdk/pj;->uL:Lnbisdk/pj;

    iget v1, p0, Lnbisdk/pj;->uv:I

    iput v1, v0, Lnbisdk/pj;->uv:I

    :cond_0
    return-void
.end method

.method public final li()Lnbisdk/pj;
    .locals 1

    iget-object v0, p0, Lnbisdk/pj;->uM:Lnbisdk/pj;

    return-object v0
.end method

.method public final lj()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/pj;->uL:Lnbisdk/pj;

    iput-object v0, p0, Lnbisdk/pj;->uM:Lnbisdk/pj;

    return-void
.end method

.method public final lk()I
    .locals 1

    iget v0, p0, Lnbisdk/pj;->uv:I

    return v0
.end method
