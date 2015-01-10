.class public final Lnbisdk/vf;
.super Landroid/view/animation/Animation;


# instance fields
.field private Bx:D

.field private By:Lnbisdk/ho;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ho;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/vf;->By:Lnbisdk/ho;

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    float-to-double v0, p1

    iget-wide v2, p0, Lnbisdk/vf;->Bx:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lnbisdk/vf;->By:Lnbisdk/ho;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnbisdk/vf;->By:Lnbisdk/ho;

    invoke-interface {v2, v0, v1}, Lnbisdk/ho;->j(D)V

    :cond_0
    return-void
.end method

.method public final initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Lnbisdk/vf$1;

    invoke-direct {v0, p0}, Lnbisdk/vf$1;-><init>(Lnbisdk/vf;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public final y(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/vf;->Bx:D

    return-void
.end method
