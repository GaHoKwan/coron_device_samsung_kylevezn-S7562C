.class public Lcom/nbi/map/android/MapView;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nbi/map/android/MapView$POIExtractionCallbackListener;,
        Lcom/nbi/map/android/MapView$UserParameterCallbackListener;,
        Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;,
        Lcom/nbi/map/android/MapView$OnMapResizeListener;,
        Lcom/nbi/map/android/MapView$OnMapPaintListener;,
        Lcom/nbi/map/android/MapView$OnKeyEventListener;,
        Lcom/nbi/map/android/MapView$OnPinEventListener;,
        Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;
    }
.end annotation


# static fields
.field public static final MAX_LATITUDE:D = 90.0

.field public static final MAX_LONGITUDE:D = 180.0

.field public static final MAX_ZOOM_LEVEL:I = -0x2

.field public static final MIN_LATITUDE:D = -90.0

.field public static final MIN_LONGITUDE:D = -180.0

.field public static final MIN_ZOOM_LEVEL:I = -0x1

.field public static final NBI_LAYER_BASE:I = 0x1

.field public static final NBI_LAYER_OVERLAY:I = 0x2

.field public static final NBI_LAYER_OVERLAY_LABELS:I = 0x3

.field public static final NBI_LAYER_OVERLAY_PIN:I = 0x5

.field public static final NBI_LAYER_OVERLAY_POI:I = 0x4

.field public static final NBI_NO_ZOOM_CHANGE:I = 0x0

.field public static final NBI_VIEW_LOCATION_ZOOM:I = 0xf

.field public static final VIEW_HYBRID:I = 0x4

.field public static final VIEW_MAP:I = 0x1

.field public static final VIEW_SATELLITE:I = 0x2


# instance fields
.field private EL:Lcom/nbi/map/android/b;

.field private EM:Lcom/nbi/map/android/c;

