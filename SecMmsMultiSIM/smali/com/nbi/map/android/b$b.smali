.class final Lcom/nbi/map/android/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/uu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbi/map/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic lP:Lcom/nbi/map/android/b;

.field private uZ:Lcom/nbi/map/android/b;

.field private va:Lcom/nbi/map/android/MapView;


# direct methods
.method constructor <init>(Lcom/nbi/map/android/b;Lcom/nbi/map/android/b;)V
    .locals 1

    iput-object p1, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nbi/map/android/b$b;->uZ:Lcom/nbi/map/android/b;

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->uZ:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->a(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    return-void
.end method


# virtual methods
.method public final a(Lcom/nbi/map/android/MapView$UserParameterCallbackListener;Lcom/nbi/map/android/CustomLayer;IIILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 9

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/nbi/map/android/MapView$UserParameterCallbackListener;->userParameterCallback(Lcom/nbi/map/android/MapView;Lcom/nbi/map/android/CustomLayer;IIILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(DDDZZ)V
    .locals 10

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->b(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->b(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;->onMapCenterAndZoomChange(Lcom/nbi/map/android/MapView;DDDZZ)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->c(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnMapPaintListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->c(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnMapPaintListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1}, Lcom/nbi/map/android/MapView$OnMapPaintListener;->onMapPaint(Lcom/nbi/map/android/MapView;Landroid/graphics/Canvas;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;III)V
    .locals 6

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/nbi/map/android/MapView$OnPinEventListener;->onPinBubbleDraw(Lcom/nbi/map/android/MapView;Landroid/graphics/Canvas;III)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/nbi/map/android/MapView$POIExtractionCallbackListener;Lcom/nbi/map/android/POILayer;[B)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {p1, v0, p2, p3}, Lcom/nbi/map/android/MapView$POIExtractionCallbackListener;->poiExtractionCallback(Lcom/nbi/map/android/MapView;Lcom/nbi/map/android/POILayer;[B)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/nbi/map/data/TrafficIncident;)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1}, Lcom/nbi/map/android/MapView$OnPinEventListener;->onPinTrafficBubbleTouched(Lcom/nbi/map/android/MapView;Lcom/nbi/map/data/TrafficIncident;)V

    :cond_0
    return-void
.end method

.method public final bc(I)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1}, Lcom/nbi/map/android/MapView$OnPinEventListener;->onPinDropped(Lcom/nbi/map/android/MapView;I)V

    :cond_0
    return-void
.end method

.method public final bd(I)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1}, Lcom/nbi/map/android/MapView$OnPinEventListener;->onPinSelected(Lcom/nbi/map/android/MapView;I)V

    :cond_0
    return-void
.end method

.method public final f(III)Lcom/nbi/map/data/Rectangle;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v1}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/nbi/map/android/MapView$OnPinEventListener;->onPinBubbleGetRectangle(Lcom/nbi/map/android/MapView;III)Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final j(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->f(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->f(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;->onRouteVisibleChange(Lcom/nbi/map/android/MapView;ZZ)Z

    :cond_0
    return-void
.end method

.method public final k(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->f(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->f(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2}, Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;->onTrafficIncidentsVisibleChange(Lcom/nbi/map/android/MapView;ZZ)Z

    :cond_0
    return-void
.end method

.method public final l(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->f(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->f(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2}, Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;->onTrafficVisibleChange(Lcom/nbi/map/android/MapView;ZZ)Z

    :cond_0
    return-void
.end method

.method public final n(II)V
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->d(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnMapResizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->d(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnMapResizeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2}, Lcom/nbi/map/android/MapView$OnMapResizeListener;->onMapResize(Lcom/nbi/map/android/MapView;II)Z

    :cond_0
    return-void
.end method

.method public final onPinDragEnd(ILcom/nbi/map/data/Coordinates;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v1}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2}, Lcom/nbi/map/android/MapView$OnPinEventListener;->onPinDragEnd(Lcom/nbi/map/android/MapView;ILcom/nbi/map/data/Coordinates;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final onPinDragRequest(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v1}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1}, Lcom/nbi/map/android/MapView$OnPinEventListener;->onPinDragRequest(Lcom/nbi/map/android/MapView;I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final onPinDropEvent(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v1}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2}, Lcom/nbi/map/android/MapView$OnPinEventListener;->onPinDrop(Lcom/nbi/map/android/MapView;II)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final onPinTouched(IZ)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v1}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b$b;->lP:Lcom/nbi/map/android/b;

    invoke-static {v0}, Lcom/nbi/map/android/b;->e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nbi/map/android/b$b;->va:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2}, Lcom/nbi/map/android/MapView$OnPinEventListener;->onPinTouched(Lcom/nbi/map/android/MapView;IZ)Z

    move-result v0

    :cond_0
    return v0
.end method
