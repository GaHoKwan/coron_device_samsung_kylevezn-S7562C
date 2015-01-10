.class public Lnbisdk/jt;
.super Ljava/lang/Object;


# instance fields
.field private dI:Landroid/graphics/Paint;

.field private iZ:Lcom/nbi/map/android/Pin$HaloAttributes;

.field private jn:D

.field private jo:D

.field protected oW:[I

.field private oX:I

.field oY:I

.field oZ:I

.field pa:Z

.field protected pb:Z

.field protected pc:[I

.field protected pd:[I

.field protected pe:[I

.field private pf:Lnbisdk/lb;

.field private pg:Landroid/graphics/DashPathEffect;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lnbisdk/jt;->oW:[I

    const/16 v0, 0x40

    iput v0, p0, Lnbisdk/jt;->oX:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/jt;->pb:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lnbisdk/jt;->pc:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lnbisdk/jt;->pd:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lnbisdk/jt;->pe:[I

    new-instance v0, Lcom/nbi/map/android/Pin$HaloAttributes;

    invoke-direct {v0}, Lcom/nbi/map/android/Pin$HaloAttributes;-><init>()V

    iput-object v0, p0, Lnbisdk/jt;->iZ:Lcom/nbi/map/android/Pin$HaloAttributes;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lnbisdk/jt;->pg:Landroid/graphics/DashPathEffect;

    const/4 v0, 0x1

    iput v0, p0, Lnbisdk/jt;->oY:I

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/jt;->oZ:I

    new-instance v0, Lnbisdk/lb;

    invoke-direct {v0, p0}, Lnbisdk/lb;-><init>(Lnbisdk/jt;)V

    iput-object v0, p0, Lnbisdk/jt;->pf:Lnbisdk/lb;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method private static a(JJJJJ)Z
    .locals 6

    sub-long v0, p6, p0

    sub-long v2, p6, p0

    mul-long/2addr v0, v2

    sub-long v2, p8, p2

    sub-long v4, p8, p2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    mul-long v2, p4, p4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(DDLnbisdk/au$d;[I)V
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Lnbisdk/jt;->pf:Lnbisdk/lb;

    invoke-virtual {p5}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    iget-wide v1, v8, Lnbisdk/lb;->qH:D

    cmpl-double v1, v1, p1

    if-nez v1, :cond_0

    iget-wide v1, v8, Lnbisdk/lb;->qI:D

    cmpl-double v1, v1, p3

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, v8, Lnbisdk/lb;->qK:Lnbisdk/be;

    const/4 v2, 0x0

    iput-object v2, v1, Lnbisdk/be;->cw:Lnbisdk/be$a;

    iput-wide p1, v8, Lnbisdk/lb;->qH:D

    iput-wide p3, v8, Lnbisdk/lb;->qI:D

    invoke-virtual {v0}, Lnbisdk/gp;->getZoomLevel()I

    move-result v1

    iput v1, v8, Lnbisdk/lb;->dR:I

    move v1, v6

    :goto_0
    if-eqz v1, :cond_1

    iget-wide v1, v8, Lnbisdk/lb;->qH:D

    iget-wide v3, v8, Lnbisdk/lb;->qI:D

    iget-object v5, v8, Lnbisdk/lb;->qJ:[I

    invoke-virtual/range {v0 .. v5}, Lnbisdk/gp;->b(DD[I)V

    iget-object v1, v8, Lnbisdk/lb;->qK:Lnbisdk/be;

    iget v2, v8, Lnbisdk/lb;->dR:I

    iget-object v3, v8, Lnbisdk/lb;->qJ:[I

    new-instance v4, Lnbisdk/be$a;

    invoke-direct {v4, v1}, Lnbisdk/be$a;-><init>(Lnbisdk/be;)V

    iput v2, v4, Lnbisdk/be$a;->mE:I

    aget v2, v3, v7

    iput v2, v4, Lnbisdk/be$a;->mF:I

    aget v2, v3, v6

    iput v2, v4, Lnbisdk/be$a;->mG:I

    iget-object v2, v1, Lnbisdk/be;->cw:Lnbisdk/be$a;

    iput-object v2, v4, Lnbisdk/be$a;->mH:Lnbisdk/be$a;

    iput-object v4, v1, Lnbisdk/be;->cw:Lnbisdk/be$a;

    :cond_1
    iget-object v1, v8, Lnbisdk/lb;->qJ:[I

    aget v1, v1, v7

    iget-object v2, v8, Lnbisdk/lb;->qJ:[I

    aget v2, v2, v6

    invoke-virtual {v0, v1, v2, p6}, Lnbisdk/gp;->b(II[I)V

    return-void

    :cond_2
    iget v1, v8, Lnbisdk/lb;->dR:I

    invoke-virtual {v0}, Lnbisdk/gp;->getZoomLevel()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Lnbisdk/gp;->getZoomLevel()I

    move-result v1

    iput v1, v8, Lnbisdk/lb;->dR:I

    iget-object v1, v8, Lnbisdk/lb;->qK:Lnbisdk/be;

    iget v2, v8, Lnbisdk/lb;->dR:I

    iget-object v3, v8, Lnbisdk/lb;->qJ:[I

    iget-object v1, v1, Lnbisdk/be;->cw:Lnbisdk/be$a;

    :goto_1
    if-eqz v1, :cond_5

    iget v4, v1, Lnbisdk/be$a;->mE:I

    if-ne v4, v2, :cond_3

    iget v2, v1, Lnbisdk/be$a;->mF:I

    aput v2, v3, v7

    iget v1, v1, Lnbisdk/be$a;->mG:I

    aput v1, v3, v6

    move v1, v6

    :goto_2
    if-nez v1, :cond_4

    move v1, v6

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lnbisdk/be$a;->mH:Lnbisdk/be$a;

    goto :goto_1

    :cond_4
    move v1, v7

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method public a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Lnbisdk/au$d;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p3}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    iget-boolean v1, p0, Lnbisdk/jt;->pa:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lnbisdk/jt;->oY:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v1, "pin_blue.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p3}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    check-cast v0, Lnbisdk/pj;

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    const-string v1, "pin_blue.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_2
    const-string v1, "gps.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_3
    const-string v1, "arrow.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_4
    const-string v1, "pin_blue.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_5
    const-string v1, "pin_blue.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lnbisdk/jt;->oY:I

    packed-switch v1, :pswitch_data_1

    :pswitch_6
    const-string v1, "pin_red.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_7
    const-string v1, "pin_red.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_8
    const-string v1, "pin_red.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_9
    const-string v1, "pin_red.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_a
    const-string v1, "gps.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_b
    const-string v1, "arrow.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    aget v2, v2, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lnbisdk/jt;->oW:[I

    aget v3, v3, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lnbisdk/gp;->i(II)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    aget v2, v2, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lnbisdk/jt;->oW:[I

    aget v3, v3, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lnbisdk/gp;->i(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lnbisdk/jt;->oW:[I

    aget v0, v0, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    aget v2, v2, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final a(Lnbisdk/au$d;Landroid/graphics/Canvas;I)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lnbisdk/jt;->getHaloAttributes()Lcom/nbi/map/android/Pin$HaloAttributes;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/nbi/map/android/Pin$HaloAttributes;->getFillColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/nbi/map/android/Pin$HaloAttributes;->getStrokeWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/nbi/map/android/Pin$HaloAttributes;->getFillColorEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/nbi/map/android/Pin$HaloAttributes;->getBorderStyle()Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;

    move-result-object v1

    sget-object v3, Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;->DASHED:Lcom/nbi/map/android/Pin$HaloAttributes$BorderStyle;

    if-ne v1, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->pg:Landroid/graphics/DashPathEffect;

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->oW:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-long v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/jt;->oW:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-long v3, v3

    move/from16 v0, p3

    int-to-long v5, v0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v1 .. v10}, Lnbisdk/jt;->a(JJJJJ)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->oW:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-long v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/jt;->oW:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-long v3, v3

    move/from16 v0, p3

    int-to-long v5, v0

    const-wide/16 v7, 0x0

    int-to-long v9, v13

    invoke-static/range {v1 .. v10}, Lnbisdk/jt;->a(JJJJJ)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->oW:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-long v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/jt;->oW:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-long v3, v3

    move/from16 v0, p3

    int-to-long v5, v0

    int-to-long v7, v12

    const-wide/16 v9, 0x0

    invoke-static/range {v1 .. v10}, Lnbisdk/jt;->a(JJJJJ)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->oW:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-long v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/jt;->oW:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-long v3, v3

    move/from16 v0, p3

    int-to-long v5, v0

    int-to-long v7, v12

    int-to-long v9, v13

    invoke-static/range {v1 .. v10}, Lnbisdk/jt;->a(JJJJJ)Z

    move-result v1

    if-eqz v14, :cond_3

    if-eqz v15, :cond_3

    if-eqz v16, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Lcom/nbi/map/android/Pin$HaloAttributes;->getScreenBorderWidthInDp()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lnbisdk/au$d;->aM(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/nbi/map/android/Pin$HaloAttributes;->getScreenBorderColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v7

    int-to-float v5, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v7

    const/4 v3, 0x0

    sub-int v1, v12, v7

    int-to-float v4, v1

    int-to-float v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v1, v12, v7

    int-to-float v2, v1

    const/4 v3, 0x0

    int-to-float v4, v12

    int-to-float v5, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v7

    sub-int v1, v13, v7

    int-to-float v3, v1

    sub-int v1, v12, v7

    int-to-float v4, v1

    int-to-float v5, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/jt;->oX:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnbisdk/jt;->oW:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/jt;->oW:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    move/from16 v0, p3

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-lez p3, :cond_0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/jt;->oW:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/jt;->oW:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    add-int/lit8 v4, p3, 0x1

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/nbi/map/android/Pin$HaloAttributes;->getBorderColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    const/16 v3, 0xc0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/jt;->dI:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public final d(Lnbisdk/au$d;)V
    .locals 10

    const/4 v2, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    check-cast v0, Lnbisdk/pj;

    invoke-virtual {p1}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lnbisdk/cj;->eS()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Lnbisdk/pj;->b([I)V

    aget v2, v1, v8

    iget-object v3, p0, Lnbisdk/jt;->pe:[I

    aget v3, v3, v8

    if-ne v2, v3, :cond_0

    aget v2, v1, v9

    iget-object v3, p0, Lnbisdk/jt;->pe:[I

    aget v3, v3, v9

    if-eq v2, v3, :cond_1

    :cond_0
    iput-boolean v8, p0, Lnbisdk/jt;->pb:Z

    iget-object v2, p0, Lnbisdk/jt;->pe:[I

    aget v3, v1, v8

    aput v3, v2, v8

    iget-object v2, p0, Lnbisdk/jt;->pe:[I

    aget v1, v1, v9

    aput v1, v2, v9

    :cond_1
    iget-boolean v1, p0, Lnbisdk/jt;->pb:Z

    if-nez v1, :cond_2

    iput-boolean v9, p0, Lnbisdk/jt;->pb:Z

    invoke-virtual {p0}, Lnbisdk/jt;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lnbisdk/jt;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lnbisdk/jt;->pc:[I

    iget-object v6, p0, Lnbisdk/jt;->pd:[I

    invoke-virtual/range {v0 .. v6}, Lnbisdk/pj;->a(DD[I[I)V

    :cond_2
    iget-object v0, p0, Lnbisdk/jt;->oW:[I

    iget-object v1, p0, Lnbisdk/jt;->pd:[I

    aget v1, v1, v8

    aput v1, v0, v8

    iget-object v0, p0, Lnbisdk/jt;->oW:[I

    iget-object v1, p0, Lnbisdk/jt;->pd:[I

    aget v1, v1, v9

    aput v1, v0, v9

    iget-object v0, p0, Lnbisdk/jt;->pc:[I

    aget v0, v0, v8

    iget-object v1, p0, Lnbisdk/jt;->pd:[I

    aget v1, v1, v8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lnbisdk/jt;->pc:[I

    aget v0, v0, v9

    iget-object v1, p0, Lnbisdk/jt;->pd:[I

    aget v1, v1, v9

    if-eq v0, v1, :cond_4

    :cond_3
    invoke-virtual {v7}, Lnbisdk/cj;->fa()F

    move-result v0

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    iget-object v2, p0, Lnbisdk/jt;->pc:[I

    aget v2, v2, v8

    iget-object v3, p0, Lnbisdk/jt;->pd:[I

    aget v3, v3, v8

    iget-object v4, p0, Lnbisdk/jt;->pc:[I

    aget v4, v4, v8

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    aput v2, v1, v8

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    iget-object v2, p0, Lnbisdk/jt;->pc:[I

    aget v2, v2, v9

    iget-object v3, p0, Lnbisdk/jt;->pd:[I

    aget v3, v3, v9

    iget-object v4, p0, Lnbisdk/jt;->pc:[I

    aget v4, v4, v9

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    aput v0, v1, v9

    :cond_4
    :goto_0
    return-void

    :cond_5
    iput-boolean v8, p0, Lnbisdk/jt;->pb:Z

    iget-object v0, p0, Lnbisdk/jt;->pe:[I

    aput v2, v0, v8

    iget-object v0, p0, Lnbisdk/jt;->pe:[I

    aput v2, v0, v9

    invoke-virtual {p0}, Lnbisdk/jt;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lnbisdk/jt;->getLongitude()D

    move-result-wide v3

    iget-object v6, p0, Lnbisdk/jt;->oW:[I

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lnbisdk/jt;->a(DDLnbisdk/au$d;[I)V

    invoke-virtual {p1}, Lnbisdk/au$d;->cH()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnbisdk/au$d;->jp()Lnbisdk/lt;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    invoke-static {v0, v1}, Lnbisdk/q$a$a;->a(Lnbisdk/lt;[I)V

    goto :goto_0
.end method

.method protected getHaloAttributes()Lcom/nbi/map/android/Pin$HaloAttributes;
    .locals 1

    iget-object v0, p0, Lnbisdk/jt;->iZ:Lcom/nbi/map/android/Pin$HaloAttributes;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/jt;->jn:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/jt;->jo:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/jt;->jn:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lnbisdk/jt;->jo:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnbisdk/jt;->oZ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnbisdk/jt;->oY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/jt;->jn:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnbisdk/jt;->jo:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
