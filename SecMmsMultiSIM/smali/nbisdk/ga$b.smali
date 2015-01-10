.class final Lnbisdk/ga$b;
.super Lnbisdk/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private rf:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lnbisdk/ga;Landroid/view/ScaleGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/fp;-><init>()V

    iput-object p2, p0, Lnbisdk/ga$b;->rf:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public final getCurrentSpan()F
    .locals 1

    iget-object v0, p0, Lnbisdk/ga$b;->rf:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    return v0
.end method

.method public final getFocusX()F
    .locals 1

    iget-object v0, p0, Lnbisdk/ga$b;->rf:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    return v0
.end method

.method public final getFocusY()F
    .locals 1

    iget-object v0, p0, Lnbisdk/ga$b;->rf:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    return v0
.end method

.method public final getPreviousSpan()F
    .locals 1

    iget-object v0, p0, Lnbisdk/ga$b;->rf:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v0

    return v0
.end method
