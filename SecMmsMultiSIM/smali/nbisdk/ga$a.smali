.class final Lnbisdk/ga$a;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private synthetic jN:Lnbisdk/ga;


# direct methods
.method synthetic constructor <init>(Lnbisdk/ga;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/ga$a;-><init>(Lnbisdk/ga;B)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/ga;B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ga$a;->jN:Lnbisdk/ga;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lnbisdk/ga$a;->jN:Lnbisdk/ga;

    invoke-static {v0}, Lnbisdk/ga;->c(Lnbisdk/ga;)Lnbisdk/jk;

    move-result-object v0

    new-instance v1, Lnbisdk/ga$b;

    iget-object v2, p0, Lnbisdk/ga$a;->jN:Lnbisdk/ga;

    invoke-direct {v1, v2, p1}, Lnbisdk/ga$b;-><init>(Lnbisdk/ga;Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {v0, v1}, Lnbisdk/jk;->a(Lnbisdk/fp;)Z

    move-result v0

    return v0
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lnbisdk/ga$a;->jN:Lnbisdk/ga;

    invoke-static {v0}, Lnbisdk/ga;->c(Lnbisdk/ga;)Lnbisdk/jk;

    move-result-object v0

    new-instance v1, Lnbisdk/ga$b;

    iget-object v2, p0, Lnbisdk/ga$a;->jN:Lnbisdk/ga;

    invoke-direct {v1, v2, p1}, Lnbisdk/ga$b;-><init>(Lnbisdk/ga;Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {v0, v1}, Lnbisdk/jk;->b(Lnbisdk/fp;)Z

    move-result v0

    return v0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/ga$a;->jN:Lnbisdk/ga;

    invoke-static {v0}, Lnbisdk/ga;->c(Lnbisdk/ga;)Lnbisdk/jk;

    move-result-object v0

    new-instance v1, Lnbisdk/ga$b;

    iget-object v2, p0, Lnbisdk/ga$a;->jN:Lnbisdk/ga;

    invoke-direct {v1, v2, p1}, Lnbisdk/ga$b;-><init>(Lnbisdk/ga;Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {v0, v1}, Lnbisdk/jk;->c(Lnbisdk/fp;)V

    return-void
.end method
