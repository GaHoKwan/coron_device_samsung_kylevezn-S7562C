.class final Lcom/nbi/map/android/b;
.super Landroid/view/View;

# interfaces
.implements Lnbisdk/cq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nbi/map/android/b$c;,
        Lcom/nbi/map/android/b$a;,
        Lcom/nbi/map/android/b$b;
    }
.end annotation


# instance fields
.field private dA:Lnbisdk/au;

.field private dI:Landroid/graphics/Paint;

.field private eb:Landroid/os/Handler;

.field private eo:Lnbisdk/im;

.field private gb:Lcom/nbi/map/android/POILayer;

.field private nA:Z

.field private nr:Lcom/nbi/map/android/MapConfiguration;

.field private ns:Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;

.field private nt:Lcom/nbi/map/android/MapView$OnMapPaintListener;

.field private nu:Lcom/nbi/map/android/MapView$OnMapResizeListener;

.field private nv:Lcom/nbi/map/android/MapView$OnPinEventListener;

.field private nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

.field private nx:Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

.field private ny:I

.field private nz:Lcom/nbi/map/android/MapView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nbi/map/android/MapView;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/nbi/map/android/b;->nA:Z

    iput-object p2, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nbi/map/android/b;->dI:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/nbi/map/android/b;->dI:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-boolean v3, p0, Lcom/nbi/map/android/b;->nA:Z

    :try_start_0
    invoke-static {}, Lnbisdk/ax;->aX()Lnbisdk/im;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/android/b;->eo:Lnbisdk/im;

    iget-object v0, p0, Lcom/nbi/map/android/b;->eo:Lnbisdk/im;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b;->eo:Lnbisdk/im;

    new-instance v1, Lcom/nbi/map/android/b$c;

    invoke-direct {v1, p0}, Lcom/nbi/map/android/b$c;-><init>(Lcom/nbi/map/android/b;)V

    new-instance v2, Lcom/nbi/map/android/b$a;

    invoke-direct {v2, p0}, Lcom/nbi/map/android/b$a;-><init>(Lcom/nbi/map/android/b;)V

    invoke-virtual {v0, p1, v1, v2}, Lnbisdk/im;->a(Landroid/content/Context;Lnbisdk/ha;Lnbisdk/jk;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroid/view/View;->requestFocusFromTouch()Z

    const-string v0, "TileMapView"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    return-object v0
.end method

.method private a(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    iget-object v1, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1}, Lcom/nbi/map/android/MapView$OnKeyEventListener;->onKeyDirectionalDown(Lcom/nbi/map/android/MapView;I)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v1, Lnbisdk/mn;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lnbisdk/mn;-><init>(Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Lnbisdk/au;->a(Lnbisdk/lv;)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/b;->nx:Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

    return-object v0
.end method

.method private b(IZZ)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/nbi/map/android/b;->cA()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/nbi/map/android/b;->cB()I

    move-result v1

    if-gt p1, v1, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->z(I)I

    move-result v0

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1, v0, p2, p3}, Lnbisdk/au;->c(IZZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnMapPaintListener;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/b;->nt:Lcom/nbi/map/android/MapView$OnMapPaintListener;

    return-object v0
.end method

.method static synthetic d(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnMapResizeListener;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/b;->nu:Lcom/nbi/map/android/MapView$OnMapResizeListener;

    return-object v0
.end method

.method static synthetic e(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnPinEventListener;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/b;->nv:Lcom/nbi/map/android/MapView$OnPinEventListener;

    return-object v0
.end method

.method static synthetic f(Lcom/nbi/map/android/b;)Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/b;->ns:Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;

    return-object v0
.end method

.method static synthetic g(Lcom/nbi/map/android/b;)Lnbisdk/au;
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    return-object v0
.end method

.method private if()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/nbi/map/android/b;->nA:Z

    iput-object v1, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    iput-object v1, p0, Lcom/nbi/map/android/b;->eo:Lnbisdk/im;

    iput-object v1, p0, Lcom/nbi/map/android/b;->nx:Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

    iput-object v1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    iput-object v1, p0, Lcom/nbi/map/android/b;->nv:Lcom/nbi/map/android/MapView$OnPinEventListener;

    iput-object v1, p0, Lcom/nbi/map/android/b;->nu:Lcom/nbi/map/android/MapView$OnMapResizeListener;

    iput-object v1, p0, Lcom/nbi/map/android/b;->nt:Lcom/nbi/map/android/MapView$OnMapPaintListener;

    iput-object v1, p0, Lcom/nbi/map/android/b;->ns:Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->destroy()V

    :cond_1
    iput-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    iput-object v1, p0, Lcom/nbi/map/android/b;->dI:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/nbi/map/android/b;->nr:Lcom/nbi/map/android/MapConfiguration;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nbi/map/android/b;->nr:Lcom/nbi/map/android/MapConfiguration;

    invoke-virtual {v0}, Lcom/nbi/map/android/MapConfiguration;->getNBIContext()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lnbisdk/bt;->a(Lnbisdk/cq;)V

    :cond_2
    iput-object v1, p0, Lcom/nbi/map/android/b;->nr:Lcom/nbi/map/android/MapConfiguration;

    :cond_3
    invoke-static {v2}, Lnbisdk/pu;->clear(Z)V

    goto :goto_0
.end method

.method private isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(D)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x6

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)I
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final addMapLayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/MapLayer;
    .locals 9

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-gez p6, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "validityPeriod is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layerURL is null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "$user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-nez p7, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layerUrl contains $user but userCallbackListener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x1

    if-eq p5, v0, :cond_5

    const/4 v0, 0x2

    if-eq p5, v0, :cond_5

    const/4 v0, 0x3

    if-eq p5, v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid layerType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "$sz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jC()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layerUrl does not contain $sz token and force256 is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lnbisdk/au;->addMapLayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/MapLayer;

    move-result-object v0

    goto :goto_0
.end method

.method public final addPOILayer(I)Lcom/nbi/map/android/POILayer;
    .locals 2

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid layerType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->addPOILayer(I)Lcom/nbi/map/android/POILayer;

    move-result-object v0

    goto :goto_0
.end method

.method public final addPOILayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$POIExtractionCallbackListener;Lcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/POILayer;
    .locals 10

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-gez p6, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "validityPeriod is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layerURL is null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "$user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-nez p8, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layerUrl contains $user but userCallbackListener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p7, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "poiExtractionCallbackListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x5

    if-eq p5, v0, :cond_6

    const/4 v0, 0x4

    if-eq p5, v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid layerType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lnbisdk/au;->addPOILayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$POIExtractionCallbackListener;Lcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/POILayer;

    move-result-object v0

    goto :goto_0
.end method

.method public final addPin(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/android/Pin;ZZ)I
    .locals 6

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x7

    if-le v1, v2, :cond_3

    :cond_2
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnbisdk/au;->a(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/android/Pin;ZZZ)I

    move-result v0

    goto :goto_0
.end method

.method public final addPin(Lcom/nbi/map/android/Pin;ZZ)I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jR()Lnbisdk/dr;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/dr;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/nbi/map/android/b;->addPin(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/android/Pin;ZZ)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnbisdk/au;->e(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nbi/map/android/b;->if()V

    goto :goto_0
.end method

.method final b(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/b;->eb:Landroid/os/Handler;

    return-void
.end method

.method public final c(ZZ)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nbi/map/android/b;->getZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lcom/nbi/map/android/b;->cA()I

    move-result v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2, v2}, Lcom/nbi/map/android/b;->b(IZZ)Z

    goto :goto_0
.end method

.method public final cA()I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->dJ()I

    move-result v0

    goto :goto_0
.end method

.method public final cB()I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->dK()I

    move-result v0

    goto :goto_0
.end method

.method public final cancelAnimation()V
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->cancelAnimation()V

    goto :goto_0
.end method

.method public final cancelPinDrag()V
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->cancelPinDrag()V

    goto :goto_0
.end method

.method public final convertCoordindatesToMapXY(Lcom/nbi/map/data/Coordinates;)Lcom/nbi/map/data/Point;
    .locals 6

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->ji()Lnbisdk/gp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->a(DD[I)V

    new-instance v0, Lcom/nbi/map/data/Point;

    const/4 v1, 0x0

    aget v1, v5, v1

    const/4 v2, 0x1

    aget v2, v5, v2

    invoke-direct {v0, v1, v2}, Lcom/nbi/map/data/Point;-><init>(II)V

    goto :goto_0
.end method

.method public final convertMapXYToCoordinates(Lcom/nbi/map/data/Point;)Lcom/nbi/map/data/Coordinates;
    .locals 6

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [D

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->ji()Lnbisdk/gp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nbi/map/data/Point;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/nbi/map/data/Point;->getY()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lnbisdk/gp;->a(II[D)V

    new-instance v0, Lcom/nbi/map/data/Coordinates;

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    goto :goto_0
.end method

.method public final createImage(IIII)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/au;->createImage(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(ZZ)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nbi/map/android/b;->getZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lcom/nbi/map/android/b;->cB()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2, v2}, Lcom/nbi/map/android/b;->b(IZZ)Z

    goto :goto_0
.end method

.method public final deselectAllPins()V
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->ez()V

    goto :goto_0
.end method

.method public final destroyLayer(Lcom/nbi/map/android/CustomLayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->a(Lcom/nbi/map/android/CustomLayer;)Z

    move-result v0

    goto :goto_0
.end method

.method public final dropPin(II)I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1, p2}, Lnbisdk/au;->dropPin(II)I

    move-result v0

    goto :goto_0
.end method

.method public final eD()Lcom/nbi/map/android/POILayer;
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->gb:Lcom/nbi/map/android/POILayer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jR()Lnbisdk/dr;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/dr;->eD()Lcom/nbi/map/android/POILayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/android/b;->gb:Lcom/nbi/map/android/POILayer;

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->gb:Lcom/nbi/map/android/POILayer;

    goto :goto_0
.end method

.method public final getDefaultPOILayer()Lcom/nbi/map/android/POILayer;
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v0

    goto :goto_0
.end method

.method public final getImage(IIIILandroid/graphics/Bitmap;)Z
    .locals 6

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnbisdk/au;->a(IIIILandroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getMapCenter()Lcom/nbi/map/data/Coordinates;
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au$d;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    goto :goto_0
.end method

.method public final getMapViewType()I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nbi/map/android/b;->ny:I

    goto :goto_0
.end method

.method public final getNextPin(I)I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jR()Lnbisdk/dr;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/dr;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nbi/map/android/b;->getNextPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v0

    goto :goto_0
.end method

.method public final getNextPin(Lcom/nbi/map/android/POILayer;I)I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1, p2}, Lnbisdk/au;->getNextPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v0

    goto :goto_0
.end method

.method public final getPin(I)Lcom/nbi/map/android/Pin;
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPinCount()I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jR()Lnbisdk/dr;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/dr;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nbi/map/android/b;->getPinCount(Lcom/nbi/map/android/POILayer;)I

    move-result v0

    goto :goto_0
.end method

.method public final getPinCount(Lcom/nbi/map/android/POILayer;)I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->getPinCount(Lcom/nbi/map/android/POILayer;)I

    move-result v0

    goto :goto_0
.end method

.method public final getPrevPin(I)I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jR()Lnbisdk/dr;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/dr;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nbi/map/android/b;->getPrevPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v0

    goto :goto_0
.end method

.method public final getPrevPin(Lcom/nbi/map/android/POILayer;I)I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1, p2}, Lnbisdk/au;->getPrevPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v0

    goto :goto_0
.end method

.method public final getSelectedPin()I
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->eC()I

    move-result v0

    goto :goto_0
.end method

.method public final getZoomLevel()I
    .locals 2

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/au;->y(I)I

    move-result v0

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au;->dJ()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->dJ()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au;->dK()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->dK()I

    move-result v0

    goto :goto_0
.end method

.method public final ig()Lnbisdk/mt;
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->ig()Lnbisdk/mt;

    move-result-object v0

    goto :goto_0
.end method

.method public final isAnimating()Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->isAnimating()Z

    move-result v0

    goto :goto_0
.end method

.method public final isImageReady(IIII)Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/au;->isImageReady(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public final isLayerVisible(Lcom/nbi/map/android/CustomLayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b;->gb:Lcom/nbi/map/android/POILayer;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->isLayerVisible(Lcom/nbi/map/android/CustomLayer;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isRouteLayerVisible()Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->isRouteLayerVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public final isTrafficIncidentsLayerVisible()Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->isTrafficIncidentsLayerVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public final isTrafficLayerVisible()Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->isTrafficLayerVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public final mapFromURL(Ljava/lang/String;)V
    .locals 21

    invoke-direct/range {p0 .. p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v8, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "center="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v4, v4, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-int/lit8 v6, v6, 0x1

    const-string v7, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v16, "zoom="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    const-string v17, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v17

    add-int/lit8 v16, v16, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const-string v16, "type="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    const-string v17, "&"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    const-string v17, "r"

    add-int/lit8 v18, v16, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v15, 0x1

    move/from16 v19, v15

    :goto_1
    const-string v15, "place1="

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1d

    const/4 v14, 0x1

    const-string v11, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_7

    add-int/lit8 v15, v15, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v18, v11

    move v11, v14

    :goto_2
    const-string v14, "pin1line1="

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1c

    const-string v13, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    const/4 v15, -0x1

    if-eq v13, v15, :cond_8

    add-int/lit8 v14, v14, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v13

    :goto_3
    const-string v13, "pin1line2="

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1b

    const-string v12, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_9

    add-int/lit8 v13, v13, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    :goto_4
    const-string v12, "pin1Type="

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_b

    const-string v13, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    add-int/lit8 v14, v12, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "0x"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v12, v12, 0x2

    :cond_2
    const/4 v14, -0x1

    if-eq v13, v14, :cond_a

    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v15, v12

    :goto_5
    const-string v12, "place2="

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1a

    const/4 v11, 0x2

    const-string v3, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v13, -0x1

    if-eq v3, v13, :cond_c

    add-int/lit8 v12, v12, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v14, v3

    move v3, v11

    :goto_6
    const-string v11, "pin2line1="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_19

    const-string v10, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    const/4 v12, -0x1

    if-eq v10, v12, :cond_d

    add-int/lit8 v11, v11, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    :goto_7
    const-string v10, "pin2line2="

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_18

    const-string v9, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_e

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v12, v9

    :goto_8
    const-string v9, "pin2Type="

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_17

    const-string v8, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    add-int/lit8 v8, v9, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "0x"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    add-int/lit8 v8, v9, 0x2

    :goto_9
    const/4 v9, -0x1

    if-eq v10, v9, :cond_f

    add-int/lit8 v8, v8, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v11, v8

    :goto_a
    const/4 v8, 0x2

    if-ne v3, v8, :cond_15

    const/4 v8, 0x1

    if-eq v15, v8, :cond_15

    const/4 v8, 0x2

    if-eq v15, v8, :cond_15

    const/4 v8, 0x1

    if-eq v11, v8, :cond_15

    const/4 v8, 0x2

    if-eq v11, v8, :cond_15

    const/4 v3, 0x1

    move v10, v3

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lnbisdk/au;->a(DDZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0, v4, v5}, Lnbisdk/au;->c(IZZ)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/b;->setMapViewType(I)Z

    if-lez v10, :cond_0

    new-instance v3, Lcom/nbi/map/data/Place;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Lcom/nbi/map/data/Place;-><init>([B)V

    const/4 v4, 0x1

    if-ne v10, v4, :cond_10

    new-instance v5, Lcom/nbi/map/android/Pin;

    const/4 v4, 0x0

    invoke-direct {v5, v15, v3, v4}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;Z)V

    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/nbi/map/android/Pin;->setTitle(Ljava/lang/String;)V

    :cond_3
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/nbi/map/android/Pin;->setSubTitle(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v4}, Lnbisdk/au;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lnbisdk/au;->a(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/android/Pin;ZZZ)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    :try_start_1
    const-string v17, "h"

    add-int/lit8 v18, v16, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v15, 0x4

    move/from16 v19, v15

    goto/16 :goto_1

    :cond_6
    const-string v17, "a"

    add-int/lit8 v16, v16, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_1e

    const/4 v15, 0x2

    move/from16 v19, v15

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v11, v15, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v18, v11

    move v11, v14

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v13, v14, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v13

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v12, v13, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v12, v12, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v15, v12

    goto/16 :goto_5

    :cond_b
    const/4 v12, 0x4

    move v15, v12

    goto/16 :goto_5

    :cond_c
    add-int/lit8 v3, v12, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v14, v3

    move v3, v11

    goto/16 :goto_6

    :cond_d
    add-int/lit8 v10, v11, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    goto/16 :goto_7

    :cond_e
    add-int/lit8 v9, v10, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nbi/map/data/Place;->makeUnicodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v12, v9

    goto/16 :goto_8

    :cond_f
    add-int/lit8 v8, v8, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v11, v8

    goto/16 :goto_a

    :cond_10
    const/4 v4, 0x2

    if-ne v10, v4, :cond_0

    new-instance v4, Lcom/nbi/map/data/Place;

    invoke-direct {v4, v14}, Lcom/nbi/map/data/Place;-><init>([B)V

    new-instance v5, Lcom/nbi/map/android/Pin;

    invoke-direct {v5, v15, v3}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;)V

    if-eqz v17, :cond_11

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/nbi/map/android/Pin;->setTitle(Ljava/lang/String;)V

    :cond_11
    if-eqz v16, :cond_12

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/nbi/map/android/Pin;->setSubTitle(Ljava/lang/String;)V

    :cond_12
    new-instance v9, Lcom/nbi/map/android/Pin;

    invoke-direct {v9, v11, v4}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;)V

    if-eqz v13, :cond_13

    invoke-virtual {v9, v13}, Lcom/nbi/map/android/Pin;->setTitle(Ljava/lang/String;)V

    :cond_13
    if-eqz v12, :cond_14

    invoke-virtual {v9, v12}, Lcom/nbi/map/android/Pin;->setSubTitle(Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v4}, Lnbisdk/au;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lnbisdk/au;->a(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/android/Pin;ZZZ)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v4}, Lnbisdk/au;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v9

    invoke-virtual/range {v3 .. v8}, Lnbisdk/au;->a(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/android/Pin;ZZZ)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    move v10, v3

    goto/16 :goto_b

    :cond_16
    move v8, v9

    goto/16 :goto_9

    :cond_17
    move v11, v8

    goto/16 :goto_a

    :cond_18
    move-object v12, v9

    goto/16 :goto_8

    :cond_19
    move-object v13, v10

    goto/16 :goto_7

    :cond_1a
    move-object v14, v3

    move v3, v11

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v16, v12

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v17, v13

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v18, v11

    move v11, v14

    goto/16 :goto_2

    :cond_1e
    move/from16 v19, v15

    goto/16 :goto_1
.end method

.method public final mapGetLocation()Lcom/nbi/map/data/Coordinates;
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->mapGetLocation()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    goto :goto_0
.end method

.method public final mapShowLocation(Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->mapShowLocation(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final mapToURL()Ljava/lang/String;
    .locals 12

    const/4 v10, 0x1

    const/4 v3, -0x1

    const/4 v9, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au$d;->getCenter()Lcom/nbi/map/data/Coordinates;

    move-result-object v4

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v5

    invoke-virtual {p0}, Lcom/nbi/map/android/b;->getMapViewType()I

    move-result v2

    const-string v0, "r"

    if-ne v2, v9, :cond_9

    const-string v0, "a"

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://nbi.atlasbook.com/map/map?center="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/nbi/map/android/b;->l(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/nbi/map/android/b;->l(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&zoom="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    iget-object v4, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v4}, Lnbisdk/au;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnbisdk/au;->getPinCount(Lcom/nbi/map/android/POILayer;)I

    move-result v6

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->eC()I

    move-result v7

    if-ne v6, v9, :cond_e

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    iget-object v4, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v4}, Lnbisdk/au;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lnbisdk/au;->getNextPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v0

    iget-object v4, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v4, v0}, Lnbisdk/au;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v5

    iget-object v4, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    iget-object v8, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v8}, Lnbisdk/au;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v8

    invoke-virtual {v4, v8, v0}, Lnbisdk/au;->getNextPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v0

    iget-object v4, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v4, v0}, Lnbisdk/au;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v4

    invoke-virtual {v5}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v8

    if-ne v8, v10, :cond_3

    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v8

    if-eq v8, v9, :cond_d

    :cond_3
    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v8

    if-ne v8, v10, :cond_4

    invoke-virtual {v5}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v8

    if-eq v8, v9, :cond_d

    :cond_4
    move-object v4, v1

    move v11, v0

    move-object v0, v1

    move v1, v11

    :goto_2
    if-ne v6, v10, :cond_a

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    iget-object v3, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v3}, Lnbisdk/au;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lnbisdk/au;->getNextPin(Lcom/nbi/map/android/POILayer;I)I

    move-result v0

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1, v0}, Lnbisdk/au;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v0

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&place1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Place;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&pin1line1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&pin1line2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&pin1Type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&place2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/Place;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pin2line1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pin2line2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nbi/map/data/Place;->makeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pin2Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/nbi/map/android/Pin;->getPinType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x4

    if-ne v2, v6, :cond_2

    const-string v0, "h"

    goto/16 :goto_1

    :cond_a
    if-nez v0, :cond_c

    if-nez v4, :cond_c

    if-eq v7, v3, :cond_c

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->eB()Lcom/nbi/map/android/Pin;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_3

    :cond_b
    move-object v0, v2

    goto/16 :goto_4

    :cond_c
    move-object v1, v0

    goto/16 :goto_3

    :cond_d
    move v1, v0

    move-object v0, v5

    goto/16 :goto_2

    :cond_e
    move-object v4, v1

    move-object v0, v1

    move v1, v3

    goto/16 :goto_2
.end method

.method public final mapUpdateLocation(Lcom/nbi/location/Location;ZZZZ)Z
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au;->a(Lcom/nbi/location/Location;ZZZZZ)Z

    move-result v6

    goto :goto_0
.end method

.method public final mapUpdateLocation(Lcom/nbi/map/data/Coordinates;IZZZ)Z
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au;->b(Lcom/nbi/map/data/Coordinates;IZZZZ)Z

    move-result v6

    goto :goto_0
.end method

.method public final onCancelLingerTimer()V
    .locals 0

    return-void
.end method

.method public final onClearCache()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lnbisdk/pu;->clear(Z)V

    return-void
.end method

.method public final onContextDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->if()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "TileMapControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyEvent - unicode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    iget-object v2, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    invoke-interface {v1, v2, p1, p2}, Lcom/nbi/map/android/MapView$OnKeyEventListener;->onKeyDown(Lcom/nbi/map/android/MapView;ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v2, Lnbisdk/vk;

    invoke-direct {v2, p2, v0}, Lnbisdk/vk;-><init>(Landroid/view/KeyEvent;I)V

    invoke-virtual {v1, v2}, Lnbisdk/au;->a(Lnbisdk/lv;)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/nbi/map/android/b;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    iget-object v1, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2}, Lcom/nbi/map/android/MapView$OnKeyEventListener;->onKeyLongPress(Lcom/nbi/map/android/MapView;ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v1, Lnbisdk/vk;

    const/4 v2, 0x4

    invoke-direct {v1, p2, v2}, Lnbisdk/vk;-><init>(Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Lnbisdk/au;->a(Lnbisdk/lv;)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b;->eo:Lnbisdk/im;

    invoke-virtual {v0}, Lnbisdk/im;->gW()Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-boolean v1, p0, Lcom/nbi/map/android/b;->nA:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    iget-object v1, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1}, Lcom/nbi/map/android/MapView$OnKeyEventListener;->onKeyDirectionalLongPress(Lcom/nbi/map/android/MapView;I)Z

    move-result v0

    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v1, Lnbisdk/mn;

    const/4 v2, 0x3

    invoke-direct {v1, p2, v2}, Lnbisdk/mn;-><init>(Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Lnbisdk/au;->a(Lnbisdk/lv;)Z

    move-result v0

    :cond_5
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    iget-object v1, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/nbi/map/android/MapView$OnKeyEventListener;->onKeyMultiple(Lcom/nbi/map/android/MapView;IILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v1, Lnbisdk/vk;

    const/4 v2, 0x2

    invoke-direct {v1, p3, v2, p2}, Lnbisdk/vk;-><init>(Landroid/view/KeyEvent;II)V

    invoke-virtual {v0, v1}, Lnbisdk/au;->a(Lnbisdk/lv;)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/nbi/map/android/b;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    iget-object v1, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2}, Lcom/nbi/map/android/MapView$OnKeyEventListener;->onKeyPreIme(Lcom/nbi/map/android/MapView;ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v1, Lnbisdk/vk;

    const/4 v2, 0x3

    invoke-direct {v1, p2, v2}, Lnbisdk/vk;-><init>(Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Lnbisdk/au;->a(Lnbisdk/lv;)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    iget-object v1, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2}, Lcom/nbi/map/android/MapView$OnKeyEventListener;->onKeyShortcut(Lcom/nbi/map/android/MapView;ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v1, Lnbisdk/vk;

    const/4 v2, 0x5

    invoke-direct {v1, p2, v2}, Lnbisdk/vk;-><init>(Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Lnbisdk/au;->a(Lnbisdk/lv;)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    iget-object v1, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1, p2}, Lcom/nbi/map/android/MapView$OnKeyEventListener;->onKeyUp(Lcom/nbi/map/android/MapView;ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v1, Lnbisdk/vk;

    const/4 v2, 0x5

    invoke-direct {v1, p2, v2}, Lnbisdk/vk;-><init>(Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Lnbisdk/au;->c(Lnbisdk/vk;)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v1, Lnbisdk/vk;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lnbisdk/vk;-><init>(Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Lnbisdk/au;->a(Lnbisdk/lv;)Z

    move-result v0

    :cond_4
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-boolean v1, p0, Lcom/nbi/map/android/b;->nA:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    iget-object v1, p0, Lcom/nbi/map/android/b;->nz:Lcom/nbi/map/android/MapView;

    invoke-interface {v0, v1, p1}, Lcom/nbi/map/android/MapView$OnKeyEventListener;->onKeyDirectionalUp(Lcom/nbi/map/android/MapView;I)Z

    move-result v0

    :cond_5
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v1, Lnbisdk/mn;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2}, Lnbisdk/mn;-><init>(Landroid/view/KeyEvent;I)V

    invoke-virtual {v0, v1}, Lnbisdk/au;->a(Lnbisdk/lv;)Z

    move-result v0

    :cond_6
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v1, Lcom/nbi/map/data/Rectangle;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-direct {v1, p2, p3, v2, v3}, Lcom/nbi/map/data/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lnbisdk/au;->d(Lcom/nbi/map/data/Rectangle;)V

    goto :goto_0
.end method

.method public final onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->onLowMemory()V

    :cond_0
    return-void
.end method

.method protected final onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    return-void
.end method

.method public final onStartLingerTimer()V
    .locals 0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->if()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->eo:Lnbisdk/im;

    invoke-virtual {v0, p1}, Lnbisdk/im;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v2, Lnbisdk/ip;

    invoke-direct {v2, p1}, Lnbisdk/ip;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Lnbisdk/au;->a(Lnbisdk/lv;)Z

    :cond_2
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    new-instance v2, Lnbisdk/mc;

    invoke-direct {v2, p1}, Lnbisdk/mc;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Lnbisdk/au;->a(Lnbisdk/lv;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final removeAllPins()V
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jR()Lnbisdk/dr;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/dr;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nbi/map/android/b;->removeAllPins(Lcom/nbi/map/android/POILayer;)V

    goto :goto_0
.end method

.method public final removeAllPins(Lcom/nbi/map/android/POILayer;)V
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->removeAllPins(Lcom/nbi/map/android/POILayer;)V

    goto :goto_0
.end method

.method public final removePin(I)V
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->removePin(I)V

    goto :goto_0
.end method

.method public final selectPin(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1, p1, v0}, Lnbisdk/au;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final selectPin(Lcom/nbi/map/android/Pin;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1, p1, v0}, Lnbisdk/au;->a(Lcom/nbi/map/android/Pin;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final setCenterAndZoomLevel(Lcom/nbi/map/data/Coordinates;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nbi/map/android/b;->cA()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/nbi/map/android/b;->cA()I

    move-result v5

    :goto_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    const/4 v7, 0x0

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Lnbisdk/au;->a(DDIZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/nbi/map/android/b;->cB()I

    move-result v0

    if-le p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/nbi/map/android/b;->cB()I

    move-result v5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p2}, Lnbisdk/au;->z(I)I

    move-result v5

    goto :goto_1
.end method

.method public final setConfiguration(Lcom/nbi/map/android/MapConfiguration;)V
    .locals 4

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/nbi/map/android/MapConfiguration;->getNBIContext()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lnbisdk/bt;->a(Lnbisdk/cq;Landroid/content/Context;)V

    :goto_1
    iput-object p1, p0, Lcom/nbi/map/android/b;->nr:Lcom/nbi/map/android/MapConfiguration;

    new-instance v1, Lcom/nbi/map/android/b$b;

    invoke-direct {v1, p0, p0}, Lcom/nbi/map/android/b$b;-><init>(Lcom/nbi/map/android/b;Lcom/nbi/map/android/b;)V

    iget-object v2, p0, Lcom/nbi/map/android/b;->eb:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-static {p1, v1, p0, v2, v0}, Lnbisdk/au;->a(Lcom/nbi/map/android/MapConfiguration;Lnbisdk/uu;Landroid/view/View;Landroid/os/Handler;Lcom/nbi/map/data/Rectangle;)Lnbisdk/au;

    move-result-object v0

    iput-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->destroy()V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v0}, Lcom/nbi/map/data/Rectangle;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    goto :goto_2
.end method

.method public final setMapCenter(Lcom/nbi/map/data/Coordinates;Z)V
    .locals 7

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    const/4 v6, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au;->a(DDZZ)V

    goto :goto_0
.end method

.method public final setMapViewType(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jP()V

    iput p1, p0, Lcom/nbi/map/android/b;->ny:I

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jO()V

    iput p1, p0, Lcom/nbi/map/android/b;->ny:I

    move v0, v1

    goto :goto_0

    :pswitch_3
    iput p1, p0, Lcom/nbi/map/android/b;->ny:I

    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jQ()V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final setOnKeyEventListener(Lcom/nbi/map/android/MapView$OnKeyEventListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/nbi/map/android/b;->nw:Lcom/nbi/map/android/MapView$OnKeyEventListener;

    goto :goto_0
.end method

.method public final setOnMapCenterAndZoomChangeListener(Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/nbi/map/android/b;->nx:Lcom/nbi/map/android/MapView$OnMapCenterAndZoomChangeListener;

    goto :goto_0
.end method

.method public final setOnMapPaintListener(Lcom/nbi/map/android/MapView$OnMapPaintListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/nbi/map/android/b;->nt:Lcom/nbi/map/android/MapView$OnMapPaintListener;

    goto :goto_0
.end method

.method public final setOnMapResizeListener(Lcom/nbi/map/android/MapView$OnMapResizeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/map/android/b;->nu:Lcom/nbi/map/android/MapView$OnMapResizeListener;

    return-void
.end method

.method public final setOnMapTrafficVisibleChangeListener(Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/nbi/map/android/b;->ns:Lcom/nbi/map/android/MapView$OnLayerVisibleChangeListener;

    goto :goto_0
.end method

.method public final setOnPinEventListener(Lcom/nbi/map/android/MapView$OnPinEventListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nbi/map/android/b;->nA:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/nbi/map/android/b;->nv:Lcom/nbi/map/android/MapView$OnPinEventListener;

    goto :goto_0
.end method

.method public final setPin(ILcom/nbi/map/android/Pin;Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1, p1, p2, p3, v0}, Lnbisdk/au;->a(ILcom/nbi/map/android/Pin;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final setPinDuringDrag(Lcom/nbi/map/android/Pin;)V
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->setPinDuringDrag(Lcom/nbi/map/android/Pin;)V

    goto :goto_0
.end method

.method public final setPinImage(ILcom/nbi/map/android/PinImage;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1, p2}, Lnbisdk/au;->setPinImage(ILcom/nbi/map/android/PinImage;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setStandardPinImage(ILcom/nbi/map/android/PinImage;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1, p2}, Lnbisdk/au;->setStandardPinImage(ILcom/nbi/map/android/PinImage;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setZoomLevel(IZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nbi/map/android/b;->b(IZZ)Z

    move-result v0

    return v0
.end method

.method public final showLayer(Lcom/nbi/map/android/CustomLayer;Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1, p2}, Lnbisdk/au;->showLayer(Lcom/nbi/map/android/CustomLayer;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final showPinLayer(Z)Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0, p1}, Lnbisdk/au;->q(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final showRouteLayer(Lcom/nbi/map/data/ManeuverList;Lcom/nbi/map/data/ManeuverList;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v7

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lnbisdk/au;->a(Lcom/nbi/map/data/ManeuverList;Lcom/nbi/map/data/ManeuverList;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const/4 v7, 0x1

    goto :goto_0
.end method

.method public final showTrafficIncidentsLayer(Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1, p1, v0}, Lnbisdk/au;->i(ZZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final showTrafficLayer(Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1, p1, v0}, Lnbisdk/au;->h(ZZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final zoomToAllPinsIntoRect(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/data/Rectangle;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1, p1, p2, v0}, Lnbisdk/au;->a(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/data/Rectangle;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final zoomToAllPinsIntoRect(Lcom/nbi/map/data/Rectangle;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jR()Lnbisdk/dr;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/dr;->getDefaultPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nbi/map/android/b;->zoomToAllPinsIntoRect(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/data/Rectangle;)Z

    move-result v0

    goto :goto_0
.end method

.method public final zoomToBoundingBox(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lnbisdk/au;->a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;ZZ)Z

    goto :goto_0
.end method

.method public final zoomToPin(II)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nbi/map/android/b;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nbi/map/android/b;->dA:Lnbisdk/au;

    invoke-virtual {v1, p1, p2, v0}, Lnbisdk/au;->a(IIZ)Z

    move-result v0

    goto :goto_0
.end method
