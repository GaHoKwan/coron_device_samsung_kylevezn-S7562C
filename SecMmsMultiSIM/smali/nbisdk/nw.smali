.class public final Lnbisdk/nw;
.super Lnbisdk/eq;


# instance fields
.field private jl:D

.field private uk:Lnbisdk/ee;

.field private ul:I

.field private um:Z

.field private un:Landroid/hardware/SensorManager;

.field private uo:Landroid/hardware/SensorEventListener;


# direct methods
.method protected constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lnbisdk/eq;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V

    const/16 v0, 0xfa

    iput v0, p0, Lnbisdk/nw;->ul:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/nw;->um:Z

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lnbisdk/nw;->jl:D

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/nw;->un:Landroid/hardware/SensorManager;

    new-instance v0, Lnbisdk/ee;

    invoke-direct {v0, p0}, Lnbisdk/ee;-><init>(Lnbisdk/au$d;)V

    iput-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/au$d;->cC()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/if;->setLatitude(D)V

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/au$d;->cD()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/if;->setLongitude(D)V

    new-instance v0, Lnbisdk/nw$1;

    invoke-direct {v0, p0}, Lnbisdk/nw$1;-><init>(Lnbisdk/nw;)V

    iput-object v0, p0, Lnbisdk/nw;->uo:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private P(Z)V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lnbisdk/nw;->un:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lnbisdk/nw;->un:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lnbisdk/nw;->un:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lnbisdk/nw;->un:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lnbisdk/nw;->uo:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lnbisdk/nw;->un:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lnbisdk/nw;->uo:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lnbisdk/nw;)D
    .locals 2

    iget-wide v0, p0, Lnbisdk/nw;->jl:D

    return-wide v0
.end method

.method static synthetic b(Lnbisdk/nw;)Lnbisdk/ee;
    .locals 1

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    return-object v0
.end method


# virtual methods
.method public final Q(Z)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/nw;->uo:Landroid/hardware/SensorEventListener;

    if-nez v1, :cond_0

    move p1, v0

    :cond_0
    iget-object v1, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v1, p1}, Lnbisdk/ee;->u(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lnbisdk/nw;->P(Z)V

    return-void
.end method

.method public final a(Lcom/nbi/map/data/Coordinates;I)I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v2}, Lnbisdk/if;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v0

    iget-object v2, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v2}, Lnbisdk/if;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/if;->setLatitude(D)V

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/if;->setLongitude(D)V

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v0}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nbi/map/android/Pin;->setValidPlaceInfo(Z)V

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v0, v4, v4}, Lnbisdk/ee;->b(ZZ)V

    :cond_1
    iput p2, p0, Lnbisdk/nw;->ul:I

    return v4
.end method

.method public final a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    check-cast v0, Lnbisdk/pj;

    const/4 v1, 0x2

    new-array v5, v1, [I

    if-eqz p3, :cond_3

    iget-object v1, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v1}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v3}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->c(DD[I)V

    :goto_1
    iget-boolean v1, p0, Lnbisdk/nw;->um:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v1}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v3}, Lnbisdk/if;->getLongitude()D

    iget v3, p0, Lnbisdk/nw;->ul:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/pj;->a(DF)V

    invoke-virtual {v0}, Lnbisdk/pj;->lk()I

    move-result v1

    invoke-virtual {v0}, Lnbisdk/pj;->li()Lnbisdk/pj;

    move-result-object v2

    invoke-virtual {p0}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lnbisdk/cj;->eS()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lnbisdk/pj;->lk()I

    move-result v1

    invoke-virtual {v0}, Lnbisdk/pj;->lk()I

    move-result v0

    invoke-virtual {v2}, Lnbisdk/pj;->lk()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v3}, Lnbisdk/cj;->fa()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    :goto_2
    iget-object v1, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v1, p0}, Lnbisdk/jt;->d(Lnbisdk/au$d;)V

    iget-object v1, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v1, p0, p1, v0}, Lnbisdk/jt;->a(Lnbisdk/au$d;Landroid/graphics/Canvas;I)V

    :cond_1
    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lnbisdk/au;->y(I)I

    move-result v0

    iget-object v1, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget-boolean v1, v1, Lnbisdk/jt;->pa:Z

    if-nez v1, :cond_5

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    iget v0, p0, Lnbisdk/nw;->ul:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_5

    :cond_2
    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v0, p1, p2, p0, v6}, Lnbisdk/ee;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Lnbisdk/au$d;Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v1}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v3}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->a(DD[I)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lnbisdk/au$d;->cH()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lnbisdk/au$d;->jp()Lnbisdk/lt;

    move-result-object v0

    invoke-static {v0, v1}, Lnbisdk/q$a$a;->a(Lnbisdk/lt;I)I

    move-result v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v0, v6}, Lnbisdk/ee;->t(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public final a(IZ)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v0}, Lnbisdk/ee;->eQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget-boolean v0, v0, Lnbisdk/jt;->pa:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget v0, v0, Lnbisdk/jt;->oZ:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    invoke-virtual {v0}, Lnbisdk/dr;->ez()V

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v0, v1, v1}, Lnbisdk/ee;->b(ZZ)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lnbisdk/ip;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final aX(I)[Lcom/nbi/map/data/Coordinates;
    .locals 16

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/nbi/map/data/Coordinates;

    const/4 v2, 0x0

    new-instance v3, Lcom/nbi/map/data/Coordinates;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v4}, Lnbisdk/if;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v6}, Lnbisdk/if;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/nbi/map/data/Coordinates;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v4}, Lnbisdk/if;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v6}, Lnbisdk/if;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    aput-object v3, v1, v2

    if-lez p1, :cond_0

    move/from16 v0, p1

    int-to-double v2, v0

    const-wide v4, 0x41584df980000000L

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v4}, Lnbisdk/if;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L

    div-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v6}, Lnbisdk/if;->getLongitude()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L

    div-double/2addr v6, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    add-double/2addr v8, v4

    const-wide v10, 0x4066800000000000L

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L

    div-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    sub-double v10, v6, v10

    const-wide v12, 0x4066800000000000L

    mul-double/2addr v10, v12

    const-wide v12, 0x400921fb54442d18L

    div-double/2addr v10, v12

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v12, v8, v9}, Lcom/nbi/map/data/Coordinates;->setLatitude(D)V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v8, v10, v11}, Lcom/nbi/map/data/Coordinates;->setLongitude(D)V

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    sub-double v8, v4, v8

    const-wide v10, 0x4066800000000000L

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L

    div-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v2, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    add-double/2addr v2, v6

    const-wide v4, 0x4066800000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4, v8, v9}, Lcom/nbi/map/data/Coordinates;->setLatitude(D)V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4, v2, v3}, Lcom/nbi/map/data/Coordinates;->setLongitude(D)V

    :cond_0
    return-object v1
