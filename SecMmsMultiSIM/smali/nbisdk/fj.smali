.class public final Lnbisdk/fj;
.super Landroid/view/animation/Animation;


# instance fields
.field private ja:Lnbisdk/ho;

.field private jb:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/high16 v0, 0x4348

    iput v0, p0, Lnbisdk/fj;->jb:F

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ho;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/fj;->ja:Lnbisdk/ho;

    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/fj;->ja:Lnbisdk/ho;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fj;->ja:Lnbisdk/ho;

    iget v1, p0, Lnbisdk/fj;->jb:F

    mul-float/2addr v1, p1

    float-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lnbisdk/ho;->j(D)V

    :cond_0
    return-void
.end method

.method public final c(F)V
    .locals 0

    iput p1, p0, Lnbisdk/fj;->jb:F

    return-void
.end method

.method public final initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
