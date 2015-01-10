.class public final Lnbisdk/au;
.super Lnbisdk/ct;


# static fields
.field private static eb:Landroid/os/Handler;

.field private static final rJ:D


# instance fields
.field private hg:Landroid/view/View;

.field private jL:Z

.field private rK:Lnbisdk/pj;

.field private rL:Lnbisdk/hu;

.field private rM:Lnbisdk/hu;

.field private rN:Lnbisdk/cc;

.field private rO:Lnbisdk/cc;

.field private rP:Lnbisdk/mt;

.field private rQ:Lnbisdk/uu;

.field private rR:Lnbisdk/k;

.field private rS:Lnbisdk/ct;

.field private rT:Landroid/graphics/Bitmap;

.field private rU:Lnbisdk/cj;

.field private rV:Lnbisdk/au$d;

.field private rW:I

.field private rX:Z

.field private rY:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/fw$a;",
            ">;"
        }
    .end annotation
.end field

.field private rZ:Lnbisdk/lt;

.field private sa:Lnbisdk/au$b;

.field private sb:Lnbisdk/au$c;

.field private sc:Landroid/graphics/BitmapFactory$Options;

.field private sd:Landroid/graphics/Bitmap$Config;

.field private se:Landroid/telephony/PhoneStateListener;

.field private sf:Lcom/nbi/map/data/Coordinates;

.field private sg:Lnbisdk/ct;

.field private sh:Lnbisdk/fy;

.field private si:Lnbisdk/au$a;

.field private sj:Lnbisdk/dr;

.field private sk:Z

.field private sl:Ljava/lang/Runnable;

.field private sm:I

.field private sn:I

.field private so:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lnbisdk/au;->rJ:D

    return-void
.end method

