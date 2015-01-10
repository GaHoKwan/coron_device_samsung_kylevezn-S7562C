.class final Lnbisdk/gx;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# instance fields
.field private synthetic lz:Lnbisdk/gy;


# direct methods
.method synthetic constructor <init>(Lnbisdk/gy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/gx;-><init>(Lnbisdk/gy;B)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/gy;B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gx;->lz:Lnbisdk/gy;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lnbisdk/gx;->lz:Lnbisdk/gy;

    invoke-static {v0}, Lnbisdk/gy;->c(Lnbisdk/gy;)Lnbisdk/jk;

    move-result-object v0

    new-instance v1, Lnbisdk/gy$b;

    iget-object v2, p0, Lnbisdk/gx;->lz:Lnbisdk/gy;

    invoke-direct {v1, v2, p1}, Lnbisdk/gy$b;-><init>(Lnbisdk/gy;Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {v0, v1}, Lnbisdk/jk;->a(Lnbisdk/fp;)Z

    move-result v0

    return v0
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lnbisdk/gx;->lz:Lnbisdk/gy;

    invoke-static {v0}, Lnbisdk/gy;->c(Lnbisdk/gy;)Lnbisdk/jk;

    move-result-object v0

    new-instance v1, Lnbisdk/gy$b;

    iget-object v2, p0, Lnbisdk/gx;->lz:Lnbisdk/gy;

    invoke-direct {v1, v2, p1}, Lnbisdk/gy$b;-><init>(Lnbisdk/gy;Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {v0, v1}, Lnbisdk/jk;->b(Lnbisdk/fp;)Z

    move-result v0

    return v0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/gx;->lz:Lnbisdk/gy;

    invoke-static {v0}, Lnbisdk/gy;->c(Lnbisdk/gy;)Lnbisdk/jk;

    move-result-object v0

    new-instance v1, Lnbisdk/gy$b;

    iget-object v2, p0, Lnbisdk/gx;->lz:Lnbisdk/gy;

    invoke-direct {v1, v2, p1}, Lnbisdk/gy$b;-><init>(Lnbisdk/gy;Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {v0, v1}, Lnbisdk/jk;->c(Lnbisdk/fp;)V

    return-void
.end method