.field private eb:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/nbi/map/android/MapView;->q(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid attributeSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/nbi/map/android/MapView;->q(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nbi/map/android/MapView;)Lcom/nbi/map/android/c;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EM:Lcom/nbi/map/android/c;

    return-object v0
.end method

.method static synthetic b(Lcom/nbi/map/android/MapView;)Lcom/nbi/map/android/b;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    return-object v0
.end method

.method private e(Lcom/nbi/map/data/Rectangle;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v5

    if-lt v5, v1, :cond_0

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v5

    if-ge v5, v3, :cond_0

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    if-lt v5, v2, :cond_0

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    if-ge v5, v4, :cond_0

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v5

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-le v5, v1, :cond_0

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    if-gt v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getApiLevel()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private q(Landroid/content/Context;)V
    .locals 2

    const v0, -0x21292b

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lcom/nbi/map/android/b;

    invoke-direct {v0, p1, p0}, Lcom/nbi/map/android/b;-><init>(Landroid/content/Context;Lcom/nbi/map/android/MapView;)V

    iput-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    new-instance v0, Lcom/nbi/map/android/c;

    invoke-direct {v0, p1, p0}, Lcom/nbi/map/android/c;-><init>(Landroid/content/Context;Lcom/nbi/map/android/MapView;)V

    iput-object v0, p0, Lcom/nbi/map/android/MapView;->EM:Lcom/nbi/map/android/c;

    new-instance v0, Lcom/nbi/map/android/MapView$1;

    invoke-direct {v0, p0}, Lcom/nbi/map/android/MapView$1;-><init>(Lcom/nbi/map/android/MapView;)V

    iput-object v0, p0, Lcom/nbi/map/android/MapView;->eb:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    iget-object v1, p0, Lcom/nbi/map/android/MapView;->eb:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/b;->b(Landroid/os/Handler;)V

    const-string v0, "MapView"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addMapLayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/MapLayer;
    .locals 9

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/nbi/map/android/b;->addMapLayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/MapLayer;

    move-result-object v0

    return-object v0
.end method

.method public addPOILayer(I)Lcom/nbi/map/android/POILayer;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->addPOILayer(I)Lcom/nbi/map/android/POILayer;

    move-result-object v0

    return-object v0
.end method

.method public addPOILayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$POIExtractionCallbackListener;Lcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/POILayer;
    .locals 10

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/nbi/map/android/b;->addPOILayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$POIExtractionCallbackListener;Lcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/POILayer;

    move-result-object v0

    return-object v0
.end method

.method public addPin(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/android/Pin;ZZ)I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nbi/map/android/b;->addPin(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/android/Pin;ZZ)I

    move-result v0

    return v0
.end method

.method public addPin(Lcom/nbi/map/android/Pin;ZZ)I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nbi/map/android/b;->addPin(Lcom/nbi/map/android/Pin;ZZ)I

    move-result v0

    return v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PictureLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PictureLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PictureLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public allLayers()Lcom/nbi/map/android/POILayer;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->eD()Lcom/nbi/map/android/POILayer;

    move-result-object v0

    return-object v0
.end method

.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->cancelAnimation()V

    return-void
.end method

.method public cancelPinDrag()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->cancelPinDrag()V

    return-void
.end method

.method public convertCoordindatesToMapXY(Lcom/nbi/map/data/Coordinates;)Lcom/nbi/map/data/Point;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->convertCoordindatesToMapXY(Lcom/nbi/map/data/Coordinates;)Lcom/nbi/map/data/Point;

    move-result-object v0

    return-object v0
.end method

.method public convertMapXYToCoordinates(Lcom/nbi/map/data/Point;)Lcom/nbi/map/data/Coordinates;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->convertMapXYToCoordinates(Lcom/nbi/map/data/Point;)Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    return-object v0
.end method

.method public createImage(IIII)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nbi/map/android/b;->createImage(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public deselectAllPins()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->deselectAllPins()V

    return-void
.end method

.method public destroyImage(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->a(Landroid/graphics/Bitmap;)I

    return-void
.end method

.method public destroyLayer(Lcom/nbi/map/android/CustomLayer;)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->destroyLayer(Lcom/nbi/map/android/CustomLayer;)Z

    move-result v0

    return v0
.end method

.method public dropPin(II)I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/android/b;->dropPin(II)I

    move-result v0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getDefaultPOILayer()Lcom/nbi/map/android/POILayer;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v0

    return-object v0
.end method

.method public getImage(IIIILandroid/graphics/Bitmap;)Z
    .locals 6

    if-nez p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nbi/map/android/b;->getImage(IIIILandroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public getMapCenter()Lcom/nbi/map/data/Coordinates;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->getMapCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    return-object v0
.end method

.method public getMapViewType()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->getMapViewType()I

    move-result v0

    return v0
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->cB()I

    move-result v0

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->cA()I

    move-result v0

    return v0
.end method

.method public getNextPin(I)I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->getNextPin(I)I

    move-result v0

    return v0
.end method

.method public getNextPin(Lcom/nbi/map/android/POILayer;I)I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/android/b;->getNextPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v0

    return v0
.end method

.method public getPin(I)Lcom/nbi/map/android/Pin;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v0

    return-object v0
.end method

.method public getPinCount()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->getPinCount()I

    move-result v0

    return v0
.end method

.method public getPinCount(Lcom/nbi/map/android/POILayer;)I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->getPinCount(Lcom/nbi/map/android/POILayer;)I

    move-result v0

    return v0
.end method

.method public getPrevPin(I)I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->getPrevPin(I)I

    move-result v0

    return v0
.end method

.method public getPrevPin(Lcom/nbi/map/android/POILayer;I)I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/android/b;->getPrevPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v0

    return v0
.end method

.method public getSelectedPin()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->getSelectedPin()I

    move-result v0

    return v0
.end method

.method public getZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->getZoomLevel()I

    move-result v0

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public isImageReady(IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nbi/map/android/b;->isImageReady(IIII)Z

    move-result v0

    return v0
.end method

.method public isLayerVisible(Lcom/nbi/map/android/CustomLayer;)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->isLayerVisible(Lcom/nbi/map/android/CustomLayer;)Z

    move-result v0

    return v0
.end method

.method public isRouteLayerVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->isRouteLayerVisible()Z

    move-result v0

    return v0
.end method

.method public isTrafficIncidentsLayerVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->isTrafficIncidentsLayerVisible()Z

    move-result v0

    return v0
.end method

.method public isTrafficLayerVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->isTrafficLayerVisible()Z

    move-result v0

    return v0
.end method

.method public mapFromURL(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->mapFromURL(Ljava/lang/String;)V

    return-void
.end method

.method public mapGetLocation()Lcom/nbi/map/data/Coordinates;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->mapGetLocation()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    return-object v0
.end method

.method public mapShowLocation(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->mapShowLocation(Z)Z

    move-result v0

    return v0
.end method

.method public mapToURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->mapToURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mapUpdateLocation(Lcom/nbi/location/Location;ZZZZ)Z
    .locals 6

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nbi/map/android/b;->mapUpdateLocation(Lcom/nbi/location/Location;ZZZZ)Z

    move-result v0

    return v0
.end method

.method public mapUpdateLocation(Lcom/nbi/map/data/Coordinates;IZZZ)Z
    .locals 6

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nbi/map/android/b;->mapUpdateLocation(Lcom/nbi/map/data/Coordinates;IZZZ)Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    iget-object v2, p0, Lcom/nbi/map/android/MapView;->EM:Lcom/nbi/map/android/c;

    invoke-virtual {v2, v0, v1}, Lcom/nbi/map/android/c;->l(II)V

    return-void
.end method

.method protected onMapCenterAndZoomChange(DDDZZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMapPaint(Landroid/graphics/Canvas;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMapResize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const-string v0, "MapView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widthMeasureSpec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MapView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "heightMeasureSpec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    invoke-static {v0, p1}, Lcom/nbi/map/android/MapView;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/nbi/map/android/MapView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onPinDragEnd(ILcom/nbi/map/data/Coordinates;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPinDragRequest(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPinDropEvent(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPinTouched(IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onRouteVisibleChange(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTrafficIncidentsVisibleChange(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onTrafficVisibleChange(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final pe()Lcom/nbi/map/android/b;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    return-object v0
.end method

.method public removeAllPins()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->removeAllPins()V

    return-void
.end method

.method public removeAllPins(Lcom/nbi/map/android/POILayer;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->removeAllPins(Lcom/nbi/map/android/POILayer;)V

    return-void
.end method

.method public removePin(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->removePin(I)V

    return-void
.end method

.method public selectPin(I)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->selectPin(I)Z

    move-result v0

    return v0
.end method

.method public selectPin(Lcom/nbi/map/android/Pin;)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->selectPin(Lcom/nbi/map/android/Pin;)Z

    move-result v0

    return v0
.end method

.method public setCenterAndZoomLevel(Lcom/nbi/map/data/Coordinates;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nbi/map/android/b;->setCenterAndZoomLevel(Lcom/nbi/map/data/Coordinates;IZ)V

    return-void
.end method

.method public setConfiguration(Lcom/nbi/map/android/MapConfiguration;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid map configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->setConfiguration(Lcom/nbi/map/android/MapConfiguration;)V

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EM:Lcom/nbi/map/android/c;

    invoke-virtual {v0}, Lcom/nbi/map/android/c;->iW()V

    iget-object v3, p0, Lcom/nbi/map/android/MapView;->EM:Lcom/nbi/map/android/c;

    invoke-virtual {p1}, Lcom/nbi/map/android/MapConfiguration;->getZoomButtons()Z

    move-result v4

    iget-object v5, v3, Lcom/nbi/map/android/c;->qq:Lcom/nbi/map/android/a;

    if-eqz v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v3, Lcom/nbi/map/android/c;->qp:Lcom/nbi/map/android/a;

    if-eqz v4, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/nbi/map/android/MapView;->EM:Lcom/nbi/map/android/c;

    invoke-virtual {p1}, Lcom/nbi/map/android/MapConfiguration;->getTrafficButton()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v0, v3, Lcom/nbi/map/android/c;->qr:Lcom/nbi/map/android/a;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v3, Lcom/nbi/map/android/c;->qs:Lcom/nbi/map/android/a;

    :cond_1
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v4, v3, Lcom/nbi/map/android/c;->qt:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v5, v3, Lcom/nbi/map/android/c;->qr:Lcom/nbi/map/android/a;

    iget-object v0, v3, Lcom/nbi/map/android/c;->nz:Lcom/nbi/map/android/MapView;

    iget-object v0, v0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0}, Lcom/nbi/map/android/b;->isTrafficLayerVisible()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v3, Lcom/nbi/map/android/c;->qs:Lcom/nbi/map/android/a;

    iget-object v5, v3, Lcom/nbi/map/android/c;->nz:Lcom/nbi/map/android/MapView;

    iget-object v5, v5, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v5}, Lcom/nbi/map/android/b;->isTrafficLayerVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method public setMapCenter(Lcom/nbi/map/data/Coordinates;Z)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/android/b;->setMapCenter(Lcom/nbi/map/data/Coordinates;Z)V

    return-void
.end method

.method public setMapViewType(I)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->setMapViewType(I)Z

    move-result v0

    return v0
.end method

.method public setOnKeyEventListener(Lcom/nbi/map/android/MapView$OnKeyEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->setOnKeyEventListener(Lcom/nbi/map/android/MapView$OnKeyEventListener;)V

    return-void
.end method

.method public setOnMapCenterAndZoomChangeListener(Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->setOnMapCenterAndZoomChangeListener(Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;)V

    return-void
.end method

.method public setOnMapPaintListener(Lcom/nbi/map/android/MapView$OnMapPaintListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->setOnMapPaintListener(Lcom/nbi/map/android/MapView$OnMapPaintListener;)V

    return-void
.end method

.method public setOnMapResizeListener(Lcom/nbi/map/android/MapView$OnMapResizeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->setOnMapResizeListener(Lcom/nbi/map/android/MapView$OnMapResizeListener;)V

    return-void
.end method

.method public setOnMapTrafficVisibleChangeListener(Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->setOnMapTrafficVisibleChangeListener(Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;)V

    return-void
.end method

.method public setOnPinEventListener(Lcom/nbi/map/android/MapView$OnPinEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->setOnPinEventListener(Lcom/nbi/map/android/MapView$OnPinEventListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPin(ILcom/nbi/map/android/Pin;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nbi/map/android/b;->setPin(ILcom/nbi/map/android/Pin;Z)Z

    move-result v0

    return v0
.end method

.method public setPinDuringDrag(Lcom/nbi/map/android/Pin;)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->setPinDuringDrag(Lcom/nbi/map/android/Pin;)V

    return-void
.end method

.method public setPinImage(ILcom/nbi/map/android/PinImage;)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/android/b;->setPinImage(ILcom/nbi/map/android/PinImage;)Z

    move-result v0

    return v0
.end method

.method public setStandardPinImage(ILcom/nbi/map/android/PinImage;)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/android/b;->setStandardPinImage(ILcom/nbi/map/android/PinImage;)Z

    move-result v0

    return v0
.end method

.method public setZoomLevel(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/android/b;->setZoomLevel(IZ)Z

    move-result v0

    return v0
.end method

.method public showLayer(Lcom/nbi/map/android/CustomLayer;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/android/b;->showLayer(Lcom/nbi/map/android/CustomLayer;Z)Z

    move-result v0

    return v0
.end method

.method public showPinLayer(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->showPinLayer(Z)Z

    move-result v0

    return v0
.end method

.method public showRouteLayer(Lcom/nbi/map/data/ManeuverList;Lcom/nbi/map/data/ManeuverList;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 7

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nbi/map/android/b;->showRouteLayer(Lcom/nbi/map/data/ManeuverList;Lcom/nbi/map/data/ManeuverList;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public showTrafficIncidentsLayer(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->showTrafficIncidentsLayer(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/nbi/map/android/MapView;->onTrafficIncidentsVisibleChange(ZZ)Z

    :cond_0
    return v0
.end method

.method public showTrafficLayer(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->showTrafficLayer(Z)Z

    move-result v0

    return v0
.end method

.method public zoomToAllPins()Z
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/b;->zoomToAllPinsIntoRect(Lcom/nbi/map/data/Rectangle;)Z

    move-result v0

    return v0
.end method

.method public zoomToAllPins(Lcom/nbi/map/android/POILayer;)Z
    .locals 2

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nbi/map/android/b;->zoomToAllPinsIntoRect(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/data/Rectangle;)Z

    move-result v0

    return v0
.end method

.method public zoomToAllPinsIntoRect(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/data/Rectangle;)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/nbi/map/android/MapView;->e(Lcom/nbi/map/data/Rectangle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/android/b;->zoomToAllPinsIntoRect(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/data/Rectangle;)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomToAllPinsIntoRect(Lcom/nbi/map/data/Rectangle;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nbi/map/android/MapView;->e(Lcom/nbi/map/data/Rectangle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/b;->zoomToAllPinsIntoRect(Lcom/nbi/map/data/Rectangle;)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomToBoundingBox(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;Z)V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nbi/map/android/b;->zoomToBoundingBox(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;Z)V

    return-void
.end method

.method public zoomToPin(II)Z
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/MapView;->EL:Lcom/nbi/map/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/android/b;->zoomToPin(II)Z

    move-result v0

    return v0
.end method
