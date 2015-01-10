.class public final Lnbisdk/gq;
.super Lnbisdk/ct;


# instance fields
.field private lk:Lcom/nbi/map/android/POILayer;

.field private ll:Lnbisdk/dh;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnbisdk/ct;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V

    return-void
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

    invoke-virtual {p0, p1, v0}, Lnbisdk/gq;->a(Landroid/graphics/Canvas;Lnbisdk/iy;)V

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


# virtual methods
.method public final a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
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

    invoke-direct {p0, p1, p2}, Lnbisdk/gq;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Landroid/graphics/Canvas;Lnbisdk/iy;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lnbisdk/iy;->ik()Lnbisdk/eu;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnbisdk/gq;->dt()Lnbisdk/pc;

    move-result-object v0

    invoke-virtual {v2}, Lnbisdk/eu;->getX()I

    move-result v1

    invoke-virtual {v2}, Lnbisdk/eu;->getY()I

    move-result v3

    invoke-virtual {v2}, Lnbisdk/eu;->fk()I

    move-result v4

    invoke-virtual {v2}, Lnbisdk/eu;->getSize()I

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lnbisdk/hf;->b(IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/pc;->aX(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "auto_pin"

    if-ne v1, v4, :cond_2

    invoke-virtual {v2}, Lnbisdk/eu;->dI()Lnbisdk/qk;

    move-result-object v1

    iget-object v4, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v4}, Lnbisdk/dh;->dm()Lnbisdk/qk;

    move-result-object v4

    if-ne v1, v4, :cond_2

    invoke-virtual {p2}, Lnbisdk/iy;->ij()[B

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POITileLayer"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_3

    const-string v1, ".hasBitmap"

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0, p0, p2}, Lnbisdk/hf;->b(Lnbisdk/ct;Lnbisdk/iy;)V

    iget-object v1, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v1, v0, v4}, Lnbisdk/dh;->a(Lnbisdk/hf;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-string v1, ".notHasBitMap"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final b(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;)V
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

    invoke-direct {p0, p1, p2}, Lnbisdk/gq;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;)V

    goto :goto_0
.end method

.method public final dt()Lnbisdk/pc;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/au;->jH()Lnbisdk/pc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final dy()Z
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lnbisdk/ct;->eT:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v1

    iget-object v2, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v2}, Lnbisdk/dh;->dm()Lnbisdk/qk;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/qk;->lZ()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v1

    iget-object v2, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v2}, Lnbisdk/dh;->dm()Lnbisdk/qk;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/qk;->getMaxZoom()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-wide v1, p0, Lnbisdk/ct;->eU:J

    iget v3, p0, Lnbisdk/ct;->eT:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    sub-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final dz()Z
    .locals 1

    invoke-super {p0}, Lnbisdk/ct;->dz()Z

    iget-object v0, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v0}, Lnbisdk/dh;->oD()V

    const/4 v0, 0x1

    return v0
.end method

.method public final gH()Lnbisdk/cc;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnbisdk/au;->jI()Lnbisdk/cc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected final n(Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/navbuilder/nb/NBException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v0}, Lnbisdk/dh;->dm()Lnbisdk/qk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    iget-object v1, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v1}, Lnbisdk/dh;->dm()Lnbisdk/qk;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/qk;->lZ()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    iget-object v1, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v1}, Lnbisdk/dh;->dm()Lnbisdk/qk;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/qk;->getMaxZoom()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnbisdk/gq;->gH()Lnbisdk/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/cc;->a(Lnbisdk/ct;)Ljava/util/Vector;

    move-result-object v11

    iget-object v0, p0, Lnbisdk/ct;->eO:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lnbisdk/ct;->eP:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {p0}, Lnbisdk/gq;->dt()Lnbisdk/pc;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/pc;->lh()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0}, Lnbisdk/dh;->oz()Lnbisdk/dh$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnbisdk/dh$b;->m(Ljava/util/Vector;)V

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

    if-ge v10, v0, :cond_5

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v10, v0, :cond_5

    new-instance v13, Lnbisdk/mp;

    invoke-direct {v13}, Lnbisdk/mp;-><init>()V

    invoke-virtual {v11, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    iget-object v1, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v1}, Lnbisdk/dh;->ox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    new-array v2, v2, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x4

    new-array v3, v3, [D

    fill-array-data v3, :array_1

    invoke-virtual {v0}, Lnbisdk/hf;->hk()I

    move-result v4

    invoke-virtual {v0}, Lnbisdk/hf;->hl()I

    move-result v5

    invoke-virtual {v0}, Lnbisdk/hf;->hm()I

    move-result v6

    invoke-static {v4, v5, v6, v2, v3}, Lnbisdk/dd;->a(III[D[D)V

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x2

    aget-wide v6, v3, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    cmpl-double v3, v4, v6

    if-lez v3, :cond_4

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    const/4 v5, 0x2

    aget-wide v5, v2, v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    const/4 v1, 0x0

    aget-wide v1, v2, v1

    cmpg-double v1, v3, v1

    if-gez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lnbisdk/ct;->a(Lnbisdk/hf;)Lnbisdk/eu;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lnbisdk/eu;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v0}, Lnbisdk/dh;->dm()Lnbisdk/qk;

    move-result-object v0

    invoke-virtual {v14, v0}, Lnbisdk/eu;->b(Lnbisdk/qk;)V

    iget v0, p0, Lnbisdk/ct;->eT:I

    invoke-virtual {v14, v0}, Lnbisdk/eu;->x(I)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v1}, Lnbisdk/dh;->oy()Lcom/nbi/map/android/MapView$UserParameterCallbackListener;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/gq;->lk:Lcom/nbi/map/android/POILayer;

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

    iget-object v8, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    invoke-virtual {v8}, Lnbisdk/dh;->getUserData()Ljava/lang/Object;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lnbisdk/uu;->a(Lcom/nbi/map/android/MapView$UserParameterCallbackListener;Lcom/nbi/map/android/CustomLayer;IIILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lnbisdk/eu;->Y(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lnbisdk/mp;->b(Lnbisdk/eu;)V

    invoke-virtual {v12, v13}, Lnbisdk/cr;->a(Lnbisdk/mp;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ct;->eP:Ljava/util/Vector;

    :cond_3
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
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

.method protected final o(Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lnbisdk/gq;->n(Z)V
    :try_end_0
    .catch Lcom/navbuilder/nb/NBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnbisdk/jg;->f(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setPOILayer(Lcom/nbi/map/android/POILayer;)V
    .locals 1

    iput-object p1, p0, Lnbisdk/gq;->lk:Lcom/nbi/map/android/POILayer;

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jR()Lnbisdk/dr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/dr;->b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/gq;->ll:Lnbisdk/dh;

    return-void
.end method
