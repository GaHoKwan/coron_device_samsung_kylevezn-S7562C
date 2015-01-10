.class public Lnbisdk/if;
.super Lnbisdk/jt;


# static fields
.field private static dI:Landroid/graphics/Paint;


# instance fields
.field private density:F

.field public xj:Lcom/nbi/map/android/Pin;

.field private xk:F

.field private xl:F

.field private xm:I

.field private xn:Z

.field private xo:I

.field private xp:I

.field private xq:Lcom/nbi/map/geocode/ReverseGeocodeRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnbisdk/if;->dI:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lcom/nbi/map/android/Pin;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnbisdk/jt;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/if;->xn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/if;->xq:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    iput-object p1, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    return-void
.end method

.method private static a(Ljava/lang/String;IFZ)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lnbisdk/if;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p3, :cond_1

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v1, p1

    invoke-virtual {v0, p0, v3, v1, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-array v1, v3, [F

    const-string v2, "."

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    aget v1, v1, v4

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p0, v3, v1, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private static getPaint()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lnbisdk/if;->dI:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lnbisdk/if;->dI:Landroid/graphics/Paint;

    :cond_0
    sget-object v0, Lnbisdk/if;->dI:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    sget-object v0, Lnbisdk/if;->dI:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    :cond_1
    sget-object v0, Lnbisdk/if;->dI:Landroid/graphics/Paint;

    return-object v0
.end method

.method private m(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnbisdk/if;->density:F

    const/high16 v0, 0x4190

    iget v1, p0, Lnbisdk/if;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lnbisdk/if;->xk:F

    const/high16 v0, 0x4140

    iget v1, p0, Lnbisdk/if;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lnbisdk/if;->xl:F

    const/high16 v0, 0x40e0

    iget v1, p0, Lnbisdk/if;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnbisdk/if;->xm:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Lnbisdk/au$d;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, v0}, Lnbisdk/if;->a(Landroid/graphics/Canvas;Lnbisdk/au$d;II)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Lnbisdk/au$d;II)V
    .locals 15

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v1}, Lnbisdk/if;->a(Lnbisdk/au$d;[I)V

    iget-object v1, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v2}, Lcom/nbi/map/android/PinImage;->getTipX()I

    move-result v3

    sub-int v3, v1, v3

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v2}, Lcom/nbi/map/android/PinImage;->getTipY()I

    move-result v4

    sub-int/2addr v1, v4

    add-int v4, v1, p4

    invoke-virtual/range {p2 .. p2}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lnbisdk/if;->j(Lnbisdk/au$d;)Lcom/nbi/map/data/Rectangle;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/nbi/map/data/Rectangle;->intersects(Lcom/nbi/map/data/Rectangle;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    int-to-float v2, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Lnbisdk/jt;->pa:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lnbisdk/dr;->J(I)Lcom/nbi/map/android/PinImage;

    move-result-object v3

    const/4 v1, 0x2

    invoke-static {v1}, Lnbisdk/dr;->J(I)Lcom/nbi/map/android/PinImage;

    move-result-object v4

    const/4 v1, 0x3

    invoke-static {v1}, Lnbisdk/dr;->J(I)Lcom/nbi/map/android/PinImage;

    move-result-object v5

    const/4 v1, 0x1

    invoke-static {v1}, Lnbisdk/dr;->J(I)Lcom/nbi/map/android/PinImage;

    move-result-object v6

    new-instance v7, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v7}, Lcom/nbi/map/data/Rectangle;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v7}, Lnbisdk/if;->b(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)Z

    iget-boolean v1, p0, Lnbisdk/if;->xn:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v1

    iget v2, p0, Lnbisdk/jt;->oZ:I

    iget v3, p0, Lnbisdk/if;->xo:I

    iget v4, p0, Lnbisdk/if;->xp:I

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v2, v3, v4}, Lnbisdk/uu;->a(Landroid/graphics/Canvas;III)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v6, p0, Lnbisdk/jt;->pa:Z

    if-eqz v6, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v5}, Lnbisdk/if;->b(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)Z

    invoke-virtual {v5, v1}, Lcom/nbi/map/data/Rectangle;->intersects(Lcom/nbi/map/data/Rectangle;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v8

    invoke-virtual {v3}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v9, v8

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    invoke-virtual {v3}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    const/4 v9, 0x0

    aget v1, v1, v9

    invoke-virtual {v5}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v1, v9

    invoke-virtual {v6}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    move v1, v2

    :goto_2
    if-ge v1, v9, :cond_4

    invoke-virtual {v6}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v11

    int-to-float v12, v1

    int-to-float v13, v8

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v1, v10

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v11, v9

    int-to-float v12, v8

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v4}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    :goto_3
    if-ge v1, v5, :cond_5

    invoke-virtual {v6}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v7

    int-to-float v9, v1

    int-to-float v11, v8

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v9, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v1, v10

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v5, v5

    int-to-float v6, v8

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p2 .. p2}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    invoke-static {}, Lnbisdk/if;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v4, 0x4080

    iget v5, p0, Lnbisdk/if;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, -0x100

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v5, p0, Lnbisdk/if;->xk:F

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget-object v6, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v6}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v6}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lnbisdk/if;->xk:F

    const/4 v9, 0x1

    invoke-static {v6, v1, v7, v9}, Lnbisdk/if;->a(Ljava/lang/String;IFZ)Ljava/lang/String;

    move-result-object v6

    int-to-float v7, v2

    int-to-float v9, v8

    iget v10, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v9, v10

    int-to-float v4, v4

    add-float/2addr v4, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v4

    float-to-int v4, v4

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v6, p0, Lnbisdk/if;->xl:F

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v6}, Lcom/nbi/map/android/Pin;->getSubTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v6}, Lcom/nbi/map/android/Pin;->getSubTitle()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lnbisdk/if;->xl:F

    const/4 v9, 0x0

    invoke-static {v6, v1, v7, v9}, Lnbisdk/if;->a(Ljava/lang/String;IFZ)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v2

    int-to-float v6, v8

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v5, v6, v5

    int-to-float v4, v4

    add-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method protected final a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/geocode/ReverseGeocodeListener;)V
    .locals 8

    invoke-virtual {p0}, Lnbisdk/if;->mp()V

    new-instance v0, Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-virtual {p0}, Lnbisdk/if;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lnbisdk/if;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;-><init>(Lcom/nbi/common/NBIContext;DDZLcom/nbi/map/geocode/ReverseGeocodeListener;)V

    iput-object v0, p0, Lnbisdk/if;->xq:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    iget-object v0, p0, Lnbisdk/if;->xq:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-virtual {v0}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->startRequest()V

    return-void
