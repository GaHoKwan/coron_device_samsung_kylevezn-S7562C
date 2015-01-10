.class public Lnbisdk/ct;
.super Lnbisdk/au$d;


# instance fields
.field protected eO:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/internal/tilemap/ImageTile;",
            ">;"
        }
    .end annotation
.end field

.field protected eP:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/iy;",
            ">;"
        }
    .end annotation
.end field

.field private eQ:Lnbisdk/fy;

.field private eR:Lcom/nbi/map/android/MapLayer;

.field private eS:Lnbisdk/qk;

.field protected eT:I

.field protected eU:J

.field private eV:Lcom/nbi/map/data/BoundingBox;

.field private eW:Lcom/nbi/map/android/MapView$UserParameterCallbackListener;

.field private eX:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lnbisdk/au$d;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/ct;->eO:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/ct;->eP:Ljava/util/Vector;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/ct;->eU:J

    return-void
.end method

.method private a(Lnbisdk/hf;Z)Lnbisdk/iy;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TileLayer.fetchSingleTile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "async"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lnbisdk/mp;

    invoke-direct {v0}, Lnbisdk/mp;-><init>()V

    invoke-virtual {p0, p1}, Lnbisdk/ct;->a(Lnbisdk/hf;)Lnbisdk/eu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/mp;->b(Lnbisdk/eu;)V

    :try_start_0
    invoke-virtual {p0}, Lnbisdk/ct;->du()Lnbisdk/cr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnbisdk/cr;->a(Lnbisdk/mp;)Ljava/util/Vector;
    :try_end_0
    .catch Lcom/navbuilder/nb/NBException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnbisdk/jg;->f(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/ct;->eP:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/ct;->eP:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/iy;

    invoke-virtual {v0}, Lnbisdk/iy;->ij()[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v2, v2

    if-lez v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lnbisdk/ct;->a(Landroid/graphics/Canvas;Lnbisdk/iy;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnbisdk/iy;->ik()Lnbisdk/eu;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at TileLayer.draw, Drawing from cached tiles, TILE IS NULL; map type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnbisdk/ct;->dn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnbisdk/eu;->getX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnbisdk/eu;->getY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnbisdk/eu;->fk()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnbisdk/eu;->fl()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0x10000000

    const/16 v4, 0x8

    invoke-static {v0, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnbisdk/ct;->eP:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method private a(Lnbisdk/hf;Lnbisdk/iy;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TileLayer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, ".hasBitmap"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lnbisdk/hf;->b(Lnbisdk/ct;Lnbisdk/iy;)V

    return-void

    :cond_0
    const-string v0, ".notHasBitMap"

    goto :goto_0
.end method


# virtual methods
.method public final F(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-virtual {v0, p1}, Lnbisdk/ij;->F(Ljava/lang/String;)V

    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-virtual {v0, p1}, Lnbisdk/ij;->G(Ljava/lang/String;)V

    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-virtual {v0, p1}, Lnbisdk/ij;->H(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lnbisdk/hf;)Lnbisdk/eu;
    .locals 10

    new-instance v0, Lnbisdk/eu;

    invoke-virtual {p1}, Lnbisdk/hf;->hk()I

    move-result v1

    invoke-virtual {p1}, Lnbisdk/hf;->hl()I

    move-result v2

    invoke-virtual {p1}, Lnbisdk/hf;->hm()I

    move-result v3

    invoke-virtual {p0}, Lnbisdk/ct;->dn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnbisdk/hf;->getPriority()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lnbisdk/hf;->cE()I

    move-result v6

    invoke-virtual {p0}, Lnbisdk/ct;->dq()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnbisdk/ct;->dp()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lnbisdk/eu;-><init>(IIILjava/lang/String;FILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/ct;->dr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lnbisdk/ct;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Lnbisdk/iy;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lnbisdk/iy;->ik()Lnbisdk/eu;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lnbisdk/ct;->dt()Lnbisdk/pc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lnbisdk/eu;->getX()I

    move-result v1

    invoke-virtual {v4}, Lnbisdk/eu;->getY()I

    move-result v2

    invoke-virtual {v4}, Lnbisdk/eu;->fk()I

    move-result v5

    invoke-virtual {v4}, Lnbisdk/eu;->getSize()I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Lnbisdk/hf;->b(IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/pc;->aX(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v3

    move-object v1, v3

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnbisdk/ct;->du()Lnbisdk/cr;

    move-result-object v6

    invoke-virtual {v4}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lnbisdk/ct;->dn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p2}, Lnbisdk/iy;->ij()[B

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v7, v2

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NBI_MAP_LAYER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_3
    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lnbisdk/ct;->a(Lnbisdk/hf;Z)Lnbisdk/iy;

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    array-length v7, v2

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :try_start_0
    array-length v8, v2

    invoke-virtual {p0}, Lnbisdk/ct;->dv()Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    invoke-static {v2, v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lnbisdk/hf;->hn()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lnbisdk/hf;->ho()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v6, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object v0, v1

    move-object v1, v0

    goto :goto_0

    :cond_6
    array-length v7, v2

    if-nez v7, :cond_7

    array-length v7, v2

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lnbisdk/ct;->do()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NBI_ROUTE_LAYER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_7
    invoke-direct {p0, v0, p2}, Lnbisdk/ct;->a(Lnbisdk/hf;Lnbisdk/iy;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0, p0}, Lnbisdk/hf;->d(Lnbisdk/ct;)Lnbisdk/iy;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lnbisdk/iy;->ij()[B

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v6, v10}, Lnbisdk/cr;->clear(Z)V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-direct {p0, v0, v3}, Lnbisdk/ct;->a(Lnbisdk/hf;Lnbisdk/iy;)V

    goto :goto_2
.end method

.method public final a(Lcom/nbi/map/android/MapLayer;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ct;->eR:Lcom/nbi/map/android/MapLayer;

    return-void
.end method

.method public final a(Lcom/nbi/map/android/MapView$UserParameterCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ct;->eW:Lcom/nbi/map/android/MapView$UserParameterCallbackListener;

    return-void
.end method

.method public final a(Lcom/nbi/map/data/BoundingBox;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ct;->eV:Lcom/nbi/map/data/BoundingBox;

    return-void
.end method

.method protected a(Lnbisdk/ct;Lnbisdk/iy;)V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/ct;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lnbisdk/ct;->a(Lnbisdk/ct;Lnbisdk/iy;)V

    :cond_0
    return-void
.end method

.method public a(Lnbisdk/fy;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ct;->eQ:Lnbisdk/fy;

    return-void
.end method

.method public final a(Lnbisdk/qk;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ct;->eS:Lnbisdk/qk;

    return-void
.end method

.method public a(Lnbisdk/lv;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;)V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnbisdk/ct;->dr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lnbisdk/ct;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;)V

    goto :goto_0
.end method

.method public b(Lnbisdk/qk;)V
    .locals 0

    return-void
.end method

.method public final dl()Lcom/nbi/map/android/MapLayer;
    .locals 1

    iget-object v0, p0, Lnbisdk/ct;->eR:Lcom/nbi/map/android/MapLayer;

    return-object v0
.end method

.method public final dm()Lnbisdk/qk;
    .locals 1

    iget-object v0, p0, Lnbisdk/ct;->eS:Lnbisdk/qk;

    return-object v0
.end method

.method public final dn()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-virtual {v0}, Lnbisdk/ij;->dn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final do()Z
    .locals 2

    invoke-virtual {p0}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBI_TRAFFIC_LAYER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final dp()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-virtual {v0}, Lnbisdk/ij;->dp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dq()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-virtual {v0}, Lnbisdk/ij;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dr()Z
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-virtual {v0}, Lnbisdk/ij;->dr()Z

    move-result v0

    return v0
.end method

.method public final ds()Z
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-virtual {v0}, Lnbisdk/ij;->ds()Z

    move-result v0

    return v0
.end method

.method public dt()Lnbisdk/pc;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/ct;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/ct;->dt()Lnbisdk/pc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public du()Lnbisdk/cr;
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/ct;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/ct;->du()Lnbisdk/cr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dv()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/ct;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/ct;->dv()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected dw()Landroid/graphics/Bitmap$Config;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/ct;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/ct;->dw()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected dx()V
    .locals 0

    return-void
.end method

.method public dy()Z
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lnbisdk/ct;->eT:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnbisdk/ct;->do()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnbisdk/au$d;->jq()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnbisdk/ct;->do()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnbisdk/ct;->eS:Lnbisdk/qk;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v2

    invoke-virtual {v0, v2}, Lnbisdk/au;->y(I)I

    move-result v0

    iget-object v2, p0, Lnbisdk/ct;->eS:Lnbisdk/qk;

    invoke-virtual {v2}, Lnbisdk/qk;->lZ()I

    move-result v2

    if-lt v0, v2, :cond_4

    iget-object v2, p0, Lnbisdk/ct;->eS:Lnbisdk/qk;

    invoke-virtual {v2}, Lnbisdk/qk;->getMaxZoom()I

    move-result v2

    if-le v0, v2, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lnbisdk/ct;->eU:J

    iget v0, p0, Lnbisdk/ct;->eT:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    sub-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public dz()Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/ct;->eU:J

    invoke-virtual {p0}, Lnbisdk/au$d;->gH()Lnbisdk/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/cc;->b(Lnbisdk/ct;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final l(Z)V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-virtual {v0, p1}, Lnbisdk/ij;->l(Z)V

    return-void
.end method

.method public final m(Z)V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-virtual {v0, p1}, Lnbisdk/ij;->m(Z)V

    return-void
.end method

.method protected n(Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/navbuilder/nb/NBException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/ct;->eS:Lnbisdk/qk;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/au;->y(I)I

    move-result v0

    iget-object v1, p0, Lnbisdk/ct;->eS:Lnbisdk/qk;

    invoke-virtual {v1}, Lnbisdk/qk;->lZ()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lnbisdk/ct;->eS:Lnbisdk/qk;

    invoke-virtual {v1}, Lnbisdk/qk;->getMaxZoom()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->gH()Lnbisdk/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/cc;->a(Lnbisdk/ct;)Ljava/util/Vector;

    move-result-object v11

    iget-object v0, p0, Lnbisdk/ct;->eO:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lnbisdk/ct;->eP:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/ct;->du()Lnbisdk/cr;

    move-result-object v12

    move v10, v9

    :goto_1
    add-int/lit8 v0, v9, 0x2

    if-ge v10, v0, :cond_7

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v10, v0, :cond_7

    new-instance v13, Lnbisdk/mp;

    invoke-direct {v13}, Lnbisdk/mp;-><init>()V

    invoke-virtual {v11, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    iget-object v1, p0, Lnbisdk/ct;->eV:Lcom/nbi/map/data/BoundingBox;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const/4 v2, 0x4

    new-array v2, v2, [D

    fill-array-data v2, :array_1

    invoke-virtual {v0}, Lnbisdk/hf;->hk()I

    move-result v3

    invoke-virtual {v0}, Lnbisdk/hf;->hl()I

    move-result v4

    invoke-virtual {v0}, Lnbisdk/hf;->hm()I

    move-result v5

    invoke-static {v3, v4, v5, v1, v2}, Lnbisdk/dd;->a(III[D[D)V

    iget-object v3, p0, Lnbisdk/ct;->eV:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x2

    aget-wide v5, v2, v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_6

    iget-object v3, p0, Lnbisdk/ct;->eV:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x0

    aget-wide v5, v2, v5

    cmpl-double v2, v3, v5

    if-lez v2, :cond_6

    iget-object v2, p0, Lnbisdk/ct;->eV:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v2}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v2

    const/4 v4, 0x2

    aget-wide v4, v1, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6

    iget-object v2, p0, Lnbisdk/ct;->eV:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v2}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v2

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_6

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_5

    :cond_2
    invoke-virtual {p0, v0}, Lnbisdk/ct;->a(Lnbisdk/hf;)Lnbisdk/eu;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lnbisdk/eu;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/ct;->eR:Lcom/nbi/map/android/MapLayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/ct;->eS:Lnbisdk/qk;

    invoke-virtual {v14, v0}, Lnbisdk/eu;->b(Lnbisdk/qk;)V

    iget v0, p0, Lnbisdk/ct;->eT:I

    invoke-virtual {v14, v0}, Lnbisdk/eu;->x(I)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/ct;->eW:Lcom/nbi/map/android/MapView$UserParameterCallbackListener;

    iget-object v2, p0, Lnbisdk/ct;->eR:Lcom/nbi/map/android/MapLayer;

    invoke-virtual {v14}, Lnbisdk/eu;->getX()I

    move-result v3

    invoke-virtual {v14}, Lnbisdk/eu;->getY()I

    move-result v4

    invoke-virtual {v14}, Lnbisdk/eu;->fk()I

    move-result v5

    invoke-virtual {v14}, Lnbisdk/eu;->fz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lnbisdk/eu;->getSize()I

    move-result v7

    iget-object v8, p0, Lnbisdk/ct;->eX:Ljava/lang/Object;

    invoke-interface/range {v0 .. v8}, Lnbisdk/uu;->a(Lcom/nbi/map/android/MapView$UserParameterCallbackListener;Lcom/nbi/map/android/CustomLayer;IIILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lnbisdk/eu;->Y(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jC()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v14}, Lnbisdk/eu;->ft()V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v13, v14}, Lnbisdk/mp;->b(Lnbisdk/eu;)V

    invoke-virtual {v12, v13}, Lnbisdk/cr;->a(Lnbisdk/mp;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ct;->eP:Ljava/util/Vector;

    :cond_5
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v9, 0x2

    move v9, v0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected o(Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lnbisdk/ct;->n(Z)V
    :try_end_0
    .catch Lcom/navbuilder/nb/NBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnbisdk/jg;->f(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setUserData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ct;->eX:Ljava/lang/Object;

    return-void
.end method

.method public final x(I)V
    .locals 0

    iput p1, p0, Lnbisdk/ct;->eT:I

    return-void
.end method
