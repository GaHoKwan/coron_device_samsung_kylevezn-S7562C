.class public final Lnbisdk/dr;
.super Lnbisdk/mo;


# static fields
.field private static gh:[Lcom/nbi/map/android/PinImage;


# instance fields
.field private ez:Z

.field private fX:Lcom/nbi/map/android/POILayer;

.field private fY:Lnbisdk/dh;

.field private fZ:Lnbisdk/dh;

.field private ga:Lnbisdk/nw;

.field private gb:Lcom/nbi/map/android/POILayer;

.field private gc:I

.field private gd:I

.field private ge:I

.field private gf:[Lcom/nbi/map/android/PinImage;

.field private gg:[Ljava/lang/String;

.field private gi:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V
    .locals 9

    const/4 v4, 0x1

    const/16 v8, 0xc

    const/4 v7, 0x4

    const/4 v6, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lnbisdk/mo;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V

    iput v1, p0, Lnbisdk/dr;->gc:I

    iput v1, p0, Lnbisdk/dr;->gd:I

    iput v1, p0, Lnbisdk/dr;->ge:I

    new-array v0, v8, [Ljava/lang/String;

    const-string v2, "start_flag.png"

    aput-object v2, v0, v1

    const-string v2, "destination_flag.png"

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-string v3, "pin_red.png"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "pin_blue.png"

    aput-object v3, v0, v2

    const-string v2, "pin_green.png"

    aput-object v2, v0, v7

    const-string v2, "pin_premium.png"

    aput-object v2, v0, v6

    const/4 v2, 0x6

    const-string v3, "pin_yellow.png"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "pin_drag.png"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "traffic_minor.png"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "traffic_major.png"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "traffic_severe.png"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "empty_pin.png"

    aput-object v3, v0, v2

    iput-object v0, p0, Lnbisdk/dr;->gg:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "bubble_left.png"

    aput-object v2, v0, v1

    const-string v2, "bubble_strip.png"

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-string v3, "bubble_right.png"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "bubble_point.png"

    aput-object v3, v0, v2

    const-string v2, "map_bubble_arrow.png"

    aput-object v2, v0, v7

    iput-object v0, p0, Lnbisdk/dr;->gi:[Ljava/lang/String;

    iput-boolean v1, p0, Lnbisdk/dr;->ez:Z

    invoke-virtual {p0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v2

    new-array v0, v8, [Lcom/nbi/map/android/PinImage;

    iput-object v0, p0, Lnbisdk/dr;->gf:[Lcom/nbi/map/android/PinImage;

    move v0, v1

    :goto_0
    if-ge v0, v8, :cond_4

    iget-object v3, p0, Lnbisdk/dr;->gg:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lnbisdk/dr;->gf:[Lcom/nbi/map/android/PinImage;

    new-instance v5, Lcom/nbi/map/android/PinImage;

    invoke-direct {v5}, Lcom/nbi/map/android/PinImage;-><init>()V

    aput-object v5, v4, v0

    iget-object v4, p0, Lnbisdk/dr;->gf:[Lcom/nbi/map/android/PinImage;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lcom/nbi/map/android/PinImage;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lnbisdk/dr;->gg:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "start_flag.png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lnbisdk/dr;->gg:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "destination_flag.png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lnbisdk/dr;->gf:[Lcom/nbi/map/android/PinImage;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7}, Lcom/nbi/map/android/PinImage;->setTipX(I)V

    :goto_1
    iget-object v4, p0, Lnbisdk/dr;->gg:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "traffic_minor.png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lnbisdk/dr;->gg:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "traffic_major.png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lnbisdk/dr;->gg:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "traffic_severe.png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Lnbisdk/dr;->gf:[Lcom/nbi/map/android/PinImage;

    aget-object v4, v4, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v4, v3}, Lcom/nbi/map/android/PinImage;->setTipY(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lnbisdk/dr;->gf:[Lcom/nbi/map/android/PinImage;

    aget-object v4, v4, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lcom/nbi/map/android/PinImage;->setTipX(I)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lnbisdk/dr;->gf:[Lcom/nbi/map/android/PinImage;

    aget-object v4, v4, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/nbi/map/android/PinImage;->setTipY(I)V

    goto :goto_2

    :cond_4
    new-array v0, v6, [Lcom/nbi/map/android/PinImage;

    sput-object v0, Lnbisdk/dr;->gh:[Lcom/nbi/map/android/PinImage;

    move v0, v1

    :goto_3
    if-ge v0, v6, :cond_5

    iget-object v3, p0, Lnbisdk/dr;->gi:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lnbisdk/dr;->gh:[Lcom/nbi/map/android/PinImage;

    new-instance v5, Lcom/nbi/map/android/PinImage;

    invoke-direct {v5}, Lcom/nbi/map/android/PinImage;-><init>()V

    aput-object v5, v4, v0

    sget-object v4, Lnbisdk/dr;->gh:[Lcom/nbi/map/android/PinImage;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lcom/nbi/map/android/PinImage;->setImage(Landroid/graphics/Bitmap;)V

    sget-object v3, Lnbisdk/dr;->gh:[Lcom/nbi/map/android/PinImage;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/nbi/map/android/PinImage;->setTipX(I)V

    sget-object v3, Lnbisdk/dr;->gh:[Lcom/nbi/map/android/PinImage;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/nbi/map/android/PinImage;->setTipY(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    new-instance v0, Lnbisdk/hu;

    invoke-direct {v0}, Lnbisdk/hu;-><init>()V

    iput-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    const-string v2, "NBI_TRAFFIC_INCIDENT_LAYER"

    new-instance v3, Lnbisdk/q;

    invoke-virtual {p4}, Lnbisdk/ij;->cx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-direct {v3, p1, v2, p0, v0}, Lnbisdk/q;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/cf;)V

    const/16 v0, 0x2ee0

    invoke-virtual {v3, v0}, Lnbisdk/au$d;->aL(I)V

    invoke-virtual {v3, v1}, Lnbisdk/au$d;->setVisible(Z)V

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0, v3}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0, v3}, Lnbisdk/au;->g(Lnbisdk/au$d;)V

    iput-object v3, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    const-string v0, "LOCATION_LAYER_NAME"

    invoke-static {p1, v0, p0, p4}, Lnbisdk/au$a;->b(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/ij;)Lnbisdk/nw;

    move-result-object v1

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0, v1}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0, v1}, Lnbisdk/au;->g(Lnbisdk/au$d;)V

    move-object v0, v1

    check-cast v0, Lnbisdk/nw;

    iput-object v0, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    const-string v0, "NBI_PIN_LAYER"

    invoke-static {p1, v0, p0, p4}, Lnbisdk/au$a;->a(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/ij;)Lnbisdk/dh;

    move-result-object v1

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0, v1}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0, v1}, Lnbisdk/au;->g(Lnbisdk/au$d;)V

    iput-object v1, p0, Lnbisdk/dr;->fY:Lnbisdk/dh;

    new-instance v0, Lcom/nbi/map/android/POILayer;

    invoke-direct {v0}, Lcom/nbi/map/android/POILayer;-><init>()V

    iput-object v0, p0, Lnbisdk/dr;->fX:Lcom/nbi/map/android/POILayer;

    iget-object v0, p0, Lnbisdk/dr;->fY:Lnbisdk/dh;

    iget-object v1, p0, Lnbisdk/dr;->fX:Lcom/nbi/map/android/POILayer;

    invoke-virtual {v0, v1}, Lnbisdk/dh;->setPOILayer(Lcom/nbi/map/android/POILayer;)V

    new-instance v0, Lcom/nbi/map/android/POILayer;

    invoke-direct {v0}, Lcom/nbi/map/android/POILayer;-><init>()V

    iput-object v0, p0, Lnbisdk/dr;->gb:Lcom/nbi/map/android/POILayer;

    return-void
.end method

.method public static J(I)Lcom/nbi/map/android/PinImage;
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    sget-object v0, Lnbisdk/dr;->gh:[Lcom/nbi/map/android/PinImage;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private L(I)Lnbisdk/eq;
    .locals 4

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v1, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnbisdk/eq;

    invoke-virtual {v1, p1}, Lnbisdk/eq;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v0, Lnbisdk/eq;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/nbi/map/data/Coordinates;IZZZZ)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    invoke-virtual {v2}, Lnbisdk/nw;->kZ()Lcom/nbi/map/data/Coordinates;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lnbisdk/nw;->a(Lcom/nbi/map/data/Coordinates;I)I

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v2

    const/4 v4, 0x1

    new-array v15, v4, [I

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v16

    if-eqz p4, :cond_4

    if-ltz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lnbisdk/nw;->aX(I)[Lcom/nbi/map/data/Coordinates;

    move-result-object v11

    const/4 v3, 0x1

    new-array v13, v3, [D

    const/4 v3, 0x1

    new-array v14, v3, [D

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v13, v3

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v14, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v11, v5

    invoke-virtual {v5}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v5

    const/4 v7, 0x0

    aget-object v7, v11, v7

    invoke-virtual {v7}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v7

    const/4 v9, 0x1

    aget-object v9, v11, v9

    invoke-virtual {v9}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v9

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v11

    invoke-virtual/range {v2 .. v15}, Lnbisdk/gp;->a(IIDDDD[D[D[I)V

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v2

    check-cast v2, Lnbisdk/au;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lnbisdk/au;->z(I)I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_0

    const/4 v3, 0x0

    aget v3, v15, v3

    move/from16 v0, v16

    if-ge v3, v0, :cond_3

    :cond_0
    const/4 v3, 0x0

    aget v3, v15, v3

    if-le v3, v2, :cond_1

    const/4 v3, 0x0

    aput v2, v15, v3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v2

    check-cast v2, Lnbisdk/au;

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v5

    const/4 v7, 0x0

    aget v7, v15, v7

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lnbisdk/au;->a(DDIZZ)V

    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v2

    check-cast v2, Lnbisdk/au;

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v5

    const/4 v9, 0x0

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lnbisdk/au;->a(DDZZZ)V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/nbi/map/data/Coordinates;->getLongitude()D

    move-result-wide v5

    move-object/from16 v2, p0

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lnbisdk/au$d;->a(DDZZ)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/nbi/map/data/Coordinates;->equal(Lcom/nbi/map/data/Coordinates;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnbisdk/mo;->I(Z)V

    goto :goto_0
.end method

.method private eA()Lnbisdk/eq;
    .locals 4

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    move-object v1, v0

    check-cast v1, Lnbisdk/eq;

    invoke-virtual {v1}, Lnbisdk/eq;->eB()Lcom/nbi/map/android/Pin;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v0, Lnbisdk/eq;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final K(I)Lcom/nbi/map/android/PinImage;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xc

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/dr;->gf:[Lcom/nbi/map/android/PinImage;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/android/Pin;ZZ)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lnbisdk/dr;->gb:Lcom/nbi/map/android/POILayer;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lnbisdk/dr;->b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, p2, p3, p4, v0}, Lnbisdk/dh;->a(Lcom/nbi/map/android/Pin;ZZZ)I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/nbi/map/android/Pin;->setPOILayer(Lcom/nbi/map/android/POILayer;)V

    goto :goto_0
.end method

.method public final a(IIZ)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v4, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v4, :cond_1

    iget-object v4, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    if-eq v0, v4, :cond_1

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v0, Lnbisdk/dh;

    invoke-virtual {v0, p1, p2, p3}, Lnbisdk/dh;->a(IIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(ILcom/nbi/map/android/Pin;ZZ)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v4, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v4, :cond_1

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/eq;->a(ILcom/nbi/map/android/Pin;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(IZ)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v4, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v4, :cond_1

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0, p1, p2}, Lnbisdk/eq;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/nbi/location/Location;ZZZZZ)Z
    .locals 7

    iget-object v0, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    invoke-virtual {v0, p2}, Lnbisdk/nw;->Q(Z)V

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getValid()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getHeading()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnbisdk/nw;->setHeading(D)V

    :goto_0
    new-instance v1, Lcom/nbi/map/data/Coordinates;

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    invoke-virtual {p1}, Lcom/nbi/location/Location;->getAccuracy()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lnbisdk/dr;->a(Lcom/nbi/map/data/Coordinates;IZZZZ)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    const-wide/high16 v1, -0x4010

    invoke-virtual {v0, v1, v2}, Lnbisdk/nw;->setHeading(D)V

    goto :goto_0
.end method

.method public final a(Lcom/nbi/map/android/POILayer;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lnbisdk/dr;->b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v2}, Lnbisdk/au$d;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnbisdk/hu;->ao(Ljava/lang/String;)Lnbisdk/au$d;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lnbisdk/dh;->removeAllPins()V

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0, v2}, Lnbisdk/hu;->c(Lnbisdk/au$d;)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0, v2}, Lnbisdk/au;->h(Lnbisdk/au$d;)V

    invoke-virtual {v2}, Lnbisdk/dh;->ow()Lnbisdk/gq;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0, v2}, Lnbisdk/au;->f(Lnbisdk/au$d;)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0, v2}, Lnbisdk/au;->h(Lnbisdk/au$d;)V

    :cond_2
    invoke-virtual {p0, v1, v1}, Lnbisdk/mo;->e(ZZ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/nbi/map/android/POILayer;Lcom/nbi/map/data/Rectangle;Z)Z
    .locals 8

    iget-object v0, p0, Lnbisdk/dr;->gb:Lcom/nbi/map/android/POILayer;

    if-ne p1, v0, :cond_5

    new-instance v1, Lcom/nbi/map/data/Coordinates;

    const-wide v2, 0x4066800000000000L

    const-wide v4, 0x4066800000000000L

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    new-instance v2, Lcom/nbi/map/data/Coordinates;

    const-wide v3, -0x3f99800000000000L

    const-wide v5, -0x3f99800000000000L

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    const/4 v3, 0x0

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v6

    const/4 v0, 0x0

    move v4, v3

    move v3, v0

    :goto_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v5, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v5, :cond_0

    iget-object v5, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    if-eq v0, v5, :cond_0

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p2, :cond_1

    const/4 v5, 0x1

    :goto_1
    check-cast v0, Lnbisdk/dh;

    invoke-virtual {v0, v1, v2, v5}, Lnbisdk/dh;->a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;Z)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_3
    iget-object v0, p0, Lnbisdk/dr;->fY:Lnbisdk/dh;

    invoke-virtual {v0}, Lnbisdk/dh;->oB()V

    if-nez p2, :cond_4

    const/16 v5, 0xf

    :goto_3
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lnbisdk/dr;->a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Rectangle;ZIZ)Z

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/16 v5, 0x13

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p1}, Lnbisdk/dr;->b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/nbi/map/data/Coordinates;

    const-wide v4, 0x4066800000000000L

    const-wide v6, 0x4066800000000000L

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    new-instance v2, Lcom/nbi/map/data/Coordinates;

    const-wide v4, -0x3f99800000000000L

    const-wide v6, -0x3f99800000000000L

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/nbi/map/data/Coordinates;-><init>(DD)V

    if-nez p2, :cond_7

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v3, v1, v2, v0}, Lnbisdk/dh;->a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;Z)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lnbisdk/dh;->oB()V

    if-nez p2, :cond_9

    const/16 v5, 0xf

    :goto_5
    invoke-virtual {v3}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/dr;

    const/4 v4, 0x0

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lnbisdk/dr;->a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Rectangle;ZIZ)Z

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/16 v5, 0x13

    goto :goto_5
.end method

.method public final a(Lcom/nbi/map/android/Pin;Z)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v4, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v4, :cond_1

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0, p1, p2}, Lnbisdk/eq;->a(Lcom/nbi/map/android/Pin;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Rectangle;ZIZ)Z
    .locals 7

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lnbisdk/au;->a(Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Coordinates;Lcom/nbi/map/data/Rectangle;ZIZ)Z

    move-result v0

    return v0
.end method

.method public final a(Lnbisdk/ip;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lnbisdk/ip;->id()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lnbisdk/dr;->ez:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lnbisdk/ip;->id()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lnbisdk/dr;->ez:Z

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v2, v1

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/ip;)Z

    move-result v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public final a(Lnbisdk/mc;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/mc;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final a(Lnbisdk/mn;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/mn;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final a(Lnbisdk/po;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnbisdk/dr;->ez:Z

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/po;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final a(Lnbisdk/vk;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->a(Lnbisdk/vk;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final addPOILayer(I)Lcom/nbi/map/android/POILayer;
    .locals 4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget v0, p0, Lnbisdk/dr;->gd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnbisdk/dr;->gd:I

    add-int/lit16 v0, v0, 0x32c8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NBI_CUSTOM_PIN_LAYER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v3

    invoke-virtual {p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v0

    check-cast v0, Lnbisdk/ij;

    invoke-static {v3, v2, p0, v0, v1}, Lnbisdk/au$a;->a(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/au$d;Lnbisdk/ij;I)Lnbisdk/dh;

    move-result-object v1

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0, v1}, Lnbisdk/hu;->b(Lnbisdk/au$d;)V

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    check-cast v0, Lnbisdk/au;

    invoke-virtual {v0, v1}, Lnbisdk/au;->g(Lnbisdk/au$d;)V

    new-instance v0, Lcom/nbi/map/android/POILayer;

    invoke-direct {v0}, Lcom/nbi/map/android/POILayer;-><init>()V

    invoke-virtual {v1, v0}, Lnbisdk/dh;->setPOILayer(Lcom/nbi/map/android/POILayer;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget v0, p0, Lnbisdk/dr;->gc:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnbisdk/dr;->gc:I

    add-int/lit16 v0, v0, 0x2710

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NBI_CUSTOM_POI_LAYER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final addPOILayer(Ljava/lang/String;Lcom/nbi/map/data/BoundingBox;IIIILcom/nbi/map/android/MapView$POIExtractionCallbackListener;Lcom/nbi/map/android/MapView$UserParameterCallbackListener;Ljava/lang/Object;)Lcom/nbi/map/android/POILayer;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lnbisdk/dr;->addPOILayer(I)Lcom/nbi/map/android/POILayer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnbisdk/dr;->b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;

    move-result-object v16

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/cy;->cA()I

    move-result v9

    :goto_0
    const/4 v2, -0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    invoke-static {}, Lnbisdk/cy;->dG()Lnbisdk/cy;

    move-result-object v2

    invoke-virtual {v2}, Lnbisdk/cy;->cB()I

    move-result v10

    :goto_1
    new-instance v2, Lnbisdk/qk;

    const-string v3, "auto_pin"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v11, 0x0

    const-string v12, ""

    const-string v13, ""

    const/16 v14, 0x100

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v14}, Lnbisdk/qk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lnbisdk/dh;->a(Lnbisdk/qk;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnbisdk/dh;->a(Lcom/nbi/map/data/BoundingBox;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lnbisdk/dh;->setUserData(Ljava/lang/Object;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lnbisdk/dh;->a(Lcom/nbi/map/android/MapView$POIExtractionCallbackListener;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lnbisdk/dh;->a(Lcom/nbi/map/android/MapView$UserParameterCallbackListener;)V

    move-object/from16 v0, p0

    iget v2, v0, Lnbisdk/dr;->ge:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lnbisdk/dr;->ge:I

    add-int/lit16 v4, v2, 0x13ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POI_TILE_LAYER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v2

    check-cast v2, Lnbisdk/au;

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jj()Lnbisdk/cf;

    move-result-object v3

    check-cast v3, Lnbisdk/ij;

    new-instance v7, Lnbisdk/gq;

    invoke-virtual {v3}, Lnbisdk/ij;->cx()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnbisdk/ij;

    invoke-direct {v7, v6, v5, v2, v3}, Lnbisdk/gq;-><init>(Lcom/nbi/common/NBIContext;Ljava/lang/String;Lnbisdk/ct;Lnbisdk/ij;)V

    invoke-virtual {v7, v4}, Lnbisdk/au$d;->aL(I)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lnbisdk/au$d;->setVisible(Z)V

    const-string v2, "png"

    invoke-virtual {v7, v2}, Lnbisdk/ct;->G(Ljava/lang/String;)V

    const-string v2, "192"

    invoke-virtual {v7, v2}, Lnbisdk/ct;->H(Ljava/lang/String;)V

    const-string v2, "auto_pin"

    invoke-virtual {v7, v2}, Lnbisdk/ct;->F(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lnbisdk/au$d;->F(Z)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lnbisdk/ct;->l(Z)V

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v2

    check-cast v2, Lnbisdk/au;

    invoke-virtual {v2, v7}, Lnbisdk/au;->e(Lnbisdk/au$d;)V

    invoke-virtual/range {p0 .. p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v2

    check-cast v2, Lnbisdk/au;

    invoke-virtual {v2, v7}, Lnbisdk/au;->g(Lnbisdk/au$d;)V

    invoke-virtual {v7, v15}, Lnbisdk/gq;->setPOILayer(Lcom/nbi/map/android/POILayer;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lnbisdk/dh;->a(Lnbisdk/gq;)V

    const/16 v2, 0xf

    move/from16 v0, p6

    if-ge v0, v2, :cond_0

    const/16 p6, 0xf

    :cond_0
    move/from16 v0, p6

    mul-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v7, v2}, Lnbisdk/ct;->x(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lnbisdk/mo;->a(Lnbisdk/au$d;Z)V

    return-object v15

    :cond_1
    move/from16 v10, p4

    goto/16 :goto_1

    :cond_2
    move/from16 v9, p3

    goto/16 :goto_0
.end method

.method public final b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v1, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    if-eq v0, v1, :cond_1

    move-object v1, v0

    check-cast v1, Lnbisdk/dh;

    invoke-virtual {v1}, Lnbisdk/dh;->getPOILayer()Lcom/nbi/map/android/POILayer;

    move-result-object v1

    if-ne v1, p1, :cond_1

    check-cast v0, Lnbisdk/dh;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public final b(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V
    .locals 3

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0, p1, p2, p3}, Lnbisdk/eq;->b(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final b(Lcom/nbi/map/data/Coordinates;IZZZZ)Z
    .locals 2

    iget-object v0, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/nw;->Q(Z)V

    invoke-direct/range {p0 .. p6}, Lnbisdk/dr;->a(Lcom/nbi/map/data/Coordinates;IZZZZ)Z

    move-result v0

    return v0
.end method

.method public final b(Lnbisdk/vk;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->b(Lnbisdk/vk;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lnbisdk/dr;->ez:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->c(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final cancelPinDrag()V
    .locals 1

    iget-object v0, p0, Lnbisdk/dr;->fY:Lnbisdk/dh;

    invoke-virtual {v0}, Lnbisdk/dh;->cancelPinDrag()V

    return-void
.end method

.method public final dropPin(II)I
    .locals 2

    iget-object v0, p0, Lnbisdk/dr;->fY:Lnbisdk/dh;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lnbisdk/dh;->b(IIZ)I

    move-result v0

    return v0
.end method

.method public final eB()Lcom/nbi/map/android/Pin;
    .locals 1

    invoke-direct {p0}, Lnbisdk/dr;->eA()Lnbisdk/eq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lnbisdk/eq;->eB()Lcom/nbi/map/android/Pin;

    move-result-object v0

    goto :goto_0
.end method

.method public final eC()I
    .locals 5

    const/4 v2, -0x1

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v4, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v4, :cond_0

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0}, Lnbisdk/eq;->eC()I

    move-result v0

    if-eq v0, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final eD()Lcom/nbi/map/android/POILayer;
    .locals 1

    iget-object v0, p0, Lnbisdk/dr;->gb:Lcom/nbi/map/android/POILayer;

    return-object v0
.end method

.method public final ey()V
    .locals 4

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v3, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    if-eq v0, v3, :cond_0

    check-cast v0, Lnbisdk/dh;

    invoke-virtual {v0}, Lnbisdk/dh;->dm()Lnbisdk/qk;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lnbisdk/dh;->ez()V

    invoke-virtual {v0}, Lnbisdk/dh;->oA()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ez()V
    .locals 3

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0}, Lnbisdk/eq;->ez()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getDefaultPOILayer()Lcom/nbi/map/android/POILayer;
    .locals 1

    iget-object v0, p0, Lnbisdk/dr;->fX:Lcom/nbi/map/android/POILayer;

    return-object v0
.end method

.method public final getNextPin(Lcom/nbi/map/android/POILayer;I)I
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lnbisdk/dr;->gb:Lcom/nbi/map/android/POILayer;

    if-ne p1, v0, :cond_4

    const/4 v0, 0x0

    if-ne p2, v6, :cond_1

    move-object v3, v0

    move v0, v2

    :goto_0
    iget-object v4, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v4}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v7

    move v4, v1

    move v5, v0

    :goto_1
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v1, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    if-eq v0, v1, :cond_6

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v5, :cond_2

    move-object v1, v0

    check-cast v1, Lnbisdk/eq;

    invoke-virtual {v1, v6}, Lnbisdk/eq;->getNextPin(I)I

    move-result v1

    if-eq v1, v6, :cond_2

    move v0, v1

    :cond_0
    :goto_2
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lnbisdk/dr;->L(I)Lnbisdk/eq;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v3, v0

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_6

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0, p2}, Lnbisdk/eq;->getNextPin(I)I

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v2

    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v5, v0

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lnbisdk/dr;->b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v6

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p2}, Lnbisdk/dh;->getNextPin(I)I

    move-result v0

    goto :goto_2

    :cond_6
    move v0, v5

    goto :goto_3
.end method

.method public final getPin(I)Lcom/nbi/map/android/Pin;
    .locals 1

    invoke-direct {p0, p1}, Lnbisdk/dr;->L(I)Lnbisdk/eq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lnbisdk/eq;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPinCount(Lcom/nbi/map/android/POILayer;)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/dr;->gb:Lcom/nbi/map/android/POILayer;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v4, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v4, :cond_0

    iget-object v4, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    if-eq v0, v4, :cond_0

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0}, Lnbisdk/eq;->getPinCount()I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lnbisdk/dr;->b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;

    move-result-object v1

    if-nez v1, :cond_3

    move v2, v0

    :cond_2
    :goto_1
    return v2

    :cond_3
    invoke-virtual {v1}, Lnbisdk/dh;->getPinCount()I

    move-result v2

    goto :goto_1
.end method

.method public final getPrevPin(Lcom/nbi/map/android/POILayer;I)I
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lnbisdk/dr;->gb:Lcom/nbi/map/android/POILayer;

    if-ne p1, v0, :cond_4

    const/4 v0, 0x0

    if-ne p2, v6, :cond_1

    move-object v3, v0

    move v0, v2

    :goto_0
    iget-object v4, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v4}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v7

    move v4, v1

    move v5, v0

    :goto_1
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v1, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    if-eq v0, v1, :cond_6

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v5, :cond_2

    move-object v1, v0

    check-cast v1, Lnbisdk/eq;

    invoke-virtual {v1, v6}, Lnbisdk/eq;->getPrevPin(I)I

    move-result v1

    if-eq v1, v6, :cond_2

    move v0, v1

    :cond_0
    :goto_2
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lnbisdk/dr;->L(I)Lnbisdk/eq;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v3, v0

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_6

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0, p2}, Lnbisdk/eq;->getPrevPin(I)I

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v2

    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v5, v0

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lnbisdk/dr;->b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v6

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p2}, Lnbisdk/dh;->getPrevPin(I)I

    move-result v0

    goto :goto_2

    :cond_6
    move v0, v5

    goto :goto_3
.end method

.method public final isTrafficIncidentsLayerVisible()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    invoke-virtual {v0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final mapGetLocation()Lcom/nbi/map/data/Coordinates;
    .locals 1

    iget-object v0, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    invoke-virtual {v0}, Lnbisdk/nw;->kZ()Lcom/nbi/map/data/Coordinates;

    move-result-object v0

    return-object v0
.end method

.method public final mapShowLocation(Z)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    invoke-virtual {v0}, Lnbisdk/au$d;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    invoke-virtual {v0, p1}, Lnbisdk/nw;->setVisible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnbisdk/mo;->I(Z)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lnbisdk/au$d;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-boolean v0, p0, Lnbisdk/dr;->ez:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v7, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v8, v0

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_14

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0, v7, v8}, Lnbisdk/eq;->g(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0, v7, v8}, Lnbisdk/eq;->h(II)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lnbisdk/dr;->eA()Lnbisdk/eq;

    move-result-object v5

    if-nez v5, :cond_9

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lnbisdk/eq;

    invoke-virtual {v1, v7, v8}, Lnbisdk/eq;->f(II)I

    move-result v4

    const/4 v1, -0x1

    if-eq v4, v1, :cond_7

    const/4 v1, 0x0

    iget-object v2, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v2, :cond_5

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lnbisdk/uu;->onPinTouched(IZ)Z

    move-result v1

    :cond_5
    if-nez v1, :cond_6

    check-cast v0, Lnbisdk/eq;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lnbisdk/eq;->a(IZ)Z

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v5}, Lnbisdk/eq;->eC()I

    move-result v0

    invoke-virtual {v5, v0, v7, v8}, Lnbisdk/eq;->d(III)I

    move-result v0

    move-object v4, v5

    :goto_5
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_6
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_13

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v10

    if-eqz v10, :cond_12

    if-nez v1, :cond_a

    move-object v1, v0

    check-cast v1, Lnbisdk/eq;

    :cond_a
    if-eqz v2, :cond_d

    check-cast v0, Lnbisdk/eq;

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_7
    if-nez v1, :cond_11

    :goto_8
    invoke-virtual {v0, v7, v8}, Lnbisdk/eq;->f(II)I

    move-result v1

    if-ne v0, v5, :cond_10

    move v2, v1

    move-object v1, v0

    :goto_9
    const/4 v0, -0x1

    if-eq v2, v0, :cond_e

    invoke-virtual {p0, v2}, Lnbisdk/dr;->getPin(I)Lcom/nbi/map/android/Pin;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lnbisdk/uu;->onPinTouched(IZ)Z

    move-result v0

    :cond_b
    if-nez v0, :cond_c

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lnbisdk/eq;->a(IZ)Z

    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    if-ne v0, v4, :cond_12

    const/4 v0, 0x1

    :goto_a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Lnbisdk/dr;->ez()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    move-object v1, v4

    move v2, v0

    goto :goto_9

    :cond_10
    move-object v4, v0

    move v0, v1

    goto :goto_5

    :cond_11
    move-object v0, v1

    goto :goto_8

    :cond_12
    move v0, v2

    goto :goto_a

    :cond_13
    move-object v0, v1

    move-object v1, v6

    goto :goto_7

    :cond_14
    move v0, v2

    goto/16 :goto_2
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hy()Ljava/util/Vector;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->fX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lnbisdk/au$d;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final q(Z)V
    .locals 1

    iget-object v0, p0, Lnbisdk/dr;->fY:Lnbisdk/dh;

    invoke-virtual {p0, v0, p1}, Lnbisdk/mo;->a(Lnbisdk/au$d;Z)V

    return-void
.end method

.method public final r(Z)V
    .locals 1

    iget-object v0, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    invoke-virtual {p0, v0, p1}, Lnbisdk/mo;->a(Lnbisdk/au$d;Z)V

    return-void
.end method

.method public final removeAllPins(Lcom/nbi/map/android/POILayer;)V
    .locals 4

    iget-object v0, p0, Lnbisdk/dr;->gb:Lcom/nbi/map/android/POILayer;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v3, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v3, :cond_0

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0}, Lnbisdk/eq;->removeAllPins()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lnbisdk/dr;->b(Lcom/nbi/map/android/POILayer;)Lnbisdk/dh;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v0}, Lnbisdk/dh;->removeAllPins()V

    goto :goto_1
.end method

.method public final removePin(I)V
    .locals 4

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v3, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v3, :cond_1

    check-cast v0, Lnbisdk/eq;

    invoke-virtual {v0, p1}, Lnbisdk/eq;->P(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final s(Z)Z
    .locals 4

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v3, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    if-eq v0, v3, :cond_0

    invoke-virtual {p0, v0, p1}, Lnbisdk/mo;->a(Lnbisdk/au$d;Z)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final setPinDuringDrag(Lcom/nbi/map/android/Pin;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/dr;->fY:Lnbisdk/dh;

    invoke-virtual {v0, p1}, Lnbisdk/dh;->setPinDuringDrag(Lcom/nbi/map/android/Pin;)V

    return-void
.end method

.method public final setPinImage(ILcom/nbi/map/android/PinImage;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v0}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v4, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v4, :cond_1

    iget-object v4, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    if-eq v0, v4, :cond_1

    check-cast v0, Lnbisdk/dh;

    invoke-virtual {v0, p1, p2}, Lnbisdk/dh;->setPinImage(ILcom/nbi/map/android/PinImage;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final setStandardPinImage(ILcom/nbi/map/android/PinImage;)Z
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_2

    const/4 v1, 0x7

    if-gt p1, v1, :cond_2

    iget-object v1, p0, Lnbisdk/dr;->gf:[Lcom/nbi/map/android/PinImage;

    add-int/lit8 v2, p1, -0x1

    aput-object p2, v1, v2

    iget-object v1, p0, Lnbisdk/mo;->rL:Lnbisdk/hu;

    invoke-virtual {v1}, Lnbisdk/hu;->hx()Ljava/util/Vector;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/au$d;

    iget-object v3, p0, Lnbisdk/dr;->fZ:Lnbisdk/dh;

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lnbisdk/dr;->ga:Lnbisdk/nw;

    if-eq v0, v3, :cond_0

    check-cast v0, Lnbisdk/dh;

    invoke-virtual {v0, p1, p2}, Lnbisdk/dh;->setStandardPinImage(ILcom/nbi/map/android/PinImage;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