.method private constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/uu;Lnbisdk/ij;Landroid/view/View;Z)V
    .locals 9

    const-wide/32 v2, 0xea60

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v7, p4}, Lnbisdk/ct;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V

    iput-object v7, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    iput-boolean v5, p0, Lnbisdk/au;->rX:Z

    iput-object v7, p0, Lnbisdk/au;->sc:Landroid/graphics/BitmapFactory$Options;

    iput-object v7, p0, Lnbisdk/au;->sd:Landroid/graphics/Bitmap$Config;

    iput-object v7, p0, Lnbisdk/au;->sf:Lcom/nbi/map/data/Coordinates;

    iput-boolean v5, p0, Lnbisdk/au;->jL:Z

    iput-boolean v5, p0, Lnbisdk/au;->sk:Z

    new-instance v0, Lnbisdk/il;

    invoke-direct {v0, p0}, Lnbisdk/il;-><init>(Lnbisdk/au;)V

    iput-object v0, p0, Lnbisdk/au;->sl:Ljava/lang/Runnable;

    iput v5, p0, Lnbisdk/au;->sm:I

    iput v5, p0, Lnbisdk/au;->sn:I

    iput v5, p0, Lnbisdk/au;->so:I

    if-eqz p6, :cond_0

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lnbisdk/au$d;->q(I)V

    iput-boolean v6, p0, Lnbisdk/au;->jL:Z

    :cond_0
    iput-object p0, p0, Lnbisdk/au;->rS:Lnbisdk/ct;

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v1, v0}, Lnbisdk/cy;->a(Lnbisdk/bt;)V

    iput v5, p0, Lnbisdk/au;->rW:I

    iput-object p5, p0, Lnbisdk/au;->hg:Landroid/view/View;

    iput-object p3, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    new-instance v0, Lnbisdk/pj;

    invoke-direct {v0, p0}, Lnbisdk/pj;-><init>(Lnbisdk/au;)V

    iput-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    new-instance v0, Lnbisdk/cc;

    invoke-direct {v0, p1, p0}, Lnbisdk/cc;-><init>(Lcom/nbi/common/NBIContext;Lnbisdk/au;)V

    iput-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    new-instance v0, Lnbisdk/cc;

    invoke-direct {v0, p1, p0}, Lnbisdk/cc;-><init>(Lcom/nbi/common/NBIContext;Lnbisdk/au;)V

    iput-object v0, p0, Lnbisdk/au;->rO:Lnbisdk/cc;

    iget-object v0, p0, Lnbisdk/au;->rO:Lnbisdk/cc;

    invoke-virtual {v0, v6}, Lnbisdk/cc;->m(I)V

    new-instance v0, Lnbisdk/mt;

    invoke-direct {v0, p1}, Lnbisdk/mt;-><init>(Lcom/nbi/common/NBIContext;)V

    iput-object v0, p0, Lnbisdk/au;->rP:Lnbisdk/mt;

    iget-object v0, p0, Lnbisdk/au;->rP:Lnbisdk/mt;

    const-string v1, "tilePlaceholder.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    new-instance v0, Lnbisdk/cj;

    invoke-direct {v0, p0, p5}, Lnbisdk/cj;-><init>(Lnbisdk/au;Landroid/view/View;)V

    iput-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    new-instance v0, Lnbisdk/au$b;

    invoke-direct {v0, p0}, Lnbisdk/au$b;-><init>(Lnbisdk/au;)V

    iput-object v0, p0, Lnbisdk/au;->sa:Lnbisdk/au$b;

    new-instance v0, Lnbisdk/au$c;

    invoke-direct {v0, p0}, Lnbisdk/au$c;-><init>(Lnbisdk/au;)V

    iput-object v0, p0, Lnbisdk/au;->sb:Lnbisdk/au$c;

    new-instance v0, Lnbisdk/lt;

    invoke-direct {v0, p0}, Lnbisdk/lt;-><init>(Lnbisdk/au;)V

    iput-object v0, p0, Lnbisdk/au;->rZ:Lnbisdk/lt;

    new-instance v0, Lnbisdk/hu;

    invoke-direct {v0}, Lnbisdk/hu;-><init>()V

    iput-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    new-instance v0, Lnbisdk/hu;

    invoke-direct {v0}, Lnbisdk/hu;-><init>()V

    iput-object v0, p0, Lnbisdk/au;->rM:Lnbisdk/hu;

    const-string v0, "NBI_ROUTE_LAYER"

    invoke-static {p1, v0, p0, p4}, Lnbisdk/au$a;->b(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)Lnbisdk/ve;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1, v0}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    iget-object v1, p0, Lnbisdk/au;->rM:Lnbisdk/hu;

    invoke-virtual {v1, v0}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    const-string v1, "NBI_TRAFFIC_LAYER"

    new-instance v4, Lnbisdk/ct;

    invoke-virtual {p4}, Lnbisdk/ij;->cx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-direct {v4, p1, v1, p0, v0}, Lnbisdk/ct;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V

    const/16 v0, 0x3e8

    invoke-virtual {v4, v0}, Lnbisdk/au$d;->aL(I)V

    invoke-virtual {v4, v5}, Lnbisdk/au$d;->setVisible(Z)V

    const-string v0, "png"

    invoke-virtual {v4, v0}, Lnbisdk/ct;->G(Ljava/lang/String;)V

    const-string v0, "192"

    invoke-virtual {v4, v0}, Lnbisdk/ct;->H(Ljava/lang/String;)V

    const-string v0, "traffic"

    invoke-virtual {v4, v0}, Lnbisdk/ct;->F(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lnbisdk/au$d;->F(Z)V

    invoke-virtual {v4, v5}, Lnbisdk/ct;->l(Z)V

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0, v4}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    iget-object v0, p0, Lnbisdk/au;->rM:Lnbisdk/hu;

    invoke-virtual {v0, v4}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    const v0, 0x493e0

    invoke-virtual {v4, v0}, Lnbisdk/ct;->x(I)V

    const-string v1, "NBI_MAP_LAYER"

    new-instance v4, Lnbisdk/ct;

    invoke-virtual {p4}, Lnbisdk/ij;->cx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-direct {v4, p1, v1, p0, v0}, Lnbisdk/ct;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V

    invoke-virtual {v4, v6}, Lnbisdk/au$d;->aL(I)V

    invoke-virtual {v4, v6}, Lnbisdk/au$d;->setVisible(Z)V

    const-string v0, "png"

    invoke-virtual {v4, v0}, Lnbisdk/ct;->G(Ljava/lang/String;)V

    const-string v0, "192"

    invoke-virtual {v4, v0}, Lnbisdk/ct;->H(Ljava/lang/String;)V

    const-string v0, "base_map"

    invoke-virtual {v4, v0}, Lnbisdk/ct;->F(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lnbisdk/au$d;->F(Z)V

    invoke-virtual {v4, v6}, Lnbisdk/ct;->l(Z)V

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0, v4}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    iget-object v0, p0, Lnbisdk/au;->rM:Lnbisdk/hu;

    invoke-virtual {v0, v4}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    invoke-direct {p0}, Lnbisdk/au;->jE()V

    const-string v0, "NBI_PIN_LAYER_MANAGER"

    invoke-static {p1, v0, p0, p4}, Lnbisdk/au$a;->c(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)Lnbisdk/dr;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    iget-object v1, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, v1}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    const-string v1, "INTERACTIVE_LAYER_NAME"

    invoke-static {p1, v1, p0, p4}, Lnbisdk/au$a;->a(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)Lnbisdk/cn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0, p0}, Lnbisdk/gp;->b(Lnbisdk/au;)V

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cy;->dI()Lnbisdk/qk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v5}, Lnbisdk/au;->a(Lnbisdk/qk;Z)V

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au;->jl()V

    iget-object v0, p0, Lnbisdk/au;->hg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lnbisdk/au;->hg:Landroid/view/View;

    new-instance v1, Lnbisdk/au$2;

    invoke-direct {v1, p0}, Lnbisdk/au$2;-><init>(Lnbisdk/au;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnbisdk/au$1;

    invoke-direct {v1, p0}, Lnbisdk/au$1;-><init>(Lnbisdk/au;)V

    iput-object v1, p0, Lnbisdk/au;->se:Landroid/telephony/PhoneStateListener;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lnbisdk/au;->se:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lnbisdk/au$a;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lnbisdk/au$a;-><init>(Lnbisdk/au;JJ)V

    iput-object v0, p0, Lnbisdk/au;->si:Lnbisdk/au$a;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/nbi/map/android/MapConfiguration;Lnbisdk/uu;Landroid/view/View;Landroid/os/Handler;Lcom/nbi/map/data/Rectangle;)Lnbisdk/au;
    .locals 7

    sput-object p3, Lnbisdk/au;->eb:Landroid/os/Handler;

    new-instance v4, Lnbisdk/ij;

    invoke-direct {v4}, Lnbisdk/ij;-><init>()V

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getForce256Enabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getMinimumZoomLevel()I

    move-result v0

    invoke-virtual {v4, v0}, Lnbisdk/cf;->o(I)V

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getMaximumZoomLevel()I

    move-result v0

    invoke-virtual {v4, v0}, Lnbisdk/cf;->p(I)V

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getZoom()I

    move-result v0

    invoke-virtual {v4, v0}, Lnbisdk/cf;->n(I)V

    const/16 v0, 0x100

    invoke-virtual {v4, v0}, Lnbisdk/cf;->q(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nbi/map/data/Coordinates;

    const-wide v1, 0x4043e9fd8adab9f5L

    const-wide v5, -0x3fa75ae9f6a93f29L

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    :cond_0
    invoke-virtual {v4, v0}, Lnbisdk/cf;->setCenter(Lcom/nbi/map/data/Coordinates;)V

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cy;->cE()I

    move-result v0

    invoke-virtual {v4, v0}, Lnbisdk/cf;->q(I)V

    invoke-virtual {v4, p4}, Lnbisdk/cf;->b(Lcom/nbi/map/data/Rectangle;)V

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getZoomButtons()Z

    move-result v0

    invoke-virtual {v4, v0}, Lnbisdk/ij;->setZoomButtons(Z)V

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getTrafficButton()Z

    move-result v0

    invoke-virtual {v4, v0}, Lnbisdk/ij;->setTrafficButton(Z)V

    const-string v0, "screenRectangle"

    invoke-virtual {p4}, Lcom/nbi/map/data/Rectangle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v0, Lnbisdk/au;

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getNBIContext()Lcom/nbi/common/NBIContext;

    move-result-object v1

    const-string v2, "TileMapControl"

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getForce256Enabled()Z

    move-result v6

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lnbisdk/au;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/uu;Lnbisdk/ij;Landroid/view/View;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getMinimumZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/cy;->z(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lnbisdk/cf;->o(I)V

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getMaximumZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/cy;->z(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lnbisdk/cf;->p(I)V

    invoke-virtual {p0}, Lcom/nbi/map/android/MapConfiguration;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/cy;->z(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lnbisdk/cf;->n(I)V

    goto :goto_0
.end method

.method private a(Lnbisdk/au$d;Z)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lnbisdk/au$d;->setVisible(Z)V

    invoke-virtual {p1}, Lnbisdk/au$d;->cy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lnbisdk/au;->jE()V

    :cond_2
    invoke-virtual {p0, p1}, Lnbisdk/au;->i(Lnbisdk/au$d;)V

    instance-of v0, p1, Lnbisdk/ct;

    if-eqz v0, :cond_3

    invoke-direct {p0, v1, v1}, Lnbisdk/au;->g(ZZ)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Lnbisdk/au$d;->o(Z)V

    goto :goto_0
.end method

.method private a(Lnbisdk/ct;IZ)V
    .locals 3

    const-string v1, "png"

    const-string v0, "base_map"

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    const-string v1, "jpg"

    const-string v0, "satellite"

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lnbisdk/ct;->G(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnbisdk/ct;->F(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnbisdk/au;->a(Lnbisdk/au$d;Z)V

    return-void

    :cond_1
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    const-string v1, "jpg"

    const-string v0, "hybrid"

    goto :goto_0
.end method

.method private a(Lnbisdk/qk;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/cy;->c(Lnbisdk/qk;)V

    :cond_0
    iget-boolean v0, p0, Lnbisdk/au;->jL:Z

    if-nez v0, :cond_2

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cy;->cA()I

    move-result v0

    invoke-virtual {p0, v0}, Lnbisdk/au$d;->o(I)V

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cy;->cB()I

    move-result v0

    invoke-virtual {p0, v0}, Lnbisdk/au$d;->p(I)V

    invoke-virtual {p1}, Lnbisdk/qk;->cE()I

    move-result v0

    invoke-virtual {p0, v0}, Lnbisdk/au$d;->q(I)V

    :goto_0
    iget-boolean v0, p0, Lnbisdk/au;->rX:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    invoke-super {p0, v0, v3, v3}, Lnbisdk/au$d;->c(IZZ)V

    :cond_1
    iput-boolean v2, p0, Lnbisdk/au;->rX:Z

    invoke-direct {p0, v2, v2}, Lnbisdk/au;->f(ZZ)V

    return-void

    :cond_2
    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cy;->cA()I

    move-result v0

    invoke-direct {p0}, Lnbisdk/au;->jD()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lnbisdk/au$d;->o(I)V

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cy;->cB()I

    move-result v0

    invoke-direct {p0}, Lnbisdk/au;->jD()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lnbisdk/au$d;->p(I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lnbisdk/au$d;->q(I)V

    goto :goto_0
.end method

.method private a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;ZIZ)Z
    .locals 15

    iget-object v1, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    const/4 v2, 0x1

    new-array v12, v2, [D

    const/4 v2, 0x1

    new-array v13, v2, [D

    const/4 v2, 0x1

    new-array v14, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v10

    invoke-virtual/range {v1 .. v14}, Lnbisdk/gp;->a(IIDDDD[D[D[I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v14, v2

    move/from16 v0, p4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v14, v1

    if-nez p3, :cond_0

    const/4 v1, 0x0

    aget v1, v14, v1

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lnbisdk/au;->jl()V

    :cond_0
    const/4 v1, 0x0

    aget-wide v2, v12, v1

    const/4 v1, 0x0

    aget-wide v4, v13, v1

    const/4 v1, 0x0

    aget v6, v14, v1

    move-object v1, p0

    move/from16 v7, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lnbisdk/au;->a(DDIZZ)V

    const/4 v1, 0x1

    return v1
.end method

.method private aK(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0, p1}, Lnbisdk/hu;->ao(Ljava/lang/String;)Lnbisdk/au$d;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    return v0
.end method

.method private aR(I)V
    .locals 5

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    instance-of v3, v0, Lnbisdk/ct;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lnbisdk/au$d;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v0, Lnbisdk/ct;

    invoke-virtual {v0}, Lnbisdk/au$d;->cy()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lnbisdk/ct;->dm()Lnbisdk/qk;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lnbisdk/qk;->lZ()I

    move-result v4

    if-lt p1, v4, :cond_2

    invoke-virtual {v3}, Lnbisdk/qk;->getMaxZoom()I

    move-result v3

    if-gt p1, v3, :cond_2

    :cond_0
    iput-object v0, p0, Lnbisdk/au;->sg:Lnbisdk/ct;

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b(Lcom/nbi/map/android/MapLayer;)Lnbisdk/ct;
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    instance-of v1, v0, Lnbisdk/ct;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lnbisdk/ct;

    invoke-virtual {v1}, Lnbisdk/ct;->dl()Lcom/nbi/map/android/MapLayer;

    move-result-object v1

    if-ne v1, p1, :cond_1

    check-cast v0, Lnbisdk/ct;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0, p1}, Lnbisdk/hu;->ao(Ljava/lang/String;)Lnbisdk/au$d;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnbisdk/au;->a(Lnbisdk/au$d;Z)V

    return-void
.end method

.method static synthetic c(Lnbisdk/au;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/au;->jG()V

    return-void
.end method

.method static synthetic d(Lnbisdk/au;)Lnbisdk/ct;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rS:Lnbisdk/ct;

    return-object v0
.end method

.method static synthetic e(Lnbisdk/au;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->hg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lnbisdk/au;)Lnbisdk/cj;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    return-object v0
.end method

.method private f(ZZ)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lnbisdk/au;->rW:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->eS()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cv()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0, p0}, Lnbisdk/gp;->b(Lnbisdk/au;)V

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0, v1, p2}, Lnbisdk/cc;->a(ZZ)V

    iget-object v0, p0, Lnbisdk/au;->rO:Lnbisdk/cc;

    invoke-virtual {v0, v1, v1}, Lnbisdk/cc;->a(ZZ)V

    invoke-virtual {p0}, Lnbisdk/au;->dx()V

    invoke-direct {p0, v2, v1}, Lnbisdk/au;->g(ZZ)V

    invoke-virtual {p0, v1}, Lnbisdk/ct;->m(Z)V

    :cond_3
    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->eS()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnbisdk/au;->hg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_4
    invoke-virtual {p0}, Lnbisdk/au$d;->cG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/ct;->ds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lnbisdk/ct;->m(Z)V

    invoke-direct {p0, v2, v1}, Lnbisdk/au;->g(ZZ)V

    goto :goto_0
.end method

.method static synthetic g(Lnbisdk/au;)Lnbisdk/ct;
    .locals 1

    invoke-direct {p0}, Lnbisdk/au;->jN()Lnbisdk/ct;

    move-result-object v0

    return-object v0
.end method

.method private g(ZZ)V
    .locals 4

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->eT()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    if-eqz p2, :cond_1

    instance-of v3, v0, Lnbisdk/ct;

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual {v0}, Lnbisdk/au$d;->cy()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnbisdk/au;->sg:Lnbisdk/ct;

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-virtual {v0, p1}, Lnbisdk/au$d;->o(Z)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnbisdk/au;->sb:Lnbisdk/au$c;

    invoke-virtual {v0}, Lnbisdk/au$c;->jV()V

    goto :goto_0
.end method

.method static synthetic h(Lnbisdk/au;)Lnbisdk/cc;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    return-object v0
.end method

.method static synthetic i(Lnbisdk/au;)Lnbisdk/hu;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    return-object v0
.end method

.method private jD()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lnbisdk/au;->jL:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnbisdk/cy;->y(I)I

    move-result v0

    goto :goto_0
.end method

.method private jE()V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lnbisdk/au;->aR(I)V

    return-void
.end method

.method private jG()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lnbisdk/au;->rW:I

    if-eq v0, v2, :cond_0

    iput v2, p0, Lnbisdk/au;->rW:I

    invoke-direct {p0, v1, v1}, Lnbisdk/au;->f(ZZ)V

    :cond_0
    return-void
.end method

.method private static jL()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg1:I

    sget-object v1, Lnbisdk/au;->eb:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method private jN()Lnbisdk/ct;
    .locals 2

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    const-string v1, "NBI_MAP_LAYER"

    invoke-virtual {v0, v1}, Lnbisdk/hu;->ao(Ljava/lang/String;)Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/ct;

    return-object v0
.end method

.method static synthetic u(D)D
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lnbisdk/au;->rJ:D

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final G(Z)V
    .locals 9

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0}, Lnbisdk/pj;->lj()V

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/cj;->v(Z)V

    iget-object v0, p0, Lnbisdk/au;->sf:Lcom/nbi/map/data/Coordinates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au;->sf:Lcom/nbi/map/data/Coordinates;

    invoke-virtual {v0}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    iget-object v0, p0, Lnbisdk/au;->sf:Lcom/nbi/map/data/Coordinates;

    invoke-virtual {v0}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-super/range {v0 .. v6}, Lnbisdk/au$d;->a(DDZZ)V

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnbisdk/gp;->setCenter(DD)V

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Lnbisdk/au;->f(ZZ)V

    iget-object v0, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v5

    int-to-double v5, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lnbisdk/uu;->a(DDDZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/au;->sf:Lcom/nbi/map/data/Coordinates;

    :cond_0
    invoke-virtual {p0, p1}, Lnbisdk/au;->H(Z)V

    return-void
.end method

.method public final H(Z)V
    .locals 9

    iget-object v0, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    iget-object v1, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v1}, Lnbisdk/gp;->cC()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v3}, Lnbisdk/gp;->cD()D

    move-result-wide v3

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v5

    int-to-double v5, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v0 .. v8}, Lnbisdk/uu;->a(DDDZZ)V

    iget-object v0, p0, Lnbisdk/au;->hg:Landroid/view/View;

    iget-object v1, p0, Lnbisdk/au;->sl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final I(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnbisdk/au;->f(ZZ)V

    return-void
.end method

.method public final J(Z)V
    .locals 2

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/cc;->f(Z)V

    return-void
.end method

.method public final a(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/android/Pin;ZZZ)I
    .locals 3

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/dr;->a(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/android/Pin;ZZ)I

    move-result v0

    if-nez p4, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lnbisdk/au;->f(ZZ)V

    :cond_0
    return v0
.end method

.method public final a(DDIZZ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v4, v0, Lnbisdk/au;->rK:Lnbisdk/pj;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jm()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jn()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v4

    move/from16 v0, p5

    if-eq v4, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->cC()D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->cD()D

    move-result-wide v16

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lnbisdk/au;->rK:Lnbisdk/pj;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lnbisdk/gp;->a(DD)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v4, 0x1

    move v11, v4

    :goto_1
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v10, p7

    invoke-super/range {v4 .. v10}, Lnbisdk/au$d;->a(DDZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lnbisdk/au;->rK:Lnbisdk/pj;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lnbisdk/gp;->setCenter(DD)V

    cmpl-double v4, v14, p1

    if-eqz v4, :cond_5

    cmpl-double v4, v16, p3

    if-eqz v4, :cond_5

    const/4 v11, 0x1

    const/16 p6, 0x0

    move/from16 v6, p6

    :goto_2
    const/4 v4, 0x1

    if-ne v11, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au;->jl()V

    :cond_2
    move-object/from16 v4, p0

    move/from16 v5, p5

    move/from16 v7, p7

    move v8, v12

    move v9, v13

    invoke-virtual/range {v4 .. v9}, Lnbisdk/au;->a(IZZII)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->cC()D

    move-result-wide v4

    cmpl-double v4, v4, p1

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->cD()D

    move-result-wide v4

    cmpl-double v4, v4, p3

    if-eqz v4, :cond_0

    :cond_4
    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v4 .. v10}, Lnbisdk/au;->a(DDZZ)V

    goto :goto_0

    :cond_5
    move/from16 v6, p6

    goto :goto_2

    :cond_6
    move v11, v4

    goto :goto_1
.end method

.method public final a(DDZZ)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lnbisdk/au;->a(DDZZZ)V

    return-void
.end method

.method public final a(DDZZZ)V
    .locals 10

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->cC()D

    move-result-wide v0

    cmpl-double v0, v0, p1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnbisdk/au$d;->cD()D

    move-result-wide v0

    cmpl-double v0, v0, p3

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/nbi/map/data/Coordinates;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    iput-object v0, p0, Lnbisdk/au;->sf:Lcom/nbi/map/data/Coordinates;

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {p0}, Lnbisdk/au$d;->cC()D

    move-result-wide v1

    invoke-virtual {p0}, Lnbisdk/au$d;->cD()D

    move-result-wide v3

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v0 .. v8}, Lnbisdk/cj;->c(DDDD)Z

    move-result p5

    :cond_4
    if-nez p5, :cond_5

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/gp;->setCenter(DD)V

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0}, Lnbisdk/gp;->cC()D

    move-result-wide v1

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0}, Lnbisdk/gp;->cD()D

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v6, p6

    invoke-super/range {v0 .. v6}, Lnbisdk/au$d;->a(DDZZ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnbisdk/au;->f(ZZ)V

    if-eqz p7, :cond_0

    iget-object v0, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    iget-object v1, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v1}, Lnbisdk/gp;->cC()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v3}, Lnbisdk/gp;->cD()D

    move-result-wide v3

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v5

    int-to-double v5, v5

    const/4 v7, 0x0

    move/from16 v8, p6

    invoke-interface/range {v0 .. v8}, Lnbisdk/uu;->a(DDDZZ)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    iget-object v1, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v1}, Lnbisdk/gp;->cC()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v3}, Lnbisdk/gp;->cD()D

    move-result-wide v3

    move-wide v5, p1

    move-wide v7, p3

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lnbisdk/cj;->a(DDDDZ)V

    goto/16 :goto_0
.end method

.method public final a(FF)V
    .locals 2

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lnbisdk/cj;->a(ZFF)V

    return-void
.end method

.method public final a(IIZZ)V
    .locals 9

    const/4 v5, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0, p1, p2}, Lnbisdk/gp;->b(II)V

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0}, Lnbisdk/gp;->cC()D

    move-result-wide v1

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0}, Lnbisdk/gp;->cD()D

    move-result-wide v3

    move-object v0, p0

    move v6, p4

    invoke-super/range {v0 .. v6}, Lnbisdk/au$d;->a(DDZZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lnbisdk/au;->f(ZZ)V

    if-nez p3, :cond_1

    iget-object v0, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    iget-object v1, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v1}, Lnbisdk/gp;->cC()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v3}, Lnbisdk/gp;->cD()D

    move-result-wide v3

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v5

    int-to-double v5, v5

    move v7, p3

    move v8, p4

    invoke-interface/range {v0 .. v8}, Lnbisdk/uu;->a(DDDZZ)V

    :cond_1
    return-void
