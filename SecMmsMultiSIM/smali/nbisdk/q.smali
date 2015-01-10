.class public final Lnbisdk/q;
.super Lnbisdk/dh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/q$a;,
        Lnbisdk/q$b;
    }
.end annotation


# instance fields
.field private final iQ:Lnbisdk/q$b;


# direct methods
.method constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lnbisdk/dh;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/dh;->CO:Z

    new-instance v0, Lnbisdk/q$b;

    new-instance v1, Lnbisdk/q$1;

    invoke-direct {v1, p0}, Lnbisdk/q$1;-><init>(Lnbisdk/q;)V

    invoke-direct {v0, p1, v1}, Lnbisdk/q$b;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnbisdk/q;->iQ:Lnbisdk/q$b;

    return-void
.end method

.method static synthetic a(Lnbisdk/q;)Lnbisdk/q$b;
    .locals 1

    iget-object v0, p0, Lnbisdk/q;->iQ:Lnbisdk/q$b;

    return-object v0
.end method

.method static synthetic a(Lnbisdk/q;Ljava/util/Collection;)V
    .locals 11

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lnbisdk/dh;->eB()Lcom/nbi/map/android/Pin;

    move-result-object v0

    invoke-virtual {p0}, Lnbisdk/dh;->removeAllPins()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :goto_0
    :pswitch_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/fd;

    invoke-virtual {v0}, Lnbisdk/fd;->fU()Lnbisdk/jh;

    move-result-object v1

    const/16 v0, 0x9

    invoke-virtual {v1}, Lnbisdk/jh;->getSeverity()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_1
    :pswitch_1
    invoke-virtual {v1}, Lnbisdk/jh;->getRoad()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnbisdk/de;->setName(Ljava/lang/String;)V

    new-instance v6, Lnbisdk/xb;

    invoke-direct {v6, v0, v1}, Lnbisdk/xb;-><init>(ILnbisdk/jh;)V

    invoke-virtual {v1}, Lnbisdk/jh;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    const-string v1, "traffic_miscellaneous_event"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v6, v0}, Lcom/nbi/map/android/Pin;->setSubTitle(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    if-nez v6, :cond_1

    :cond_0
    move v1, v3

    :goto_3
    if-eqz v1, :cond_6

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0, v6, v1, v3, v4}, Lnbisdk/dh;->a(Lcom/nbi/map/android/Pin;ZZZ)I

    move-object v2, v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xa

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    const-string v1, "traffic_accident"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    const-string v1, "traffic_congestion"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    const-string v1, "traffic_disabled_vehicle"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    const-string v1, "traffic_road_hazard"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    const-string v1, "traffic_unscheduled_construction"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    const-string v1, "traffic_scheduled_construction"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    const-string v1, "traffic_planned_event"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_b
    invoke-virtual {p0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    const-string v1, "traffic_mass_transit"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_c
    invoke-virtual {p0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    const-string v1, "traffic_other_news"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    invoke-virtual {v6}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-nez v7, :cond_2

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v7, v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/jh;

    invoke-virtual {v6}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Place;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/jh;

    invoke-virtual {v0}, Lnbisdk/jh;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lnbisdk/jh;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v3

    goto/16 :goto_3

    :cond_4
    move v1, v4

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    return-void

    :cond_6
    move-object v0, v2

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private fW()Z
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    invoke-virtual {p0}, Lnbisdk/au$d;->jq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/cj;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lnbisdk/dh;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V

    goto :goto_0
.end method

.method public final b(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jq()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnbisdk/dh;->b(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V

    goto :goto_0
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lnbisdk/q;->iQ:Lnbisdk/q$b;

    invoke-virtual {v0}, Lnbisdk/q$b;->cancel()V

    invoke-super {p0}, Lnbisdk/dh;->destroy()V

    return-void
.end method

.method public final dz()Z
    .locals 1

    invoke-direct {p0}, Lnbisdk/q;->fW()Z

    move-result v0

    return v0
.end method

.method protected final fV()Z
    .locals 1

    invoke-virtual {p0}, Lnbisdk/au$d;->jq()Z

    move-result v0

    return v0
.end method

.method public final fX()Z
    .locals 1

    invoke-super {p0}, Lnbisdk/dh;->fX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnbisdk/au$d;->jq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final o(Z)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lnbisdk/q;->fW()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-virtual {p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v1

    invoke-virtual {p0}, Lnbisdk/au$d;->gH()Lnbisdk/cc;

    move-result-object v2

    invoke-virtual {v1, v8, v8, v0}, Lnbisdk/gp;->c(II[D)V

    new-instance v3, Lnbisdk/ew;

    aget-wide v4, v0, v8

    aget-wide v6, v0, v9

    invoke-direct {v3, v4, v5, v6, v7}, Lnbisdk/ew;-><init>(DD)V

    invoke-virtual {v2}, Lnbisdk/cc;->cg()Lcom/nbi/map/data/Rectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Lnbisdk/cc;->cg()Lcom/nbi/map/data/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v2, v0}, Lnbisdk/gp;->c(II[D)V

    new-instance v1, Lnbisdk/ew;

    aget-wide v4, v0, v8

    aget-wide v6, v0, v9

    invoke-direct {v1, v4, v5, v6, v7}, Lnbisdk/ew;-><init>(DD)V

    iget-object v0, p0, Lnbisdk/q;->iQ:Lnbisdk/q$b;

    invoke-virtual {v0, v3, v1}, Lnbisdk/q$b;->a(Lnbisdk/ew;Lnbisdk/ew;)V

    iget-object v0, p0, Lnbisdk/q;->iQ:Lnbisdk/q$b;

    invoke-virtual {v0}, Lnbisdk/q$b;->oO()V

    :cond_0
    return-void
.end method
