.class public final Lnbisdk/gy$a;
.super Landroid/view/GestureDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic lz:Lnbisdk/gy;


# direct methods
.method public constructor <init>(Lnbisdk/gy;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gy$a;->lz:Lnbisdk/gy;

    invoke-direct {p0, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/gy$a;->lz:Lnbisdk/gy;

    invoke-static {v1, p1}, Lnbisdk/gy;->a(Lnbisdk/gy;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lnbisdk/gy$a;->lz:Lnbisdk/gy;

    invoke-static {v1}, Lnbisdk/gy;->a(Lnbisdk/gy;)Landroid/view/ScaleGestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v1, v4, :cond_0

    iget-object v3, p0, Lnbisdk/gy$a;->lz:Lnbisdk/gy;

    invoke-static {v3}, Lnbisdk/gy;->b(Lnbisdk/gy;)I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iget-object v0, p0, Lnbisdk/gy$a;->lz:Lnbisdk/gy;

    invoke-static {v0}, Lnbisdk/gy;->c(Lnbisdk/gy;)Lnbisdk/jk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/jk;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    iget-object v2, p0, Lnbisdk/gy$a;->lz:Lnbisdk/gy;

    invoke-static {v2, v1}, Lnbisdk/gy;->a(Lnbisdk/gy;I)I

    return v0
.end method