.end method

.method public final a(IZZII)V
    .locals 9

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Lnbisdk/au;->aR(I)V

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->ey()V

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v7

    invoke-virtual {p0}, Lnbisdk/au;->dx()V

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    invoke-virtual {p0}, Lnbisdk/au$d;->cC()D

    move-result-wide v1

    invoke-virtual {p0}, Lnbisdk/au$d;->cD()D

    move-result-wide v3

    int-to-double v5, p1

    move v7, p2

    move v8, p3

    invoke-interface/range {v0 .. v8}, Lnbisdk/uu;->a(DDDZZ)V

    :cond_1
    invoke-static {}, Lnbisdk/au;->jL()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lnbisdk/au;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0, v5}, Lnbisdk/cc;->f(Z)V

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0, p0}, Lnbisdk/pj;->k(Lnbisdk/au;)V

    :cond_3
    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0, p0}, Lnbisdk/pj;->j(Lnbisdk/au;)V

    invoke-virtual {p0}, Lnbisdk/au$d;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v4

    invoke-virtual {p0}, Lnbisdk/au$d;->jm()I

    move-result v0

    if-ne p4, v0, :cond_4

    invoke-virtual {p0}, Lnbisdk/au$d;->jn()I

    move-result v0

    if-ne p5, v0, :cond_4

    move v0, v3

    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lnbisdk/au$d;->jm()I

    move-result v0

    sub-int/2addr v0, p4

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lnbisdk/au$d;->jn()I

    move-result v1

    sub-int/2addr v1, p5

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lnbisdk/au$d;->jm()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {p0}, Lnbisdk/au$d;->jn()I

    move-result v2

    sub-int v1, v2, v1

    const/4 v2, 0x2

    new-array v4, v2, [D

    iget-object v2, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v2, v0, v1, v4}, Lnbisdk/gp;->a(II[D)V

    aget-wide v1, v4, v5

    aget-wide v3, v4, v3

    :goto_2
    invoke-super {p0, p1, v5, p3}, Lnbisdk/au$d;->c(IZZ)V

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0, p0}, Lnbisdk/gp;->b(Lnbisdk/au;)V

    move-object v0, p0

    move v6, p3

    invoke-super/range {v0 .. v6}, Lnbisdk/au$d;->a(DDZZ)V

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnbisdk/gp;->setCenter(DD)V

    if-ge p1, v7, :cond_6

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    sub-int v1, v7, p1

    invoke-virtual {v0, p4, p5, p3, v1}, Lnbisdk/cj;->b(IIZI)V

    :goto_3
    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    invoke-virtual {p0, v5}, Lnbisdk/au;->I(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    sub-int v1, p1, v7

    invoke-virtual {v0, p4, p5, p3, v1}, Lnbisdk/cj;->a(IIZI)V

    goto :goto_3

    :cond_7
    invoke-super {p0, p1, v5, p3}, Lnbisdk/au$d;->c(IZZ)V

    invoke-direct {p0, v3, v5}, Lnbisdk/au;->f(ZZ)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;ZZ)V
    .locals 4

    iget-boolean v0, p0, Lnbisdk/au;->rX:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/au;->rM:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    if-eqz p3, :cond_4

    instance-of v3, v0, Lnbisdk/ct;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lnbisdk/au$d;->cy()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnbisdk/au;->sg:Lnbisdk/ct;

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-virtual {v0, p1, p2, p4}, Lnbisdk/au$d;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    instance-of v3, v0, Lnbisdk/ct;

    if-nez v3, :cond_3

    invoke-virtual {v0, p1, p2, p4}, Lnbisdk/au$d;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V

    goto :goto_1
