.class final Lcom/nbi/map/android/b$c;
.super Lnbisdk/ha;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbi/map/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private synthetic lP:Lcom/nbi/map/android/b;


# direct methods
.method constructor <init>(Lcom/nbi/map/android/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-direct {p0}, Lnbisdk/ha;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapViewGestureListener"

    const-string v1, "onDoubleTap"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/au;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapViewGestureListener"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/au;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapViewGestureListener"

    const-string v1, "onFling"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/au;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapViewGestureListener"

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/au;->c(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapViewGestureListener"

    const-string v1, "onScroll"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/au;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapViewGestureListener"

    const-string v1, "onShowPress"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/au;->b(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapViewGestureListener"

    const-string v1, "onSingleTapConfirmed"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/au;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapViewGestureListener"

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b$c;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/au;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
