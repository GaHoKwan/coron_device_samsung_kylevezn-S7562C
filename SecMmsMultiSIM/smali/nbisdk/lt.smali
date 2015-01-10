.class public final Lnbisdk/lt;
.super Ljava/lang/Object;


# instance fields
.field private lh:Lnbisdk/au;

.field rm:Landroid/graphics/PointF;

.field rn:F

.field private ro:Z

.field rp:F


# direct methods
.method public constructor <init>(Lnbisdk/au;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lnbisdk/lt;->rm:Landroid/graphics/PointF;

    iput-object p1, p0, Lnbisdk/lt;->lh:Lnbisdk/au;

    return-void
.end method


# virtual methods
.method public final d(Lnbisdk/fp;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/lt;->rm:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lnbisdk/fp;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Lnbisdk/fp;->getFocusY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1}, Lnbisdk/fp;->getPreviousSpan()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnbisdk/fp;->getPreviousSpan()F

    move-result v0

    iput v0, p0, Lnbisdk/lt;->rn:F

    :goto_0
    iget-boolean v0, p0, Lnbisdk/lt;->ro:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/lt;->lh:Lnbisdk/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/au;->J(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/lt;->ro:Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lnbisdk/fp;->getCurrentSpan()F

    move-result v0

    iput v0, p0, Lnbisdk/lt;->rn:F

    goto :goto_0
.end method

.method public final e(F)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lnbisdk/lt;->lh:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au$d;->cB()I

    move-result v0

    iget-object v1, p0, Lnbisdk/lt;->lh:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v1

    sub-int/2addr v0, v1

    shl-int v0, v4, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    iget-object v2, p0, Lnbisdk/lt;->lh:Lnbisdk/au;

    invoke-virtual {v2}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v2

    iget-object v3, p0, Lnbisdk/lt;->lh:Lnbisdk/au;

    invoke-virtual {v3}, Lnbisdk/au$d;->cA()I

    move-result v3

    sub-int/2addr v2, v3

    shl-int v2, v4, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iput p1, p0, Lnbisdk/lt;->rp:F

    return v4

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public final jw()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/lt;->ro:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lnbisdk/lt;->rp:F

    return-void
.end method
