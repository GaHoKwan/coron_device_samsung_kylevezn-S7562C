.class public final Lnbisdk/dq;
.super Landroid/view/animation/Animation;


# instance fields
.field private gG:Lnbisdk/au$d;

.field wn:F

.field wo:F

.field wp:F

.field private wq:J

.field wr:J

.field ws:I

.field wt:F

.field private wu:[F

.field private wv:F

.field private ww:Lcom/nbi/map/data/Rectangle;

.field private wx:Lcom/nbi/map/data/Rectangle;

.field private wy:Lcom/nbi/map/data/Rectangle;

.field private wz:Lcom/nbi/map/data/Rectangle;


# direct methods
.method public constructor <init>(Lnbisdk/au$d;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lnbisdk/dq;->wu:[F

    iput-object p1, p0, Lnbisdk/dq;->gG:Lnbisdk/au$d;

    invoke-virtual {p1}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v0

    new-instance v2, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v2}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v2, p0, Lnbisdk/dq;->ww:Lcom/nbi/map/data/Rectangle;

    iget-object v2, p0, Lnbisdk/dq;->ww:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/nbi/map/data/Rectangle;->set(IIII)V

    new-instance v2, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v2}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v2, p0, Lnbisdk/dq;->wy:Lcom/nbi/map/data/Rectangle;

    iget-object v2, p0, Lnbisdk/dq;->wy:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/nbi/map/data/Rectangle;->set(IIII)V

    new-instance v2, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v2}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v2, p0, Lnbisdk/dq;->wz:Lcom/nbi/map/data/Rectangle;

    iget-object v2, p0, Lnbisdk/dq;->wz:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/nbi/map/data/Rectangle;->set(IIII)V

    new-instance v2, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v2}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v2, p0, Lnbisdk/dq;->wx:Lcom/nbi/map/data/Rectangle;

    iget-object v2, p0, Lnbisdk/dq;->wx:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/nbi/map/data/Rectangle;->set(IIII)V

    invoke-virtual {p0}, Lnbisdk/dq;->mi()V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lnbisdk/dq;->ws:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lnbisdk/dq;->ws:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lnbisdk/dq;->wn:F

    iget v2, p0, Lnbisdk/dq;->wp:F

    iget v3, p0, Lnbisdk/dq;->wn:F

    sub-float/2addr v2, v3

    iget v3, p0, Lnbisdk/dq;->wt:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lnbisdk/dq;->wo:F

    iget v1, p0, Lnbisdk/dq;->wo:F

    iput v1, p0, Lnbisdk/dq;->wv:F

    iget-object v1, p0, Lnbisdk/dq;->wu:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lnbisdk/dq;->gG:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const-string v0, "ZoomAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom(iterpolatedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentWeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnbisdk/dq;->wo:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final cO()V
    .locals 1

    invoke-super {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    :cond_0
    return-void
.end method

.method public final initialize(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/dq;->wt:F

    new-instance v0, Lnbisdk/dq$1;

    invoke-direct {v0, p0}, Lnbisdk/dq$1;-><init>(Lnbisdk/dq;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public final mh()F
    .locals 1

    iget v0, p0, Lnbisdk/dq;->wv:F

    return v0
.end method

.method public final mi()V
    .locals 3

    const/4 v2, 0x1

    const/high16 v0, 0x3f80

    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    iput v0, p0, Lnbisdk/dq;->wn:F

    iput v0, p0, Lnbisdk/dq;->wo:F

    iput v0, p0, Lnbisdk/dq;->wp:F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lnbisdk/dq;->wq:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lnbisdk/dq;->wr:J

    iput v2, p0, Lnbisdk/dq;->ws:I

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/dq;->wt:F

    iget-wide v0, p0, Lnbisdk/dq;->wq:J

    invoke-virtual {p0, v0, v1}, Lnbisdk/dq;->setDuration(J)V

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    return-void
.end method

.method public final setDuration(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    iput-wide p1, p0, Lnbisdk/dq;->wq:J

    return-void
.end method