.end method

.method public a(Lnbisdk/au$d;)V
    .locals 3

    invoke-virtual {p0, p1}, Lnbisdk/if;->l(Lnbisdk/au$d;)V

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {p1}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v1

    const-string v2, "pin_getting_address"

    invoke-virtual {v1, v2}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/Pin;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v0

    new-instance v1, Lnbisdk/if$1;

    invoke-direct {v1, p0, p1}, Lnbisdk/if$1;-><init>(Lnbisdk/if;Lnbisdk/au$d;)V

    invoke-virtual {p0, v0, v1}, Lnbisdk/if;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/geocode/ReverseGeocodeListener;)V

    return-void
.end method

.method protected final a(Lnbisdk/au$d;[I)V
    .locals 10

    const/4 v1, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lnbisdk/au$d;->jo()Lnbisdk/cj;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lnbisdk/cj;->eS()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v0

    check-cast v0, Lnbisdk/pj;

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

    invoke-virtual {p0}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Lnbisdk/jt;->pc:[I

    iget-object v6, p0, Lnbisdk/jt;->pd:[I

    invoke-virtual/range {v0 .. v6}, Lnbisdk/pj;->a(DD[I[I)V

    :cond_2
    iget-object v0, p0, Lnbisdk/jt;->pd:[I

    aget v0, v0, v8

    aput v0, p2, v8

    iget-object v0, p0, Lnbisdk/jt;->pd:[I

    aget v0, v0, v9

    aput v0, p2, v9

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

    iget-object v1, p0, Lnbisdk/jt;->pc:[I

    aget v1, v1, v8

    iget-object v2, p0, Lnbisdk/jt;->pd:[I

    aget v2, v2, v8

    iget-object v3, p0, Lnbisdk/jt;->pc:[I

    aget v3, v3, v8

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, p2, v8

    iget-object v1, p0, Lnbisdk/jt;->pc:[I

    aget v1, v1, v9

    iget-object v2, p0, Lnbisdk/jt;->pd:[I

    aget v2, v2, v9

    iget-object v3, p0, Lnbisdk/jt;->pc:[I

    aget v3, v3, v9

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    aput v0, p2, v9

    :cond_4
    :goto_0
    return-void

    :cond_5
    iput-boolean v8, p0, Lnbisdk/jt;->pb:Z

    iget-object v0, p0, Lnbisdk/jt;->pe:[I

    aput v1, v0, v8

    iget-object v0, p0, Lnbisdk/jt;->pe:[I

    aput v1, v0, v9

    invoke-virtual {p0}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lnbisdk/jt;->a(DDLnbisdk/au$d;[I)V

    invoke-virtual {p1}, Lnbisdk/au$d;->cH()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnbisdk/au$d;->jp()Lnbisdk/lt;

    move-result-object v0

    invoke-static {v0, p2}, Lnbisdk/q$a$a;->a(Lnbisdk/lt;[I)V

    goto :goto_0
.end method

.method public final b(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)Z
    .locals 15

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v1}, Lnbisdk/if;->a(Lnbisdk/au$d;[I)V

    iget-object v1, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/android/PinImage;->getTipY()I

    move-result v3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnbisdk/if;->xn:Z

    invoke-virtual/range {p1 .. p1}, Lnbisdk/au$d;->jg()Lnbisdk/au$d;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/au$d;->jk()Lnbisdk/uu;

    move-result-object v1

    iget v2, p0, Lnbisdk/jt;->oZ:I

    iget-object v4, p0, Lnbisdk/jt;->oW:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lnbisdk/jt;->oW:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v5, v3

    invoke-interface {v1, v2, v4, v5}, Lnbisdk/uu;->f(III)Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->set(Lcom/nbi/map/data/Rectangle;)V

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, p0, Lnbisdk/if;->xo:I

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lnbisdk/if;->xp:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnbisdk/if;->xn:Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnbisdk/au$d;->jf()Lcom/nbi/common/NBIContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/bt;

    invoke-virtual {v1}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v5

    const/4 v1, 0x0

    invoke-static {v1}, Lnbisdk/dr;->J(I)Lcom/nbi/map/android/PinImage;

    move-result-object v6

    const/4 v1, 0x2

    invoke-static {v1}, Lnbisdk/dr;->J(I)Lcom/nbi/map/android/PinImage;

    move-result-object v7

    const/4 v1, 0x3

    invoke-static {v1}, Lnbisdk/dr;->J(I)Lcom/nbi/map/android/PinImage;

    move-result-object v8

    const/4 v1, 0x1

    invoke-static {v1}, Lnbisdk/dr;->J(I)Lcom/nbi/map/android/PinImage;

    move-result-object v9

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v2, v10

    sub-int v10, v1, v2

    invoke-direct {p0, v4}, Lnbisdk/if;->m(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/String;

    const-string v2, "123"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    const-string v11, "456"

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v11}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v1, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getTitle()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v11, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v11}, Lcom/nbi/map/android/Pin;->getSubTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    iget-object v2, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v2}, Lcom/nbi/map/android/Pin;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget v11, p0, Lnbisdk/if;->xk:F

    const/4 v12, 0x1

    invoke-static {v1, v10, v11, v12}, Lnbisdk/if;->a(Ljava/lang/String;IFZ)Ljava/lang/String;

    move-result-object v1

    iget v11, p0, Lnbisdk/if;->xl:F

    const/4 v12, 0x0

    invoke-static {v2, v10, v11, v12}, Lnbisdk/if;->a(Ljava/lang/String;IFZ)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x2

    new-array v10, v10, [I

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_3

    const-string v1, "..."

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_4

    const-string v2, "..."

    :cond_4
    invoke-direct {p0, v4}, Lnbisdk/if;->m(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v12, p0, Lnbisdk/if;->xk:F

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v1, v12, v13, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/lit8 v12, v12, 0x0

    iget v13, p0, Lnbisdk/if;->xm:I

    add-int/2addr v12, v13

    iget v13, p0, Lnbisdk/if;->xl:F

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v2, v13, v14, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v12

    iget v11, p0, Lnbisdk/if;->xm:I

    add-int/2addr v4, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Lnbisdk/dr;->J(I)Lcom/nbi/map/android/PinImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x0

    aput v1, v10, v4

    const/4 v1, 0x1

    aput v2, v10, v1

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-virtual {v8}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v8}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int v3, v2, v3

    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    div-int/lit8 v4, v1, 0x2

    sub-int v4, v2, v4

    add-int/2addr v1, v4

    invoke-virtual {v7}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int v7, v1, v2

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v8}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    invoke-virtual {v9}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move v1, v2

    :goto_1
    if-le v1, v4, :cond_5

    sub-int/2addr v1, v9

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    invoke-virtual {v8}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    :goto_2
    if-ge v1, v7, :cond_6

    add-int/2addr v1, v9

    goto :goto_2

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    const/4 v1, 0x1

    aget v1, v10, v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    invoke-virtual {v6}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v2

    if-gez v2, :cond_9

    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v2, v1

    if-gtz v2, :cond_8

    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int v1, v2, v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    :cond_7
    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    goto :goto_3

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_7

    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v2, v1

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_a

    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    goto :goto_3
.end method

.method public final getErrorRadius()D
    .locals 2

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getErrorRadius()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected final getHaloAttributes()Lcom/nbi/map/android/Pin$HaloAttributes;
    .locals 1

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getHaloAttributes()Lcom/nbi/map/android/Pin$HaloAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lnbisdk/jt;->getHaloAttributes()Lcom/nbi/map/android/Pin$HaloAttributes;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLatitude()D
    .locals 2

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLatitude()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x3f70c80000000000L

    goto :goto_0
.end method

.method public final getLongitude()D
    .locals 2

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/MapLocation;->getLongitude()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x3f70c80000000000L

    goto :goto_0
.end method

.method public final j(Lnbisdk/au$d;)Lcom/nbi/map/data/Rectangle;
    .locals 9

    const/4 v8, 0x1

    new-instance v7, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v7}, Lcom/nbi/map/data/Rectangle;-><init>()V

    invoke-virtual {p0}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    iget-object v6, p0, Lnbisdk/jt;->oW:[I

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lnbisdk/jt;->a(DDLnbisdk/au$d;[I)V

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0}, Lcom/nbi/map/android/PinImage;->getTipX()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    aget v2, v2, v8

    invoke-virtual {v0}, Lcom/nbi/map/android/PinImage;->getTipY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v7, v1}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    invoke-virtual {v7, v2}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    invoke-virtual {v0}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {v7, v8}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    invoke-virtual {v7, v8}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    goto :goto_0
.end method

.method public final k(Lnbisdk/au$d;)Lcom/nbi/map/data/Rectangle;
    .locals 9

    new-instance v7, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v7}, Lcom/nbi/map/data/Rectangle;-><init>()V

    invoke-virtual {p0, p1, v7}, Lnbisdk/if;->b(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)Z

    invoke-virtual {p1}, Lnbisdk/au$d;->ji()Lnbisdk/gp;

    move-result-object v8

    invoke-virtual {p0}, Lnbisdk/if;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lnbisdk/if;->getLongitude()D

    move-result-wide v3

    iget-object v6, p0, Lnbisdk/jt;->oW:[I

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lnbisdk/jt;->a(DDLnbisdk/au$d;[I)V

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnbisdk/jt;->oW:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0}, Lcom/nbi/map/android/PinImage;->getTipX()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0}, Lcom/nbi/map/android/PinImage;->getTipY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Lnbisdk/gp;->i(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v6

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v0}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v0}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    :cond_0
    return-object v7
.end method

.method protected final l(Lnbisdk/au$d;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/Pin;->setValidPlaceInfo(Z)V

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {p1}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v1

    const-string v2, "pin_info_not_available"

    invoke-virtual {v1, v2}, Lnbisdk/mt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/Pin;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/Pin;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final mo()Lcom/nbi/map/android/Pin;
    .locals 1

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    return-object v0
.end method

.method protected final mp()V
    .locals 1

    iget-object v0, p0, Lnbisdk/if;->xq:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xq:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    invoke-virtual {v0}, Lcom/nbi/map/geocode/ReverseGeocodeRequest;->cancelRequest()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/if;->xq:Lcom/nbi/map/geocode/ReverseGeocodeRequest;

    :cond_0
    return-void
.end method

.method public final setLatitude(D)V
    .locals 1

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/data/MapLocation;->setLatitude(D)V

    :cond_0
    return-void
.end method

.method public final setLongitude(D)V
    .locals 1

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0}, Lcom/nbi/map/android/Pin;->getPlace()Lcom/nbi/map/data/Place;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Place;->getLocation()Lcom/nbi/map/data/MapLocation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/data/MapLocation;->setLongitude(D)V

    :cond_0
    return-void
.end method

.method public final setPinImage(Lcom/nbi/map/android/PinImage;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v0, p1}, Lcom/nbi/map/android/Pin;->setPinImage(Lcom/nbi/map/android/PinImage;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