.end method

.method public final b(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
    .locals 2

    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget-boolean v0, v0, Lnbisdk/jt;->pa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p0, v1}, Lnbisdk/ee;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Lnbisdk/au$d;Z)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/nw;->uo:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->un:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->un:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lnbisdk/nw;->uo:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    iput-object v2, p0, Lnbisdk/nw;->un:Landroid/hardware/SensorManager;

    iput-object v2, p0, Lnbisdk/nw;->uo:Landroid/hardware/SensorEventListener;

    invoke-super {p0}, Lnbisdk/au$d;->destroy()V

    return-void
.end method

.method protected final eB()Lcom/nbi/map/android/Pin;
    .locals 1

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget-boolean v0, v0, Lnbisdk/jt;->pa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v0}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final eC()I
    .locals 1

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget-boolean v0, v0, Lnbisdk/jt;->pa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget v0, v0, Lnbisdk/jt;->oZ:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final ez()V
    .locals 3

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget-boolean v0, v0, Lnbisdk/jt;->pa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnbisdk/ee;->b(ZZ)V

    :cond_0
    return-void
.end method

.method public final f(II)I
    .locals 3

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v0, p1, p2}, Lnbisdk/ee;->d(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget v1, v1, Lnbisdk/jt;->oZ:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lnbisdk/uu;->onPinTouched(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget v0, v0, Lnbisdk/jt;->oZ:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final fX()Z
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    return v0
.end method

.method protected final g(II)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget-boolean v0, v0, Lnbisdk/jt;->pa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v0, p1, p2}, Lnbisdk/ee;->e(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPin(I)Lcom/nbi/map/android/Pin;
    .locals 1

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget v0, v0, Lnbisdk/jt;->oZ:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v0}, Lnbisdk/if;->mo()Lcom/nbi/map/android/Pin;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(II)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lnbisdk/nw;->g(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget v1, v1, Lnbisdk/jt;->oZ:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lnbisdk/uu;->onPinTouched(IZ)Z

    :cond_0
    return-void
.end method

.method public final kZ()Lcom/nbi/map/data/Coordinates;
    .locals 5

    new-instance v0, Lcom/nbi/map/data/Coordinates;

    iget-object v1, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v1}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v3}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    return-object v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    invoke-virtual {v2, v0, v1}, Lnbisdk/ee;->d(II)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lnbisdk/nw;->g(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setHeading(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/nw;->jl:D

    return-void
.end method

.method public final setVisible(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lnbisdk/au$d;->setVisible(Z)V

    iget-object v2, p0, Lnbisdk/nw;->uk:Lnbisdk/ee;

    iget v2, v2, Lnbisdk/jt;->oY:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lnbisdk/nw;->P(Z)V

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
