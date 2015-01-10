.class public final Lnbisdk/ve;
.super Lnbisdk/ct;


# instance fields
.field private AP:Ljava/lang/String;

.field private AQ:[B

.field private AR:Lcom/nbi/map/data/BoundingBox;

.field private AS:Lcom/nbi/map/data/BoundingBox;

.field private final AT:Lcom/nbi/map/data/Rectangle;

.field private dR:I


# direct methods
.method protected constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lnbisdk/ct;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V

    new-instance v0, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v0}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v0, p0, Lnbisdk/ve;->AT:Lcom/nbi/map/data/Rectangle;

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/ve;->dR:I

    return-void
.end method

.method private nP()V
    .locals 14

    iget v0, p0, Lnbisdk/ve;->dR:I

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v1

    iput v1, p0, Lnbisdk/ve;->dR:I

    iget-object v1, p0, Lnbisdk/ve;->AT:Lcom/nbi/map/data/Rectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nbi/map/data/Rectangle;->set(IIII)V

    new-instance v12, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v12}, Lcom/nbi/map/data/Rectangle;-><init>()V

    new-instance v13, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v13}, Lcom/nbi/map/data/Rectangle;-><init>()V

    const/4 v1, 0x2

    new-array v5, v1, [I

    const/4 v1, 0x2

    new-array v11, v1, [I

    iget-object v1, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    iget-object v1, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v7

    iget-object v1, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    :goto_1
    iget-object v3, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    iget-object v6, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v6}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v9

    cmpg-double v3, v3, v9

    if-gez v3, :cond_5

    iget-object v3, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v9

    iget-object v3, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->b(DD[I)V

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lnbisdk/gp;->b(DD[I)V

    const/4 v1, 0x0

    aget v2, v11, v1

    const/4 v1, 0x0

    aget v3, v5, v1

    if-ge v2, v3, :cond_6

    sub-int v1, v3, v2

    add-int/lit8 v1, v1, 0x1

    :goto_3
    const/4 v3, 0x1

    aget v4, v11, v3

    const/4 v3, 0x1

    aget v6, v5, v3

    if-ge v4, v6, :cond_7

    sub-int v3, v6, v4

    add-int/lit8 v3, v3, 0x1

    :goto_4
    invoke-virtual {v12, v2}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    invoke-virtual {v12, v4}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    invoke-virtual {v12, v1}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    invoke-virtual {v12, v3}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    :cond_2
    iget-object v1, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_8

    iget-object v1, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v7

    iget-object v1, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    :goto_5
    iget-object v3, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    iget-object v6, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v6}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v9

    cmpg-double v3, v3, v9

    if-gez v3, :cond_9

    iget-object v3, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v9

    iget-object v3, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    :goto_6
    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->b(DD[I)V

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lnbisdk/gp;->b(DD[I)V

    const/4 v0, 0x0

    aget v1, v11, v0

    const/4 v0, 0x0

    aget v2, v5, v0

    if-ge v1, v2, :cond_a

    sub-int v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    :goto_7
    const/4 v2, 0x1

    aget v3, v11, v2

    const/4 v2, 0x1

    aget v4, v5, v2

    if-ge v3, v4, :cond_b

    sub-int v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    :goto_8
    invoke-virtual {v13, v1}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    invoke-virtual {v13, v3}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    invoke-virtual {v13, v0}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    invoke-virtual {v13, v2}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    :cond_3
    iget-object v0, p0, Lnbisdk/ve;->AT:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0, v12}, Lcom/nbi/map/data/Rectangle;->set(Lcom/nbi/map/data/Rectangle;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v7

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    iget-object v6, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v6}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v9

    goto/16 :goto_2

    :cond_6
    sub-int v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto/16 :goto_3

    :cond_7
    sub-int v3, v4, v6

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto/16 :goto_4

    :cond_8
    iget-object v1, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v1}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v7

    goto/16 :goto_5

    :cond_9
    iget-object v3, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v3}, Lcom/nbi/map/data/BoundingBox;->getPoint1()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v3

    iget-object v6, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    invoke-virtual {v6}, Lcom/nbi/map/data/BoundingBox;->getPoint2()Lcom/nbi/map/data/Coordinates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v9

    goto/16 :goto_6

    :cond_a
    sub-int v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto/16 :goto_7

    :cond_b
    sub-int v2, v3, v4

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_8
.end method


# virtual methods
.method protected final a(Lnbisdk/hf;)Lnbisdk/eu;
    .locals 11

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

    iget-object v9, p0, Lnbisdk/ve;->AQ:[B

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lnbisdk/eu;-><init>(IIILjava/lang/String;FILjava/lang/String;Ljava/lang/String;[BZ)V

    iget-object v1, p0, Lnbisdk/ve;->AP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnbisdk/eu;->X(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnbisdk/ct;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/nbi/map/data/ManeuverList;Lcom/nbi/map/data/ManeuverList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v0, p0, Lnbisdk/ve;->AQ:[B

    iput-object v0, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    iput-object v0, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    const-string v0, ""

    iput-object v0, p0, Lnbisdk/ve;->AP:Ljava/lang/String;

    iget-object v0, p0, Lnbisdk/ct;->eO:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lnbisdk/ct;->eP:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lnbisdk/ve;->AT:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/nbi/map/data/Rectangle;->set(IIII)V

    iput v1, p0, Lnbisdk/ve;->dR:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nbi/map/data/ManeuverList;->getRouteID()[B

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ve;->AQ:[B

    invoke-virtual {p1}, Lcom/nbi/map/data/ManeuverList;->routeBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ve;->AR:Lcom/nbi/map/data/BoundingBox;

    if-nez p3, :cond_2

    const-string v0, "80008019"

    :goto_0
    iput-object v0, p0, Lnbisdk/ve;->AP:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nbi/map/data/ManeuverList;->getRouteID()[B

    invoke-virtual {p2}, Lcom/nbi/map/data/ManeuverList;->routeBoundingBox()Lcom/nbi/map/data/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ve;->AS:Lcom/nbi/map/data/BoundingBox;

    if-nez p4, :cond_3

    const-string v0, "0000FF19"

    :goto_1
    iput-object v0, p0, Lnbisdk/ve;->AP:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lnbisdk/ve;->nP()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "19"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "19"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected final n(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/navbuilder/nb/NBException;
        }
    .end annotation

    invoke-virtual {p0}, Lnbisdk/au$d;->gH()Lnbisdk/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnbisdk/cc;->a(Lnbisdk/ct;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/ct;->eO:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    iget-object v1, p0, Lnbisdk/ct;->eP:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    invoke-virtual {p0}, Lnbisdk/ct;->du()Lnbisdk/cr;

    move-result-object v2

    new-instance v3, Lnbisdk/mp;

    invoke-direct {v3}, Lnbisdk/mp;-><init>()V

    invoke-direct {p0}, Lnbisdk/ve;->nP()V

    invoke-virtual {p0, v0}, Lnbisdk/ve;->a(Lnbisdk/hf;)Lnbisdk/eu;

    move-result-object v4

    iget-object v5, p0, Lnbisdk/ve;->AT:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Lnbisdk/hf;->hk()I

    move-result v6

    invoke-virtual {v0}, Lnbisdk/hf;->cE()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {v0}, Lnbisdk/hf;->hl()I

    move-result v7

    invoke-virtual {v0}, Lnbisdk/hf;->cE()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Lnbisdk/hf;->cE()I

    move-result v8

    invoke-virtual {v0}, Lnbisdk/hf;->cE()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/nbi/map/data/Rectangle;->intersects(IIII)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    new-instance v2, Lnbisdk/iy;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v4, v3}, Lnbisdk/iy;-><init>(Lnbisdk/eu;[B)V

    invoke-virtual {v0, p0, v2}, Lnbisdk/hf;->b(Lnbisdk/ct;Lnbisdk/iy;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lnbisdk/eu;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v3, v4}, Lnbisdk/mp;->b(Lnbisdk/eu;)V

    invoke-virtual {v2, v3}, Lnbisdk/cr;->a(Lnbisdk/mp;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ct;->eP:Ljava/util/Vector;

    goto :goto_0

    :cond_2
    return-void
.end method
