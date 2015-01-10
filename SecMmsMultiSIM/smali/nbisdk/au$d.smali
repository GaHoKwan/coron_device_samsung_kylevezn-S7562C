.class public abstract Lnbisdk/au$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field private dP:Z

.field private dQ:I

.field private gm:Lcom/nbi/common/NBIContext;

.field private mName:Ljava/lang/String;

.field private qQ:Lnbisdk/au$d;

.field private qR:Lnbisdk/cf;

.field private qS:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/au$d;->gm:Lcom/nbi/common/NBIContext;

    iput-object p2, p0, Lnbisdk/au$d;->mName:Ljava/lang/String;

    iput-object p3, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {p4}, Lnbisdk/cf;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/au$d;->qS:Z

    invoke-virtual {p4}, Lnbisdk/cf;->cz()I

    move-result v0

    iput v0, p0, Lnbisdk/au$d;->dQ:I

    invoke-virtual {p4}, Lnbisdk/cf;->cy()Z

    move-result v0

    iput-boolean v0, p0, Lnbisdk/au$d;->dP:Z

    iput-object p4, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    return-void
.end method

.method public static aK(I)F
    .locals 4

    const-wide/high16 v0, 0x4000

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static d(F)I
    .locals 4

    float-to-double v0, p0

    invoke-static {v0, v1}, Lnbisdk/au;->u(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    double-to-int v0, v0

    return v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/au$d;->dP:Z

    return-void
.end method

.method public G(Z)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->G(Z)V

    return-void
.end method

.method public H(Z)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->H(Z)V

    :cond_0
    return-void
.end method

.method public a(DDIZZ)V
    .locals 8

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lnbisdk/au$d;->a(DDIZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/cf;->setCenter(DD)V

    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0, p5}, Lnbisdk/cf;->n(I)V

    goto :goto_0
.end method

.method public a(DDZZ)V
    .locals 7

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au$d;->a(DDZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/cf;->setCenter(DD)V

    goto :goto_0
.end method

.method public a(IIZZ)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/au$d;->a(IIZZ)V

    :cond_0
    return-void
.end method

.method public a(IZZII)V
    .locals 6

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnbisdk/au$d;->a(IZZII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0, p1}, Lnbisdk/cf;->n(I)V

    goto :goto_0
.end method

.method public abstract a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
.end method

.method public a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1, p2}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lnbisdk/ip;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lnbisdk/lv;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lnbisdk/mc;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lnbisdk/mn;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lnbisdk/po;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lnbisdk/vk;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aL(I)V
    .locals 0

    iput p1, p0, Lnbisdk/au$d;->dQ:I

    return-void
.end method

.method public aM(I)I
    .locals 2

    invoke-virtual {p0}, Lnbisdk/au$d;->jr()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lnbisdk/vk;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(IZZ)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1, p2, p3}, Lnbisdk/au$d;->c(IZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0, p1}, Lnbisdk/cf;->n(I)V

    goto :goto_0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cA()I
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->cA()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->cA()I

    move-result v0

    goto :goto_0
.end method

.method public cB()I
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->cB()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->cB()I

    move-result v0

    goto :goto_0
.end method

.method public cC()D
    .locals 2

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->cC()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->cC()D

    move-result-wide v0

    goto :goto_0
.end method

.method public cD()D
    .locals 2

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->cD()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->cD()D

    move-result-wide v0

    goto :goto_0
.end method

.method public cE()I
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->cE()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->cE()I

    move-result v0

    goto :goto_0
.end method

.method public cG()Z
    .locals 2

    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->cG()Z

    move-result v0

    iget-object v1, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->cG()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public cH()Z
    .locals 2

    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->cH()Z

    move-result v0

    iget-object v1, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->cH()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public cP()V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->cP()V

    :cond_0
    return-void
.end method

.method public cy()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/au$d;->dP:Z

    return v0
.end method

.method public cz()I
    .locals 1

    iget v0, p0, Lnbisdk/au$d;->dQ:I

    return v0
.end method

.method public d(Lcom/nbi/map/data/Rectangle;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->d(Lcom/nbi/map/data/Rectangle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0, p1}, Lnbisdk/cf;->b(Lcom/nbi/map/data/Rectangle;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    iput-object v0, p0, Lnbisdk/au$d;->gm:Lcom/nbi/common/NBIContext;

    iput-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    return-void
.end method

.method protected dx()V
    .locals 0

    return-void
.end method

.method public dy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(ZZ)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1, p2}, Lnbisdk/au$d;->e(ZZ)V

    :cond_0
    return-void
.end method

.method public fX()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->g(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0, p1}, Lnbisdk/cf;->g(Z)V

    goto :goto_0
.end method

.method public gH()Lnbisdk/cc;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->gH()Lnbisdk/cc;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCenter()Lcom/nbi/map/data/Coordinates;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->getView()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->getZoomLevel()I

    move-result v0

    goto :goto_0
.end method

.method public h(Z)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->h(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0, p1}, Lnbisdk/cf;->h(Z)V

    goto :goto_0
.end method

.method protected ig()Lnbisdk/mt;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->gm:Lcom/nbi/common/NBIContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->isAnimating()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/au$d;->qS:Z

    return v0
.end method

.method public jf()Lcom/nbi/common/NBIContext;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->gm:Lcom/nbi/common/NBIContext;

    return-object v0
.end method

.method public jg()Lnbisdk/au$d;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    return-object v0
.end method

.method public jh()Lcom/nbi/map/data/Rectangle;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->cF()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    goto :goto_0
.end method

.method public ji()Lnbisdk/gp;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected jj()Lnbisdk/cf;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    return-object v0
.end method

.method protected jk()Lnbisdk/uu;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jl()V
    .locals 0

    return-void
.end method

.method public jm()I
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->jm()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->cF()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public jn()I
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->jn()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0}, Lnbisdk/cf;->cF()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public jo()Lnbisdk/cj;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jp()Lnbisdk/lt;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->jp()Lnbisdk/lt;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jq()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->jq()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public jr()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->gm:Lcom/nbi/common/NBIContext;

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public o(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->o(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0, p1}, Lnbisdk/cf;->o(I)V

    goto :goto_0
.end method

.method protected o(Z)V
    .locals 0

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->p(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0, p1}, Lnbisdk/cf;->p(I)V

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnbisdk/au$d;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1, p2, p3}, Lnbisdk/au$d;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public q(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$d;->qQ:Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->q(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au$d;->qR:Lnbisdk/cf;

    invoke-virtual {v0, p1}, Lnbisdk/cf;->q(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lnbisdk/au$d;->qS:Z

    return-void
.end method
