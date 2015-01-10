.class final Lcom/nbi/map/android/b$a;
.super Lnbisdk/jk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbi/map/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic lP:Lcom/nbi/map/android/b;


# direct methods
.method constructor <init>(Lcom/nbi/map/android/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/b$a;->lP:Lcom/nbi/map/android/b;

    invoke-direct {p0}, Lnbisdk/jk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapViewScaleGestureListener"

    const-string v1, "onPinch"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b$a;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b$a;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/au;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lnbisdk/fp;)Z
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapViewScaleGestureListener"

    const-string v1, "onScale"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lnbisdk/po;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lnbisdk/po;-><init>(Lnbisdk/fp;I)V

    iget-object v1, p0, Lcom/nbi/map/android/b$a;->lP:Lcom/nbi/map/android/b;

    invoke-static {v1}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nbi/map/android/b$a;->lP:Lcom/nbi/map/android/b;

    invoke-static {v1}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnbisdk/au;->a(Lnbisdk/po;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lnbisdk/fp;)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lnbisdk/me;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MapViewScaleGestureListener"

    const-string v2, "onScaleBegin"

    invoke-static {v1, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lnbisdk/po;

    invoke-direct {v1, p1, v0}, Lnbisdk/po;-><init>(Lnbisdk/fp;I)V

    iget-object v2, p0, Lcom/nbi/map/android/b$a;->lP:Lcom/nbi/map/android/b;

    invoke-static {v2}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nbi/map/android/b$a;->lP:Lcom/nbi/map/android/b;

    invoke-static {v2}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnbisdk/au;->a(Lnbisdk/po;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lnbisdk/fp;)V
    .locals 2

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MapViewScaleGestureListener"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lnbisdk/po;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lnbisdk/po;-><init>(Lnbisdk/fp;I)V

    iget-object v1, p0, Lcom/nbi/map/android/b$a;->lP:Lcom/nbi/map/android/b;

    invoke-static {v1}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nbi/map/android/b$a;->lP:Lcom/nbi/map/android/b;

    invoke-static {v1}, Lcom/nbi/map/android/b;->g(Lcom/nbi/map/android/b;)Lnbisdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnbisdk/au;->a(Lnbisdk/po;)Z

    :cond_1
    return-void
.end method
