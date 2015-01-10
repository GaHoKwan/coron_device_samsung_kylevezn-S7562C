.class public final Lnbisdk/ee;
.super Lnbisdk/if;


# instance fields
.field private eb:Landroid/os/Handler;

.field private gG:Lnbisdk/au$d;

.field private gH:Landroid/graphics/Bitmap;

.field private gI:Landroid/graphics/Bitmap;

.field private gJ:Z

.field private gK:F

.field private gL:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lnbisdk/au$d;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/nbi/map/android/Pin;

    const/16 v1, 0xc

    new-instance v2, Lcom/nbi/map/data/Place;

    new-instance v3, Lcom/nbi/location/Location;

    invoke-direct {v3}, Lcom/nbi/location/Location;-><init>()V

    invoke-direct {v2, v3}, Lcom/nbi/map/data/Place;-><init>(Lcom/nbi/location/Location;)V

    invoke-direct {v0, v1, v2}, Lcom/nbi/map/android/Pin;-><init>(ILcom/nbi/map/data/Place;)V

    invoke-direct {p0, v0}, Lnbisdk/if;-><init>(Lcom/nbi/map/android/Pin;)V

    iput-boolean v5, p0, Lnbisdk/ee;->gJ:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnbisdk/ee;->eb:Landroid/os/Handler;

    new-instance v0, Lnbisdk/er;

    invoke-direct {v0, p0}, Lnbisdk/er;-><init>(Lnbisdk/ee;)V

    iput-object v0, p0, Lnbisdk/ee;->gL:Ljava/lang/Runnable;

    const/16 v0, -0x3e9

    iput v0, p0, Lnbisdk/jt;->oZ:I

    iput-object p1, p0, Lnbisdk/ee;->gG:Lnbisdk/au$d;

    iget-object v0, p0, Lnbisdk/ee;->gG:Lnbisdk/au$d;

    invoke-virtual {v0}, Lnbisdk/au$d;->ig()Lnbisdk/mt;

    move-result-object v0

    const-string v1, "gps.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnbisdk/ee;->gH:Landroid/graphics/Bitmap;

    const-string v1, "arrow.png"

    invoke-virtual {v0, v1}, Lnbisdk/mt;->w(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/ee;->gI:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    new-instance v1, Lcom/nbi/map/android/PinImage;

    iget-object v2, p0, Lnbisdk/ee;->gH:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lnbisdk/ee;->gH:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lnbisdk/ee;->gH:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3, v4}, Lcom/nbi/map/android/PinImage;-><init>(IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/nbi/map/android/Pin;->setPinImage(Lcom/nbi/map/android/PinImage;)Z

    invoke-virtual {p0, v5}, Lnbisdk/ee;->u(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Lnbisdk/au$d;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/ee;->gH:Landroid/graphics/Bitmap;

    iget v2, p0, Lnbisdk/jt;->oY:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p0, Lnbisdk/ee;->gK:F

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lnbisdk/ee;->gI:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lnbisdk/ee;->gI:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lnbisdk/ee;->gI:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nbi/map/android/PinImage;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nbi/map/android/PinImage;->setTipX(I)V

    iget-object v1, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/nbi/map/android/PinImage;->setTipY(I)V

    invoke-super {p0, p1, p2, p3, p4}, Lnbisdk/if;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;Lnbisdk/au$d;Z)V

    iput-boolean v6, p0, Lnbisdk/ee;->gJ:Z

    return-void
.end method

.method public final a(Lnbisdk/au$d;)V
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

    new-instance v1, Lnbisdk/ee$1;

    invoke-direct {v1, p0, p1}, Lnbisdk/ee$1;-><init>(Lnbisdk/ee;Lnbisdk/au$d;)V

    invoke-virtual {p0, v0, v1}, Lnbisdk/if;->a(Lcom/nbi/common/NBIContext;Lcom/nbi/map/geocode/ReverseGeocodeListener;)V

    return-void
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lnbisdk/ee;->gK:F

    return-void
.end method

.method public final b(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lnbisdk/ee;->gJ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput-boolean p1, p0, Lnbisdk/jt;->pa:Z

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lnbisdk/ee;->eb:Landroid/os/Handler;

    iget-object v1, p0, Lnbisdk/ee;->gL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lnbisdk/ee;->gG:Lnbisdk/au$d;

    invoke-virtual {p0, v0}, Lnbisdk/ee;->a(Lnbisdk/au$d;)V

    :goto_0
    iget-object v0, p0, Lnbisdk/ee;->gG:Lnbisdk/au$d;

    iget-object v1, p0, Lnbisdk/ee;->gG:Lnbisdk/au$d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnbisdk/au$d;->a(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lnbisdk/ee;->eb:Landroid/os/Handler;

    iget-object v1, p0, Lnbisdk/ee;->gL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lnbisdk/if;->mp()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnbisdk/ee;->eb:Landroid/os/Handler;

    iget-object v1, p0, Lnbisdk/ee;->gL:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final d(II)Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lnbisdk/ee;->gJ:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lnbisdk/ee;->gG:Lnbisdk/au$d;

    iget-object v2, p0, Lnbisdk/jt;->oW:[I

    invoke-virtual {p0, v1, v2}, Lnbisdk/if;->a(Lnbisdk/au$d;[I)V

    iget-object v1, p0, Lnbisdk/if;->xj:Lcom/nbi/map/android/Pin;

    invoke-virtual {v1}, Lcom/nbi/map/android/Pin;->getPinImage()Lcom/nbi/map/android/PinImage;

    move-result-object v1

    new-instance v2, Lcom/nbi/map/data/Rectangle;

    iget-object v3, p0, Lnbisdk/jt;->oW:[I

    aget v0, v3, v0

    invoke-virtual {v1}, Lcom/nbi/map/android/PinImage;->getTipX()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lnbisdk/jt;->oW:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1}, Lcom/nbi/map/android/PinImage;->getTipY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/nbi/map/android/PinImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/nbi/map/data/Rectangle;-><init>(IIII)V

    invoke-virtual {v2, p1, p2}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v0

    goto :goto_0
.end method

.method public final e(II)Z
    .locals 2

    new-instance v0, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v0}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iget-object v1, p0, Lnbisdk/ee;->gG:Lnbisdk/au$d;

    invoke-virtual {p0, v1, v0}, Lnbisdk/if;->b(Lnbisdk/au$d;Lcom/nbi/map/data/Rectangle;)Z

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    invoke-virtual {v0, p1, p2}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v0

    return v0
.end method

.method public final eQ()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/ee;->gJ:Z

    return v0
.end method

.method public final t(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/ee;->gJ:Z

    return-void
.end method

.method public final u(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lnbisdk/jt;->oY:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lnbisdk/jt;->oY:I

    goto :goto_0
.end method
