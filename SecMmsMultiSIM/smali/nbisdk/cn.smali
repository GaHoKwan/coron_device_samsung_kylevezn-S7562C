.class public final Lnbisdk/cn;
.super Lnbisdk/au$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/cn$a;
    }
.end annotation


# instance fields
.field private eA:Z

.field private final eB:Lnbisdk/ud;

.field private en:I

.field private eo:Lnbisdk/im;

.field private ep:Landroid/view/MotionEvent;

.field private eq:D

.field private er:Z

.field private es:F

.field private et:F

.field private eu:Z

.field private final ev:I

.field private ew:D

.field private ex:Z

.field private ey:Z

.field private ez:Z


# direct methods
.method protected constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V
    .locals 6

    const/4 v5, 0x0

    const-wide v3, 0x4076800000000000L

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lnbisdk/au$d;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V

    const/16 v0, 0x32

    iput v0, p0, Lnbisdk/cn;->en:I

    new-instance v0, Lcom/nbi/map/data/Coordinates;

    invoke-direct {v0, v3, v4, v3, v4}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    const-wide v0, 0x3fa999999999999aL

    iput-wide v0, p0, Lnbisdk/cn;->eq:D

    iput-boolean v2, p0, Lnbisdk/cn;->er:Z

    iput v5, p0, Lnbisdk/cn;->es:F

    iput v5, p0, Lnbisdk/cn;->et:F

    iput-boolean v2, p0, Lnbisdk/cn;->eu:Z

    iput-boolean v2, p0, Lnbisdk/cn;->ex:Z

    iput-boolean v2, p0, Lnbisdk/cn;->ez:Z

    iput-boolean v2, p0, Lnbisdk/cn;->eA:Z

    new-instance v0, Lnbisdk/ud;

    new-instance v1, Lnbisdk/mw;

    invoke-direct {v1, p0}, Lnbisdk/mw;-><init>(Lnbisdk/cn;)V

    invoke-direct {v0, v1}, Lnbisdk/ud;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnbisdk/cn;->eB:Lnbisdk/ud;

    :try_start_0
    invoke-static {}, Lnbisdk/ax;->aX()Lnbisdk/im;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/cn;->eo:Lnbisdk/im;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lnbisdk/cn;->ev:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lnbisdk/cn;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnbisdk/cn;->eu:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lnbisdk/cn;->ey:Z

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lnbisdk/au$d;->cA()I

    move-result v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2, v2}, Lnbisdk/au$d;->c(IZZ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lnbisdk/cn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnbisdk/cn;->eu:Z

    return p1
.end method

.method static synthetic b(Lnbisdk/cn;)V
    .locals 0

    invoke-super {p0}, Lnbisdk/au$d;->cP()V

    return-void
.end method

.method private cO()V
    .locals 2

    invoke-virtual {p0}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/cj;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnbisdk/cj;->cO()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lnbisdk/ip;)Z
    .locals 7

    const/4 v4, 0x0

    const/high16 v6, 0x40a0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lnbisdk/ip;->id()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v3

    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lnbisdk/cj;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-boolean v3, p0, Lnbisdk/cn;->ez:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    if-eqz v3, :cond_4

    iget v3, p0, Lnbisdk/cn;->es:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lnbisdk/cn;->et:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lnbisdk/cn;->cO()V

    :cond_3
    iget-object v3, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4, v0, v1}, Lnbisdk/au$d;->a(IIZZ)V

    :cond_4
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    move v0, v1

    goto :goto_0

    :pswitch_1
    iput-boolean v0, p0, Lnbisdk/cn;->ey:Z

    iput-boolean v0, p0, Lnbisdk/cn;->ez:Z

    iget-object v3, p0, Lnbisdk/cn;->eB:Lnbisdk/ud;

    invoke-virtual {v3, v1}, Lnbisdk/ud;->bn(I)V

    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lnbisdk/au$d;->g(Z)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lnbisdk/cn;->es:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lnbisdk/cn;->et:F

    invoke-virtual {p0}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/cj;->eW()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lnbisdk/cj;->v(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lnbisdk/cn;->eB:Lnbisdk/ud;

    invoke-virtual {v2, v1}, Lnbisdk/ud;->bo(I)V

    invoke-virtual {p0, v0}, Lnbisdk/au$d;->g(Z)V

    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lnbisdk/cn;->cP()V

    :cond_5
    iput-object v4, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    iget-object v2, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    if-eqz v2, :cond_6

    :goto_1
    invoke-virtual {p0, p0, v4}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lnbisdk/mc;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lnbisdk/mc;->id()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lnbisdk/cn;->en:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lnbisdk/cn;->en:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v1, v1

    float-to-int v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lnbisdk/au$d;->a(IIZZ)V

    return v3
.end method

.method public final a(Lnbisdk/mn;)Z
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lnbisdk/mn;->ka()Landroid/view/KeyEvent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual {p1}, Lnbisdk/mn;->getEventType()I

    move-result v9

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    invoke-virtual {p0}, Lnbisdk/au$d;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    new-array v5, v12, [I

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->a(DD[I)V

    new-instance v1, Lcom/nbi/map/data/Point;

    aget v2, v5, v11

    aget v3, v5, v6

    invoke-direct {v1, v2, v3}, Lcom/nbi/map/data/Point;-><init>(II)V

    if-eq v9, v6, :cond_0

    const/4 v2, 0x3

    if-ne v9, v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v2

    iget-wide v3, p0, Lnbisdk/cn;->eq:D

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v5

    int-to-double v9, v5

    mul-double/2addr v9, v3

    double-to-int v5, v9

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v2

    int-to-double v9, v2

    mul-double v2, v9, v3

    double-to-int v2, v2

    packed-switch v8, :pswitch_data_0

    :goto_0
    new-array v3, v12, [D

    invoke-virtual {v1}, Lcom/nbi/map/data/Point;->getX()I

    move-result v2

    invoke-virtual {v1}, Lcom/nbi/map/data/Point;->getY()I

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Lnbisdk/gp;->a(II[D)V

    aget-wide v1, v3, v11

    aget-wide v3, v3, v6

    move-object v0, p0

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au$d;->a(DDZZ)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    iget-boolean v0, p0, Lnbisdk/cn;->er:Z

    if-nez v0, :cond_1

    iput-boolean v6, p0, Lnbisdk/cn;->er:Z

    iget-object v0, p0, Lnbisdk/cn;->eo:Lnbisdk/im;

    invoke-virtual {v0, v7}, Lnbisdk/im;->a(Landroid/view/KeyEvent;)V

    :cond_1
    :goto_1
    return v6

    :pswitch_0
    invoke-virtual {v1}, Lcom/nbi/map/data/Point;->getX()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/nbi/map/data/Point;->setX(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Lcom/nbi/map/data/Point;->getX()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/nbi/map/data/Point;->setX(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lcom/nbi/map/data/Point;->getY()I

    move-result v3

    sub-int v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/nbi/map/data/Point;->setY(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Lcom/nbi/map/data/Point;->getY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/nbi/map/data/Point;->setY(I)V

    goto :goto_0

    :cond_2
    if-ne v9, v12, :cond_1

    iput-boolean v11, p0, Lnbisdk/cn;->er:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lnbisdk/po;)Z
    .locals 11

    invoke-virtual {p1}, Lnbisdk/po;->lx()Lnbisdk/fp;

    move-result-object v1

    invoke-virtual {p1}, Lnbisdk/po;->ly()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/cn;->ez:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/cn;->ex:Z

    invoke-virtual {v1}, Lnbisdk/fp;->getCurrentSpan()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lnbisdk/cn;->ew:D

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v3

    iget-boolean v4, p0, Lnbisdk/cn;->ex:Z

    invoke-virtual {v1}, Lnbisdk/fp;->getCurrentSpan()F

    move-result v0

    float-to-double v5, v0

    iget-wide v7, p0, Lnbisdk/cn;->ew:D

    const-wide/16 v9, 0x0

    cmpl-double v0, v5, v9

    if-eqz v0, :cond_4

    const-wide/16 v9, 0x0

    cmpl-double v0, v7, v9

    if-eqz v0, :cond_4

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget v0, p0, Lnbisdk/cn;->ev:I

    int-to-double v7, v0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v0, v4

    iput-boolean v0, p0, Lnbisdk/cn;->ex:Z

    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnbisdk/cn;->ex:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnbisdk/au$d;->g(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnbisdk/au$d;->h(Z)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jp()Lnbisdk/lt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnbisdk/lt;->d(Lnbisdk/fp;)V

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lnbisdk/cn;->eu:Z

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lnbisdk/fp;->getCurrentSpan()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lnbisdk/fp;->getCurrentSpan()F

    move-result v0

    invoke-virtual {v1}, Lnbisdk/fp;->getPreviousSpan()F

    move-result v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnbisdk/au$d;->jp()Lnbisdk/lt;

    move-result-object v3

    invoke-virtual {v1}, Lnbisdk/fp;->getCurrentSpan()F

    move-result v0

    const/high16 v1, 0x4120

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    iget v1, v3, Lnbisdk/lt;->rn:F

    div-float/2addr v0, v1

    invoke-virtual {v3, v0}, Lnbisdk/lt;->e(F)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnbisdk/cn;->eA:Z

    if-nez v0, :cond_2

    iget v0, v3, Lnbisdk/lt;->rp:F

    invoke-static {v0}, Lnbisdk/au$d;->d(F)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->ez()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/cn;->eA:Z

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    :cond_3
    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/cn;->cP()V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    iget-boolean v0, p0, Lnbisdk/cn;->ex:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/cn;->eB:Lnbisdk/ud;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnbisdk/ud;->bn(I)V

    iget-object v0, p0, Lnbisdk/cn;->eB:Lnbisdk/ud;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnbisdk/ud;->bo(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lnbisdk/vk;)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lnbisdk/vk;->ka()Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    sparse-switch v3, :sswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lnbisdk/au$d;->cA()I

    move-result v2

    if-le v0, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lnbisdk/au$d;->c(IZZ)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    :cond_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lnbisdk/au$d;->cB()I

    move-result v2

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lnbisdk/au$d;->c(IZZ)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0}, Lnbisdk/au;->eC()I

    move-result v3

    invoke-virtual {v0, v3}, Lnbisdk/au;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v4

    if-nez v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lnbisdk/au;->getPrevPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v2

    if-eq v2, v5, :cond_3

    invoke-virtual {v0, v2, v1}, Lnbisdk/au;->a(IZ)Z

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0}, Lnbisdk/au;->eC()I

    move-result v3

    invoke-virtual {v0, v3}, Lnbisdk/au;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v4

    if-nez v4, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lnbisdk/au;->getNextPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v2

    if-eq v2, v5, :cond_5

    invoke-virtual {v0, v2, v1}, Lnbisdk/au;->a(IZ)Z

    :cond_5
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_2
        0x33 -> :sswitch_3
        0x70 -> :sswitch_1
        0x71 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cP()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lnbisdk/cn;->eu:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jp()Lnbisdk/lt;

    move-result-object v0

    iget v1, v0, Lnbisdk/lt;->rp:F

    invoke-static {v1}, Lnbisdk/au$d;->d(F)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v4}, Lnbisdk/au$d;->h(Z)V

    invoke-virtual {v0}, Lnbisdk/lt;->jw()V

    :goto_0
    iput-boolean v4, p0, Lnbisdk/cn;->eA:Z

    :cond_0
    return-void

    :cond_1
    invoke-static {v2}, Lnbisdk/au$d;->aK(I)F

    move-result v0

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v2

    new-instance v3, Lnbisdk/cn$a;

    invoke-direct {v3, p0, v1}, Lnbisdk/cn$a;-><init>(Lnbisdk/cn;F)V

    invoke-virtual {v2, v0, v3}, Lnbisdk/cj;->a(FLnbisdk/ho;)V

    goto :goto_0
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lnbisdk/cn;->eu:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lnbisdk/cn;->ey:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v5

    iget-object v0, p0, Lnbisdk/cn;->eo:Lnbisdk/im;

    invoke-virtual {v0, p1}, Lnbisdk/im;->d(Landroid/view/MotionEvent;)I

    move-result v6

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    if-le v6, v2, :cond_1

    invoke-virtual {p0}, Lnbisdk/au$d;->cA()I

    move-result v7

    if-le v4, v7, :cond_5

    add-int/lit8 v3, v4, -0x1

    move v4, v2

    :goto_0
    if-eqz v4, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [D

    if-ne v6, v2, :cond_2

    :goto_1
    invoke-virtual {v5, v1, v0, v4}, Lnbisdk/gp;->a(II[D)V

    invoke-virtual {p0, v3, v2, v2}, Lnbisdk/au$d;->c(IZZ)V

    :cond_0
    :goto_2
    return v2

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->cB()I

    move-result v7

    if-ge v4, v7, :cond_5

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lnbisdk/au$d;->a(IZZII)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lnbisdk/au$d;->gH()Lnbisdk/cc;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cc;->ck()I

    move-result v1

    invoke-virtual {p0}, Lnbisdk/au$d;->gH()Lnbisdk/cc;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cc;->cl()I

    move-result v0

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v0, 0x0

    const/high16 v2, 0x43fa

    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lnbisdk/cn;->eu:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lnbisdk/cn;->cO()V

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lnbisdk/au;->a(FF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/cn;->ep:Landroid/view/MotionEvent;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