.end method

.method public final a(Lcom/nbi/map/data/ManeuverList;Lcom/nbi/map/data/ManeuverList;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    const-string v1, "NBI_ROUTE_LAYER"

    invoke-virtual {v0, v1}, Lnbisdk/hu;->ao(Ljava/lang/String;)Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/ve;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/ve;->a(Lcom/nbi/map/data/ManeuverList;Lcom/nbi/map/data/ManeuverList;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NBI_ROUTE_LAYER"

    invoke-direct {p0, v0, p5}, Lnbisdk/au;->c(Ljava/lang/String;Z)V

    iget-object v0, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    invoke-interface {v0, p5, v2}, Lnbisdk/uu;->j(ZZ)V

    if-eqz p1, :cond_0

    if-ne p6, v3, :cond_0

    invoke-virtual {p1}, Lcom/nbi/map/data/ManeuverList;->routeBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v2, v2}, Lnbisdk/au;->a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;ZZ)Z

    :cond_0
    invoke-direct {p0, v3, v2}, Lnbisdk/au;->f(ZZ)V

    return-void
.end method

.method public final a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnbisdk/au;->f(ZZ)V

    return-void
.end method

.method protected final a(Lnbisdk/ct;Lnbisdk/iy;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sa:Lnbisdk/au$b;

    invoke-virtual {v0, p2}, Lnbisdk/au$b;->a(Lnbisdk/iy;)V

    iget-object v0, p0, Lnbisdk/au;->sb:Lnbisdk/au$c;

    invoke-virtual {v0}, Lnbisdk/au$c;->jU()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/au;->sk:Z

    return-void
.end method

.method public final a(Lnbisdk/fw$a;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rY:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/au;->rY:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lnbisdk/au;->rY:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lnbisdk/fy;)V
    .locals 4

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    instance-of v3, v0, Lnbisdk/ct;

    if-eqz v3, :cond_0

    check-cast v0, Lnbisdk/ct;

    invoke-virtual {v0}, Lnbisdk/au$d;->cy()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/ct;->a(Lnbisdk/fy;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lnbisdk/au;->sh:Lnbisdk/fy;

    return-void
.end method

.method public final a(IIIILandroid/graphics/Bitmap;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v2, v0}, Lnbisdk/cc;->f(Z)V

    iget-object v2, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v2}, Lnbisdk/cc;->cs()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Rect;

    add-int v5, p1, p3

    add-int v6, p2, p4

    invoke-direct {v4, p1, p2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v1, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final a(IIZ)Z
    .locals 2

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lnbisdk/dr;->a(IIZ)Z

    move-result v0

    return v0
.end method

.method public final a(ILcom/nbi/map/android/Pin;ZZ)Z
    .locals 2

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lnbisdk/dr;->a(ILcom/nbi/map/android/Pin;ZZ)Z

    move-result v0

    return v0
.end method

.method public final a(IZ)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1, p2}, Lnbisdk/dr;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final a(Lcom/nbi/location/Location;ZZZZZ)Z
    .locals 7

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lnbisdk/dr;->a(Lcom/nbi/location/Location;ZZZZZ)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/nbi/map/android/CustomLayer;)Z
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/nbi/map/android/POILayer;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    check-cast p1, Lcom/nbi/map/android/POILayer;

    invoke-virtual {v0, p1}, Lnbisdk/dr;->a(Lcom/nbi/map/android/POILayer;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/nbi/map/android/MapLayer;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/nbi/map/android/MapLayer;

    invoke-direct {p0, p1}, Lnbisdk/au;->b(Lcom/nbi/map/android/MapLayer;)Lnbisdk/ct;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnbisdk/hu;->ao(Ljava/lang/String;)Lnbisdk/au$d;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v2, v1}, Lnbisdk/hu;->c(Lnbisdk/au$d;)V

    iget-object v2, p0, Lnbisdk/au;->rM:Lnbisdk/hu;

    invoke-virtual {v2, v1}, Lnbisdk/hu;->c(Lnbisdk/au$d;)V

    invoke-virtual {v1}, Lnbisdk/au$d;->cy()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lnbisdk/au;->jE()V

    :cond_2
    iget-object v2, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v2, v1}, Lnbisdk/cc;->b(Lnbisdk/ct;)V

    invoke-virtual {p0, v1}, Lnbisdk/au;->i(Lnbisdk/au$d;)V

    invoke-virtual {p0, v0, v0}, Lnbisdk/au;->e(ZZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/data/Rectangle;Z)Z
    .locals 2

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lnbisdk/dr;->a(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/data/Rectangle;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/nbi/map/android/Pin;Z)Z
    .locals 2

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lnbisdk/dr;->a(Lcom/nbi/map/android/Pin;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Rectangle;ZIZ)Z
    .locals 15

    if-nez p3, :cond_0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lnbisdk/au;->a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;ZIZ)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    const/4 v2, 0x1

    new-array v12, v2, [D

    const/4 v2, 0x1

    new-array v13, v2, [D

    const/4 v2, 0x1

    new-array v14, v2, [I

    iget-object v2, p0, Lnbisdk/au;->hg:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lnbisdk/au;->hg:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v10

    invoke-virtual/range {v1 .. v14}, Lnbisdk/gp;->a(IIDDDD[D[D[I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v14, v3

    move/from16 v0, p5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v14, v2

    if-nez p4, :cond_1

    const/4 v2, 0x0

    aget v2, v14, v2

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lnbisdk/au;->jl()V

    :cond_1
    const/4 v2, 0x0

    aget-wide v3, v12, v2

    const/4 v2, 0x0

    aget-wide v5, v13, v2

    const/4 v2, 0x0

    aget v7, v14, v2

    move-object v2, p0

    move/from16 v8, p4

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lnbisdk/au;->a(DDIZZ)V

    iget-object v2, p0, Lnbisdk/au;->hg:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lnbisdk/au;->hg:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [D

    invoke-virtual {v1, v2, v3, v4}, Lnbisdk/gp;->a(II[D)V

    const/4 v1, 0x0

    aget-wide v2, v4, v1

    const/4 v1, 0x1

    aget-wide v4, v4, v1

    move-object v1, p0

    move/from16 v6, p4

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lnbisdk/au;->a(DDZZ)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public final a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;ZZ)Z
    .locals 6

    const/16 v4, 0x13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnbisdk/au;->a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;ZIZ)Z

    move-result v0

    return v0
.end method

.method public final a(Lnbisdk/ip;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/ip;)Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v2}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v4, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    if-eq v0, v4, :cond_3

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/ip;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lnbisdk/ip;->id()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    iget-object v5, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    if-ne v4, v5, :cond_0

    iput-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    :cond_0
    move v0, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lnbisdk/ip;->id()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    const-string v1, "INTERACTIVE_LAYER_NAME"

    invoke-virtual {v0, v1}, Lnbisdk/hu;->ao(Ljava/lang/String;)Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/cn;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lnbisdk/cn;->a(Lnbisdk/ip;)Z

    move-result v2

    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lnbisdk/lv;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lnbisdk/lv;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lnbisdk/au;->sa:Lnbisdk/au$b;

    invoke-virtual {v1}, Lnbisdk/au$b;->cS()V

    return v0

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lnbisdk/vk;

    invoke-virtual {v0}, Lnbisdk/vk;->nU()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    check-cast p1, Lnbisdk/vk;

    invoke-virtual {p0, p1}, Lnbisdk/au;->a(Lnbisdk/vk;)Z

    move-result v0

    goto :goto_0

    :cond_0
    check-cast p1, Lnbisdk/vk;

    invoke-virtual {p0, p1}, Lnbisdk/au;->b(Lnbisdk/vk;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    check-cast p1, Lnbisdk/ip;

    invoke-virtual {p0, p1}, Lnbisdk/au;->a(Lnbisdk/ip;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    check-cast p1, Lnbisdk/mn;

    invoke-virtual {p0, p1}, Lnbisdk/au;->a(Lnbisdk/mn;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    check-cast p1, Lnbisdk/mc;

    invoke-virtual {p0, p1}, Lnbisdk/au;->a(Lnbisdk/mc;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lnbisdk/mc;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/mc;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final a(Lnbisdk/mn;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/mn;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final a(Lnbisdk/po;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/po;)Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v2}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v4, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    if-eq v0, v4, :cond_1

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/po;)Z

    move-result v2

    move v0, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lnbisdk/vk;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/vk;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final addMapLayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/MapLayer;
    .locals 19

    const-string v4, "custom_base_map"

    const-string v3, "custom_base_map"

    const/4 v2, 0x1

    const/4 v5, 0x1

    move/from16 v0, p5

    if-ne v0, v5, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lnbisdk/au;->sm:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lnbisdk/au;->sm:I

    add-int/lit8 v5, v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NBI_CUSTOM_BASE_LAYER"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_8

    const/4 v2, 0x0

    move v15, v2

    move-object/from16 v18, v3

    move-object v3, v4

    move-object/from16 v4, v18

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v2

    check-cast v2, Lnbisdk/ij;

    new-instance v17, Lnbisdk/ct;

    invoke-virtual {v2}, Lnbisdk/ij;->cx()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnbisdk/ij;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v7, v6, v1, v2}, Lnbisdk/ct;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lnbisdk/au$d;->aL(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnbisdk/au$d;->setVisible(Z)V

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnbisdk/ct;->l(Z)V

    const-string v2, "jpg"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnbisdk/ct;->G(Ljava/lang/String;)V

    const-string v2, "192"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnbisdk/ct;->H(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lnbisdk/ct;->F(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lnbisdk/au$d;->F(Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnbisdk/ct;->a(Lcom/nbi/map/data/BoundingBox;)V

    if-eqz p6, :cond_0

    const/16 v2, 0xf

    move/from16 v0, p6

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p6

    :cond_0
    move/from16 v0, p6

    mul-int/lit16 v2, v0, 0x3e8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnbisdk/ct;->x(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lnbisdk/ct;->setUserData(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lnbisdk/ct;->a(Lcom/nbi/map/android/MapView$UserParameterCallbackListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/au;->rL:Lnbisdk/hu;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/au;->rM:Lnbisdk/hu;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    new-instance v16, Lcom/nbi/map/android/MapLayer;

    invoke-direct/range {v16 .. v16}, Lcom/nbi/map/android/MapLayer;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnbisdk/ct;->a(Lcom/nbi/map/android/MapLayer;)V

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/cy;->cA()I

    move-result v9

    :goto_1
    const/4 v2, -0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_6

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/cy;->cB()I

    move-result v10

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lnbisdk/au;->cE()I

    move-result v14

    new-instance v2, Lnbisdk/qk;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v11, 0x0

    const-string v12, ""

    const-string v13, ""

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v14}, Lnbisdk/qk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnbisdk/ct;->a(Lnbisdk/qk;)V

    if-eqz v15, :cond_1

    invoke-direct/range {p0 .. p0}, Lnbisdk/au;->jE()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/au;->sh:Lnbisdk/fy;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnbisdk/ct;->a(Lnbisdk/fy;)V

    :cond_1
    move-object/from16 v2, v16

    :goto_3
    return-object v2

    :cond_2
    const/4 v2, 0x2

    move/from16 v0, p5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    move/from16 v0, p5

    if-ne v0, v2, :cond_5

    :cond_3
    const/4 v2, 0x2

    move/from16 v0, p5

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/au;->sn:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lnbisdk/au;->sn:I

    add-int/lit16 v2, v2, 0x7d0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NBI_CUSTOM_OVERLAY_LAYER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    const-string v6, "custom_overlay_map"

    const-string v5, "custom_overlay_map"

    const/4 v4, 0x0

    move v15, v4

    move-object v4, v5

    move v5, v2

    move-object/from16 v18, v6

    move-object v6, v3

    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/au;->so:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lnbisdk/au;->so:I

    add-int/lit16 v2, v2, 0xbb8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NBI_CUSTOM_OVERLAY_LABELS_LAYER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move/from16 v10, p4

    goto/16 :goto_2

    :cond_7
    move/from16 v9, p3

    goto/16 :goto_1

    :cond_8
    move v15, v2

    move-object/from16 v18, v3

    move-object v3, v4

    move-object/from16 v4, v18

    goto/16 :goto_0
.end method

.method public final addPOILayer(I)Lcom/nbi/map/android/POILayer;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1}, Lnbisdk/dr;->addPOILayer(I)Lcom/nbi/map/android/POILayer;

    move-result-object v0

    return-object v0
.end method

.method public final addPOILayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$POIExtractionCallbackListener;Lcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/POILayer;
    .locals 10

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lnbisdk/dr;->addPOILayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$POIExtractionCallbackListener;Lcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/POILayer;

    move-result-object v0

    return-object v0
.end method

.method final b(Lnbisdk/iy;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    instance-of v3, v0, Lnbisdk/ct;

    if-eqz v3, :cond_3

    check-cast v0, Lnbisdk/ct;

    invoke-virtual {v0}, Lnbisdk/au$d;->cy()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnbisdk/au;->sg:Lnbisdk/ct;

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v3}, Lnbisdk/cc;->cq()Landroid/graphics/Canvas;

    move-result-object v3

    iget-object v4, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v4}, Lnbisdk/cc;->cg()Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0, v3, p1}, Lnbisdk/ct;->a(Landroid/graphics/Canvas;Lnbisdk/iy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Lnbisdk/qk;)V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lnbisdk/qk;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "base_map"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cy;->dI()Lnbisdk/qk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    invoke-static {p1, v0}, Lnbisdk/cy;->a(Lnbisdk/qk;Lnbisdk/qk;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lnbisdk/au;->a(Lnbisdk/qk;Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v2}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final b(Lcom/nbi/map/data/Coordinates;IZZZZ)Z
    .locals 7

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lnbisdk/dr;->b(Lcom/nbi/map/data/Coordinates;IZZZZ)Z

    move-result v0

    return v0
.end method

.method public final b(Lnbisdk/vk;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->b(Lnbisdk/vk;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final c(IZZ)V
    .locals 6

    invoke-virtual {p0}, Lnbisdk/au$d;->jm()I

    move-result v4

    invoke-virtual {p0}, Lnbisdk/au$d;->jn()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/au;->a(IZZII)V

    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->c(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final c(Lnbisdk/vk;)Z
    .locals 1

    invoke-virtual {p1}, Lnbisdk/vk;->ka()Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0, p1}, Lnbisdk/au;->a(Lnbisdk/vk;)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0x33 -> :sswitch_0
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
    .end sparse-switch
.end method

.method public final cE()I
    .locals 1

    iget-boolean v0, p0, Lnbisdk/au;->jL:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lnbisdk/au$d;->cE()I

    move-result v0

    goto :goto_0
.end method

.method public final cP()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lnbisdk/au;->rZ:Lnbisdk/lt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v7, v12, [I

    iget-object v0, p0, Lnbisdk/au;->rZ:Lnbisdk/lt;

    if-eqz v7, :cond_2

    iget-object v1, v0, Lnbisdk/lt;->rm:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    aput v1, v7, v5

    iget-object v0, v0, Lnbisdk/lt;->rm:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v7, v11

    :cond_2
    new-array v8, v12, [D

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    aget v1, v7, v5

    aget v2, v7, v11

    invoke-virtual {v0, v1, v2, v8}, Lnbisdk/gp;->a(II[D)V

    new-array v9, v12, [I

    invoke-virtual {p0}, Lnbisdk/au$d;->jm()I

    move-result v0

    aget v1, v7, v5

    sub-int/2addr v0, v1

    aput v0, v9, v5

    invoke-virtual {p0}, Lnbisdk/au$d;->jn()I

    move-result v0

    aget v1, v7, v11

    sub-int/2addr v0, v1

    aput v0, v9, v11

    iget-object v0, p0, Lnbisdk/au;->rZ:Lnbisdk/lt;

    iget v0, v0, Lnbisdk/lt;->rp:F

    invoke-static {v0}, Lnbisdk/au$d;->d(F)I

    move-result v10

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    add-int/2addr v0, v10

    invoke-super {p0, v0, v5, v11}, Lnbisdk/au$d;->c(IZZ)V

    if-eqz v10, :cond_3

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->ey()V

    :cond_3
    aget-wide v1, v8, v5

    aget-wide v3, v8, v11

    move-object v0, p0

    move v6, v5

    invoke-super/range {v0 .. v6}, Lnbisdk/au$d;->a(DDZZ)V

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0, p0}, Lnbisdk/gp;->b(Lnbisdk/au;)V

    new-array v0, v12, [I

    invoke-virtual {p0}, Lnbisdk/au$d;->jm()I

    move-result v1

    aget v2, v9, v5

    add-int/2addr v1, v2

    aput v1, v0, v5

    invoke-virtual {p0}, Lnbisdk/au$d;->jn()I

    move-result v1

    aget v2, v9, v11

    add-int/2addr v1, v2

    aput v1, v0, v11

    iget-object v1, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    aget v2, v0, v5

    aget v0, v0, v11

    invoke-virtual {v1, v2, v0, v8}, Lnbisdk/gp;->a(II[D)V

    aget-wide v1, v8, v5

    aget-wide v3, v8, v11

    move-object v0, p0

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au;->a(DDZZ)V

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v0, p0}, Lnbisdk/gp;->b(Lnbisdk/au;)V

    invoke-static {v10}, Lnbisdk/au$d;->aK(I)F

    move-result v0

    iget-object v1, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v1, v0, v7}, Lnbisdk/cc;->a(F[I)V

    invoke-static {}, Lnbisdk/au;->jL()V

    invoke-virtual {p0, v5, v11}, Lnbisdk/au;->e(ZZ)V

    goto/16 :goto_0
.end method

.method public final cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->cO()V

    return-void
.end method

.method public final cancelPinDrag()V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->cancelPinDrag()V

    return-void
.end method

.method public final createImage(IIII)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnbisdk/cc;->f(Z)V

    iget-object v1, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v1}, Lnbisdk/cc;->cs()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final d(Lcom/nbi/map/data/Rectangle;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "setSize"

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lnbisdk/au$d;->d(Lcom/nbi/map/data/Rectangle;)V

    iget-object v0, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lnbisdk/uu;->n(II)V

    invoke-direct {p0, v3, v3}, Lnbisdk/au;->f(ZZ)V

    return-void
.end method

.method public final dJ()I
    .locals 2

    invoke-virtual {p0}, Lnbisdk/au$d;->cA()I

    move-result v0

    iget-boolean v1, p0, Lnbisdk/au;->jL:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnbisdk/cy;->y(I)I

    move-result v0

    goto :goto_0
.end method

.method public final dK()I
    .locals 2

    invoke-virtual {p0}, Lnbisdk/au$d;->cB()I

    move-result v0

    iget-boolean v1, p0, Lnbisdk/au;->jL:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnbisdk/cy;->y(I)I

    move-result v0

    goto :goto_0
.end method

.method public final destroy()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lnbisdk/au;->se:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lnbisdk/au;->se:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lnbisdk/au;->si:Lnbisdk/au$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/au;->si:Lnbisdk/au$a;

    invoke-virtual {v0}, Lnbisdk/au$a;->destroy()V

    iput-object v4, p0, Lnbisdk/au;->si:Lnbisdk/au$a;

    :cond_1
    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->destroy()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/au;->sb:Lnbisdk/au$c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/au;->sb:Lnbisdk/au$c;

    invoke-virtual {v0}, Lnbisdk/au$c;->destroy()V

    iput-object v4, p0, Lnbisdk/au;->sb:Lnbisdk/au$c;

    :cond_3
    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->destroy()V

    iput-object v4, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    :cond_4
    iput-object v4, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lnbisdk/au;->rS:Lnbisdk/ct;

    iput-object v4, p0, Lnbisdk/au;->sa:Lnbisdk/au$b;

    iget-object v0, p0, Lnbisdk/au;->rR:Lnbisdk/k;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnbisdk/au;->rR:Lnbisdk/k;

    invoke-virtual {v0}, Lnbisdk/k;->destroy()V

    iput-object v4, p0, Lnbisdk/au;->rR:Lnbisdk/k;

    :cond_5
    iput-object v4, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    iput-object v4, p0, Lnbisdk/au;->rP:Lnbisdk/mt;

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->destroy()V

    iput-object v4, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    :cond_6
    iget-object v0, p0, Lnbisdk/au;->rO:Lnbisdk/cc;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnbisdk/au;->rO:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->destroy()V

    iput-object v4, p0, Lnbisdk/au;->rO:Lnbisdk/cc;

    :cond_7
    iput-object v4, p0, Lnbisdk/au;->hg:Landroid/view/View;

    iput-object v4, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    iput-object v4, p0, Lnbisdk/au;->rM:Lnbisdk/hu;

    iput-object v4, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    iput-object v4, p0, Lnbisdk/au;->sc:Landroid/graphics/BitmapFactory$Options;

    invoke-super {p0}, Lnbisdk/au$d;->destroy()V

    return-void
.end method

.method public final dropPin(II)I
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1, p2}, Lnbisdk/dr;->dropPin(II)I

    move-result v0

    return v0
.end method

.method public final dt()Lnbisdk/pc;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cr()Lnbisdk/pc;

    move-result-object v0

    return-object v0
.end method

.method public final du()Lnbisdk/cr;
    .locals 3

    iget-object v0, p0, Lnbisdk/au;->rR:Lnbisdk/k;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/k;

    new-instance v1, Lnbisdk/au$3;

    invoke-direct {v1, p0}, Lnbisdk/au$3;-><init>(Lnbisdk/au;)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lnbisdk/k;-><init>(Lnbisdk/ct;Lnbisdk/jz;Lcom/nbi/common/NBIContext;)V

    iput-object v0, p0, Lnbisdk/au;->rR:Lnbisdk/k;

    :cond_0
    iget-object v0, p0, Lnbisdk/au;->rR:Lnbisdk/k;

    return-object v0
.end method

.method protected final dv()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lnbisdk/au;->sc:Landroid/graphics/BitmapFactory$Options;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lnbisdk/au;->sc:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lnbisdk/au;->sc:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iget-object v0, p0, Lnbisdk/au;->sc:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-object v0, p0, Lnbisdk/au;->sc:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_0
    iget-object v0, p0, Lnbisdk/au;->sc:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method protected final dw()Landroid/graphics/Bitmap$Config;
    .locals 2

    iget-object v0, p0, Lnbisdk/au;->sd:Landroid/graphics/Bitmap$Config;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xf0

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iput-object v0, p0, Lnbisdk/au;->sd:Landroid/graphics/Bitmap$Config;

    :cond_0
    iget-object v0, p0, Lnbisdk/au;->sd:Landroid/graphics/Bitmap$Config;

    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method protected final dx()V
    .locals 3

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->dx()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnbisdk/au;->du()Lnbisdk/cr;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cr;->cancelRequest()V

    return-void
.end method

.method public final e(Lnbisdk/au$d;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0, p1}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    return-void
.end method

.method public final e(ZZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lnbisdk/au;->rW:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0, p2, v3}, Lnbisdk/cc;->a(ZZ)V

    iget-object v0, p0, Lnbisdk/au;->rO:Lnbisdk/cc;

    invoke-virtual {v0, p2, v3}, Lnbisdk/cc;->a(ZZ)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lnbisdk/au;->dx()V

    invoke-direct {p0, v2, v3}, Lnbisdk/au;->g(ZZ)V

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cq()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v1}, Lnbisdk/cc;->cg()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2, v2}, Lnbisdk/au;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;ZZ)V

    iget-object v0, p0, Lnbisdk/au;->hg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnbisdk/au;->sg:Lnbisdk/ct;

    invoke-virtual {v0, v2}, Lnbisdk/ct;->o(Z)V

    iget-object v1, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v1}, Lnbisdk/cc;->cq()Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v2}, Lnbisdk/cc;->cg()Lcom/nbi/map/data/Rectangle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnbisdk/ct;->b(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;)V

    goto :goto_0
.end method

.method public final eB()Lcom/nbi/map/android/Pin;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->eB()Lcom/nbi/map/android/Pin;

    move-result-object v0

    return-object v0
.end method

.method public final eC()I
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->eC()I

    move-result v0

    return v0
.end method

.method public final ez()V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->ez()V

    return-void
.end method

.method public final f(Lnbisdk/au$d;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0, p1}, Lnbisdk/hu;->c(Lnbisdk/au$d;)V

    return-void
.end method

.method public final g(Lnbisdk/au$d;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rM:Lnbisdk/hu;

    invoke-virtual {v0, p1}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    return-void
.end method

.method public final gH()Lnbisdk/cc;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    return-object v0
.end method

.method public final getDefaultPOILayer()Lcom/nbi/map/android/POILayer;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v0

    return-object v0
.end method

.method public final getNextPin(Lcom/nbi/map/android/POILayer;I)I
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1, p2}, Lnbisdk/dr;->getNextPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v0

    return v0
.end method

.method public final getPin(I)Lcom/nbi/map/android/Pin;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1}, Lnbisdk/dr;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v0

    return-object v0
.end method

.method public final getPinCount(Lcom/nbi/map/android/POILayer;)I
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1}, Lnbisdk/dr;->getPinCount(Lcom/nbi/map/android/POILayer;)I

    move-result v0

    return v0
.end method

.method public final getPrevPin(Lcom/nbi/map/android/POILayer;I)I
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1, p2}, Lnbisdk/dr;->getPrevPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v0

    return v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->hg:Landroid/view/View;

    return-object v0
.end method

.method public final h(Lnbisdk/au$d;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rM:Lnbisdk/hu;

    invoke-virtual {v0, p1}, Lnbisdk/hu;->c(Lnbisdk/au$d;)V

    return-void
.end method

.method public final h(ZZ)V
    .locals 2

    const-string v0, "NBI_TRAFFIC_LAYER"

    invoke-direct {p0, v0, p1}, Lnbisdk/au;->c(Ljava/lang/String;Z)V

    iget-object v0, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lnbisdk/uu;->l(ZZ)V

    invoke-static {}, Lnbisdk/au;->jL()V

    return-void
.end method

.method public final i(Lnbisdk/au$d;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/au;->rY:Ljava/util/Vector;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/au;->rY:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/au;->rY:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/fw$a;

    invoke-virtual {v0}, Lnbisdk/fw$a;->go()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(ZZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1}, Lnbisdk/dr;->r(Z)V

    iget-object v0, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    invoke-interface {v0, p1, v1}, Lnbisdk/uu;->k(ZZ)V

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cv()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lnbisdk/au;->f(ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1, v1}, Lnbisdk/au;->e(ZZ)V

    goto :goto_0
.end method

.method public final ig()Lnbisdk/mt;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rP:Lnbisdk/mt;

    return-object v0
.end method

.method public final isAnimating()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    goto :goto_0
.end method

.method public final isImageReady(IIII)Z
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    invoke-virtual {v1, p1, p2, v0}, Lnbisdk/gp;->a(II[I)V

    new-instance v1, Lcom/nbi/map/data/Rectangle;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {v1, v2, v0, p3, p4}, Lcom/nbi/map/data/Rectangle;-><init>(IIII)V

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0, v1}, Lnbisdk/cc;->a(Lcom/nbi/map/data/Rectangle;)Z

    move-result v0

    return v0
.end method

.method public final isLayerVisible(Lcom/nbi/map/android/CustomLayer;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/nbi/map/android/POILayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v1}, Lnbisdk/dr;->eD()Lcom/nbi/map/android/POILayer;

    move-result-object v1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    check-cast p1, Lcom/nbi/map/android/POILayer;

    invoke-virtual {v1, p1}, Lnbisdk/dr;->b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/nbi/map/android/MapLayer;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/nbi/map/android/MapLayer;

    invoke-direct {p0, p1}, Lnbisdk/au;->b(Lcom/nbi/map/android/MapLayer;)Lnbisdk/ct;

    move-result-object v1

    goto :goto_1
.end method

.method public final isRouteLayerVisible()Z
    .locals 1

    const-string v0, "NBI_ROUTE_LAYER"

    invoke-direct {p0, v0}, Lnbisdk/au;->aK(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isTrafficIncidentsLayerVisible()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->isTrafficIncidentsLayerVisible()Z

    move-result v0

    return v0
.end method

.method public final isTrafficLayerVisible()Z
    .locals 1

    const-string v0, "NBI_TRAFFIC_LAYER"

    invoke-direct {p0, v0}, Lnbisdk/au;->aK(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final jC()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/au;->jL:Z

    return v0
.end method

.method public final jF()Lnbisdk/ct;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sg:Lnbisdk/ct;

    return-object v0
.end method

.method public final jH()Lnbisdk/pc;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rO:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cr()Lnbisdk/pc;

    move-result-object v0

    return-object v0
.end method

.method public final jI()Lnbisdk/cc;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rO:Lnbisdk/cc;

    return-object v0
.end method

.method public final jJ()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final jK()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final jM()Lnbisdk/hu;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    return-object v0
.end method

.method public final jO()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lnbisdk/au;->jN()Lnbisdk/ct;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnbisdk/au;->a(Lnbisdk/ct;IZ)V

    invoke-direct {p0, v3, v3}, Lnbisdk/au;->f(ZZ)V

    return-void
.end method

.method public final jP()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lnbisdk/au;->jN()Lnbisdk/ct;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lnbisdk/au;->a(Lnbisdk/ct;IZ)V

    invoke-direct {p0, v2, v2}, Lnbisdk/au;->f(ZZ)V

    return-void
.end method

.method public final jQ()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lnbisdk/au;->jN()Lnbisdk/ct;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnbisdk/au;->a(Lnbisdk/ct;IZ)V

    invoke-direct {p0, v3, v3}, Lnbisdk/au;->f(ZZ)V

    return-void
.end method

.method public final jR()Lnbisdk/dr;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    return-object v0
.end method

.method public final jS()I
    .locals 2

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lnbisdk/au;->cE()I

    move-result v1

    shl-int v0, v1, v0

    return v0
.end method

.method public final ji()Lnbisdk/gp;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rK:Lnbisdk/pj;

    return-object v0
.end method

.method public final jk()Lnbisdk/uu;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    return-object v0
.end method

.method public final jl()V
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cq()Landroid/graphics/Canvas;

    move-result-object v3

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cg()Lcom/nbi/map/data/Rectangle;

    move-result-object v4

    const-string v0, "TileMapControl"

    const-string v2, "drawOffScreenBackground"

    invoke-static {v0, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    iget-object v0, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v0, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v7

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    int-to-float v8, v0

    int-to-float v9, v2

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v2, v6

    goto :goto_1

    :cond_0
    add-int/2addr v0, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final jo()Lnbisdk/cj;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    return-object v0
.end method

.method public final jp()Lnbisdk/lt;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->rZ:Lnbisdk/lt;

    return-object v0
.end method

.method public final jq()Z
    .locals 2

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lnbisdk/au;->y(I)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final mapGetLocation()Lcom/nbi/map/data/Coordinates;
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->mapGetLocation()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    return-object v0
.end method

.method public final mapShowLocation(Z)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1}, Lnbisdk/dr;->mapShowLocation(Z)Z

    move-result v0

    return v0
.end method

.method protected final o(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/au;->g(ZZ)V

    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting current mTouchLayer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cs()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lnbisdk/au;->rZ:Lnbisdk/lt;

    iget v2, v1, Lnbisdk/lt;->rp:F

    iget-object v4, v1, Lnbisdk/lt;->rm:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v1, v1, Lnbisdk/lt;->rm:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v2, v4, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p1, v0, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v13, v13}, Lnbisdk/au;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lnbisdk/au;->rW:I

    if-nez v0, :cond_5

    iput v6, p0, Lnbisdk/au;->rW:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cs()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v1}, Lnbisdk/cj;->getScale()F

    move-result v1

    iget-object v2, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v2}, Lnbisdk/cj;->eU()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lnbisdk/au;->rU:Lnbisdk/cj;

    invoke-virtual {v4}, Lnbisdk/cj;->eV()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v1, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p1, v0, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->ct()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lnbisdk/au;->jl()V

    invoke-virtual {p0, v13, v6}, Lnbisdk/au;->e(ZZ)V

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cu()V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v13, v13}, Lnbisdk/au;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;ZZ)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v1, p1, v0, v13}, Lnbisdk/dr;->b(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V

    iget-object v0, p0, Lnbisdk/au;->rQ:Lnbisdk/uu;

    invoke-interface {v0, p1}, Lnbisdk/uu;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lnbisdk/au;->rW:I

    if-ne v0, v6, :cond_2

    invoke-direct {p0}, Lnbisdk/au;->jG()V

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lnbisdk/au;->sk:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lnbisdk/au;->jl()V

    :cond_7
    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cv()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cj()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->ci()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v0, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->cw()B

    move-result v9

    iget v0, v5, Landroid/graphics/Rect;->left:I

    :goto_4
    iget v1, v5, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_f

    and-int/lit8 v1, v9, 0x8

    if-nez v1, :cond_8

    iget v1, v5, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_b

    :cond_8
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    rem-int/2addr v1, v8

    if-eqz v1, :cond_a

    iget v1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v8

    :goto_5
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v8

    :goto_6
    if-lt v2, v1, :cond_e

    add-int v10, v0, v7

    add-int v11, v2, v8

    invoke-virtual {v6, v0, v2, v10, v11}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    int-to-float v11, v0

    int-to-float v12, v2

    invoke-virtual {p1, v10, v11, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_9
    sub-int/2addr v2, v8

    goto :goto_6

    :cond_a
    iget v1, v5, Landroid/graphics/Rect;->top:I

    goto :goto_5

    :cond_b
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    rem-int/2addr v1, v8

    if-eqz v1, :cond_d

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v8

    :goto_7
    iget v2, v5, Landroid/graphics/Rect;->top:I

    :goto_8
    if-ge v2, v1, :cond_e

    add-int v10, v0, v7

    add-int v11, v2, v8

    invoke-virtual {v6, v0, v2, v10, v11}, Landroid/graphics/Rect;->contains(IIII)Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lnbisdk/au;->rT:Landroid/graphics/Bitmap;

    int-to-float v11, v0

    int-to-float v12, v2

    invoke-virtual {p1, v10, v11, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_c
    add-int/2addr v2, v8

    goto :goto_8

    :cond_d
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    :cond_e
    add-int/2addr v0, v7

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v0}, Lnbisdk/cc;->ch()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/au;->rN:Lnbisdk/cc;

    invoke-virtual {v1}, Lnbisdk/cc;->ci()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v4, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_10
    move-object v0, v3

    goto/16 :goto_2
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/au$d;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v2}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/au$d;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    return v2

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final onLowMemory()V
    .locals 3

    const-string v0, "TileMapControl"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->onLowMemory()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnbisdk/au;->rR:Lnbisdk/k;

    invoke-virtual {v0}, Lnbisdk/k;->onLowMemory()V

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/au$d;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v2}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1, p1, p3, p4}, Lnbisdk/au$d;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/au;->rV:Lnbisdk/au$d;

    return v2
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/au;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->hg:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/au;->hg:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q(Z)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1}, Lnbisdk/dr;->q(Z)V

    return-void
.end method

.method public final removeAllPins(Lcom/nbi/map/android/POILayer;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1}, Lnbisdk/dr;->removeAllPins(Lcom/nbi/map/android/POILayer;)V

    return-void
.end method

.method public final removePin(I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1}, Lnbisdk/dr;->removePin(I)V

    return-void
.end method

.method public final setPinDuringDrag(Lcom/nbi/map/android/Pin;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1}, Lnbisdk/dr;->setPinDuringDrag(Lcom/nbi/map/android/Pin;)V

    return-void
.end method

.method public final setPinImage(ILcom/nbi/map/android/PinImage;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1, p2}, Lnbisdk/dr;->setPinImage(ILcom/nbi/map/android/PinImage;)Z

    move-result v0

    return v0
.end method

.method public final setStandardPinImage(ILcom/nbi/map/android/PinImage;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p1, p2}, Lnbisdk/dr;->setStandardPinImage(ILcom/nbi/map/android/PinImage;)Z

    move-result v0

    return v0
.end method

.method public final showLayer(Lcom/nbi/map/android/CustomLayer;Z)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/nbi/map/android/POILayer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v2}, Lnbisdk/dr;->eD()Lcom/nbi/map/android/POILayer;

    move-result-object v2

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, p2}, Lnbisdk/dr;->s(Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    check-cast p1, Lcom/nbi/map/android/POILayer;

    invoke-virtual {v2, p1}, Lnbisdk/dr;->b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lnbisdk/au;->sj:Lnbisdk/dr;

    invoke-virtual {v0, v2, p2}, Lnbisdk/mo;->a(Lnbisdk/au$d;Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/nbi/map/android/MapLayer;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/nbi/map/android/MapLayer;

    invoke-direct {p0, p1}, Lnbisdk/au;->b(Lcom/nbi/map/android/MapLayer;)Lnbisdk/ct;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, p2}, Lnbisdk/au;->a(Lnbisdk/au$d;Z)V

    move v0, v1

    goto :goto_0
.end method

.method public final y(I)I
    .locals 1

    iget-boolean v0, p0, Lnbisdk/au;->jL:Z

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/cy;->y(I)I

    move-result p1

    goto :goto_0
.end method

.method public final z(I)I
    .locals 1

    iget-boolean v0, p0, Lnbisdk/au;->jL:Z

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/cy;->z(I)I

    move-result p1

    goto :goto_0
.end method
