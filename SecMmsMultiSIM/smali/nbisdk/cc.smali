.class public Lnbisdk/cc;
.super Ljava/lang/Object;


# instance fields
.field private dA:Lnbisdk/au;

.field private dB:I

.field private dC:I

.field private dD:Landroid/graphics/Rect;

.field private dE:Landroid/graphics/Rect;

.field private dF:Landroid/graphics/Rect;

.field private dG:I

.field private dH:Landroid/graphics/Bitmap;

.field private dI:Landroid/graphics/Paint;

.field private dJ:B

.field private dz:Lnbisdk/fw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nbi/common/NBIContext;Lnbisdk/au;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lnbisdk/cc;->dB:I

    const/4 v0, 0x1

    iput v0, p0, Lnbisdk/cc;->dC:I

    iput v1, p0, Lnbisdk/cc;->dG:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnbisdk/cc;->dI:Landroid/graphics/Paint;

    iput-object p2, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    new-instance v0, Lnbisdk/fw;

    iget-object v1, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-direct {v0, p1, v1}, Lnbisdk/fw;-><init>(Lcom/nbi/common/NBIContext;Lnbisdk/au;)V

    iput-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnbisdk/cc;->dD:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnbisdk/cc;->dF:Landroid/graphics/Rect;

    return-void
.end method

.method private cd()V
    .locals 10

    const/4 v2, 0x0

    iput-byte v2, p0, Lnbisdk/cc;->dJ:B

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cF()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v1}, Lnbisdk/fw;->ck()I

    move-result v1

    iget-object v3, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v3}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v4

    sub-int v5, v1, v3

    if-gez v5, :cond_4

    iget-byte v1, p0, Lnbisdk/cc;->dJ:B

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Lnbisdk/cc;->dJ:B

    :cond_0
    :goto_0
    iget-object v1, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v1}, Lnbisdk/fw;->cl()I

    move-result v1

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v0

    iget-object v3, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v3}, Lnbisdk/au;->ji()Lnbisdk/gp;

    move-result-object v3

    invoke-virtual {v3}, Lnbisdk/gp;->gD()Z

    move-result v3

    if-eqz v3, :cond_7

    if-gez v1, :cond_5

    iget-byte v0, p0, Lnbisdk/cc;->dJ:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lnbisdk/cc;->dJ:B

    :cond_1
    :goto_1
    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cF()Lcom/nbi/map/data/Rectangle;

    move-result-object v6

    iget-object v0, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lnbisdk/cc;->cm()I

    move-result v5

    invoke-virtual {p0}, Lnbisdk/cc;->cn()I

    move-result v3

    iget-object v0, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->ji()Lnbisdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/gp;->gD()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v0

    :goto_2
    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v6

    if-gez v5, :cond_d

    add-int/2addr v4, v5

    move v5, v2

    :cond_2
    :goto_3
    if-gez v3, :cond_f

    iget-object v6, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v6}, Lnbisdk/au;->ji()Lnbisdk/gp;

    move-result-object v6

    invoke-virtual {v6}, Lnbisdk/gp;->gD()Z

    move-result v6

    if-nez v6, :cond_e

    add-int/2addr v0, v3

    :cond_3
    :goto_4
    move v1, v2

    :goto_5
    iget-object v3, p0, Lnbisdk/cc;->dD:Landroid/graphics/Rect;

    add-int/2addr v4, v5

    add-int/2addr v0, v1

    invoke-virtual {v3, v5, v1, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lnbisdk/cc;->cm()I

    move-result v0

    if-gez v0, :cond_10

    neg-int v0, v0

    :goto_6
    invoke-virtual {p0}, Lnbisdk/cc;->cn()I

    move-result v1

    if-gez v1, :cond_11

    neg-int v1, v1

    :goto_7
    iget-object v3, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    iget-object v4, p0, Lnbisdk/cc;->dD:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lnbisdk/cc;->dD:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-byte v0, p0, Lnbisdk/cc;->dJ:B

    if-nez v0, :cond_12

    iget-object v0, p0, Lnbisdk/cc;->dF:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_8
    return-void

    :cond_4
    add-int/2addr v1, v3

    if-le v1, v4, :cond_0

    iget-byte v1, p0, Lnbisdk/cc;->dJ:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lnbisdk/cc;->dJ:B

    goto/16 :goto_0

    :cond_5
    if-le v1, v0, :cond_1

    :cond_6
    :goto_9
    iget-byte v0, p0, Lnbisdk/cc;->dJ:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lnbisdk/cc;->dJ:B

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v3}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v4}, Lnbisdk/au;->jS()I

    move-result v4

    iget-object v5, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v5}, Lnbisdk/au;->ji()Lnbisdk/gp;

    move-result-object v5

    invoke-virtual {v5}, Lnbisdk/gp;->gF()I

    move-result v5

    sub-int v6, v1, v3

    if-gez v6, :cond_8

    invoke-direct {p0}, Lnbisdk/cc;->ce()I

    move-result v6

    if-gtz v6, :cond_9

    :cond_8
    if-gez v5, :cond_a

    :cond_9
    iget-byte v0, p0, Lnbisdk/cc;->dJ:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lnbisdk/cc;->dJ:B

    goto/16 :goto_1

    :cond_a
    add-int/2addr v1, v3

    if-le v1, v0, :cond_b

    invoke-direct {p0}, Lnbisdk/cc;->cf()I

    move-result v0

    if-gtz v0, :cond_6

    :cond_b
    if-le v5, v4, :cond_1

    goto :goto_9

    :cond_c
    move v0, v1

    goto/16 :goto_2

    :cond_d
    add-int v8, v5, v4

    if-le v8, v7, :cond_2

    sub-int v4, v7, v5

    goto/16 :goto_3

    :cond_e
    sub-int v6, v0, v3

    if-le v6, v1, :cond_3

    add-int v0, v1, v3

    goto/16 :goto_4

    :cond_f
    add-int v1, v3, v0

    if-le v1, v6, :cond_1b

    sub-int v0, v6, v3

    move v1, v3

    goto/16 :goto_5

    :cond_10
    move v0, v2

    goto/16 :goto_6

    :cond_11
    move v1, v2

    goto/16 :goto_7

    :cond_12
    iget-object v0, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    iget-byte v0, p0, Lnbisdk/cc;->dJ:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_15

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v3

    iget-object v0, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lnbisdk/cc;->ce()I

    move-result v4

    sub-int/2addr v0, v4

    if-gez v0, :cond_13

    move v0, v2

    :cond_13
    iget-byte v4, p0, Lnbisdk/cc;->dJ:B

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    move v9, v1

    move v1, v3

    move v3, v2

    move v2, v0

    move v0, v9

    :goto_a
    iget-object v4, p0, Lnbisdk/cc;->dF:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_8

    :cond_14
    iget-object v1, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move v9, v1

    move v1, v3

    move v3, v2

    move v2, v0

    move v0, v9

    goto :goto_a

    :cond_15
    iget-byte v0, p0, Lnbisdk/cc;->dJ:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v3

    iget-object v0, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lnbisdk/cc;->cf()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v4

    if-le v0, v4, :cond_16

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v0

    :cond_16
    iget-byte v1, p0, Lnbisdk/cc;->dJ:B

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_17

    move v1, v3

    move v3, v2

    goto :goto_a

    :cond_17
    iget-object v1, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move v9, v1

    move v1, v3

    move v3, v2

    move v2, v9

    goto :goto_a

    :cond_18
    iget-byte v0, p0, Lnbisdk/cc;->dJ:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_19

    iget-object v0, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v9, v0

    move v0, v2

    move v2, v9

    :goto_b
    iget-object v1, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v3

    move v9, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v9

    goto :goto_a

    :cond_19
    iget-byte v0, p0, Lnbisdk/cc;->dJ:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v2

    goto :goto_b

    :cond_1a
    move v0, v2

    goto :goto_b

    :cond_1b
    move v1, v3

    goto/16 :goto_5
.end method

.method private ce()I
    .locals 2

    iget-object v0, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->ji()Lnbisdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/gp;->gF()I

    move-result v0

    iget-object v1, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v1}, Lnbisdk/fw;->cl()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private cf()I
    .locals 3

    iget-object v0, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jS()I

    move-result v0

    iget-object v1, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au;->ji()Lnbisdk/gp;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/gp;->gF()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v1}, Lnbisdk/fw;->cF()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v2}, Lnbisdk/fw;->cl()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Lnbisdk/ct;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnbisdk/ct;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/hf;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0, p1}, Lnbisdk/fw;->a(Lnbisdk/ct;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final a(F[I)V
    .locals 10

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cq()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au;->jl()V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Lnbisdk/cc;->cm()I

    move-result v3

    sub-float v4, v9, p1

    aget v5, p2, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v2, v6

    invoke-virtual {p0}, Lnbisdk/cc;->cn()I

    move-result v3

    sub-float v4, v9, p1

    aget v5, p2, v7

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v2, v7

    aget v3, v2, v6

    int-to-float v3, v3

    aget v2, v2, v7

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v1, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cp()V

    :cond_0
    return-void
.end method

.method public final a(Lnbisdk/fw$b;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0, p1}, Lnbisdk/fw;->a(Lnbisdk/fw$b;)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 2

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    iget v1, p0, Lnbisdk/cc;->dG:I

    invoke-virtual {v0, p1, p2, v1}, Lnbisdk/fw;->a(ZZI)V

    return-void
.end method

.method public final a([I)V
    .locals 11

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnbisdk/cc;->cm()I

    move-result v0

    if-gez v0, :cond_0

    iput v4, p0, Lnbisdk/cc;->dG:I

    :goto_0
    new-array v6, v4, [I

    iget-object v0, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->cE()I

    move-result v0

    iget v1, p0, Lnbisdk/cc;->dC:I

    mul-int v7, v0, v1

    aget v0, p1, v2

    div-int v3, v0, v7

    aget v0, p1, v10

    div-int v4, v0, v7

    mul-int v0, v3, v7

    aput v0, v6, v2

    mul-int v0, v4, v7

    aput v0, v6, v10

    aget v0, p1, v2

    aget v1, v6, v2

    sub-int/2addr v0, v1

    aput v0, v6, v2

    aget v0, p1, v10

    aget v1, v6, v10

    sub-int/2addr v0, v1

    aput v0, v6, v10

    iget-object v0, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lnbisdk/cc;->dB:I

    sub-int/2addr v0, v1

    shl-int v8, v10, v0

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cF()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v0

    div-int/2addr v1, v7

    div-int v9, v0, v7

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_2

    div-int/lit8 v0, v1, 0x2

    :goto_1
    rem-int/lit8 v1, v9, 0x2

    if-nez v1, :cond_3

    div-int/lit8 v1, v9, 0x2

    move v5, v1

    :goto_2
    sub-int v1, v3, v0

    add-int/lit8 v3, v1, 0x1

    sub-int v1, v4, v5

    add-int/lit8 v1, v1, 0x1

    if-gez v3, :cond_4

    add-int/2addr v3, v8

    move v4, v3

    :goto_3
    sub-int v3, v8, v9

    if-gez v1, :cond_6

    move v3, v2

    :goto_4
    iget-object v8, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v8, v4, v3}, Lnbisdk/fw;->o(II)V

    iget-object v3, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v7

    aget v2, v6, v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v5, -0x1

    add-int/2addr v1, v2

    mul-int/2addr v1, v7

    aget v2, v6, v10

    add-int/2addr v1, v2

    invoke-virtual {v3, v0, v1}, Lnbisdk/fw;->p(II)V

    invoke-direct {p0}, Lnbisdk/cc;->cd()V

    return-void

    :cond_0
    iget-object v1, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v1}, Lnbisdk/fw;->cF()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    iget-object v3, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v3}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    iput v10, p0, Lnbisdk/cc;->dG:I

    goto/16 :goto_0

    :cond_1
    iput v2, p0, Lnbisdk/cc;->dG:I

    goto/16 :goto_0

    :cond_2
    div-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    div-int/lit8 v1, v9, 0x2

    add-int/lit8 v1, v1, 0x1

    move v5, v1

    goto :goto_2

    :cond_4
    if-lt v3, v8, :cond_5

    sub-int/2addr v3, v8

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v3

    goto :goto_3

    :cond_6
    if-le v1, v3, :cond_7

    sub-int/2addr v1, v3

    goto :goto_4

    :cond_7
    move v3, v1

    move v1, v2

    goto :goto_4
.end method

.method public final a(Lcom/nbi/map/data/Rectangle;)Z
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0, p1}, Lnbisdk/fw;->a(Lcom/nbi/map/data/Rectangle;)Z

    move-result v0

    return v0
.end method

.method public final b(II)V
    .locals 3

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    iget-object v1, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v1}, Lnbisdk/fw;->ck()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v2}, Lnbisdk/fw;->cl()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lnbisdk/fw;->p(II)V

    invoke-direct {p0}, Lnbisdk/cc;->cd()V

    return-void
.end method

.method public final b(Lnbisdk/ct;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0, p1}, Lnbisdk/fw;->b(Lnbisdk/ct;)V

    return-void
.end method

.method public final c(II)V
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0, p1, p2}, Lnbisdk/fw;->p(II)V

    invoke-direct {p0}, Lnbisdk/cc;->cd()V

    return-void
.end method

.method public final cg()Lcom/nbi/map/data/Rectangle;
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cF()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public final ch()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dD:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final ci()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final cj()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dF:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final ck()I
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->ck()I

    move-result v0

    return v0
.end method

.method public final cl()I
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cl()I

    move-result v0

    return v0
.end method

.method public final cm()I
    .locals 2

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->ck()I

    move-result v0

    iget-object v1, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final cn()I
    .locals 2

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cl()I

    move-result v0

    iget-object v1, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final co()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->co()Z

    move-result v0

    return v0
.end method

.method public final cp()V
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cp()V

    return-void
.end method

.method public final cq()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cq()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public final cr()Lnbisdk/pc;
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cr()Lnbisdk/pc;

    move-result-object v0

    return-object v0
.end method

.method public final cs()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final ct()Z
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->ct()Z

    move-result v0

    return v0
.end method

.method public final cu()V
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cu()V

    return-void
.end method

.method public final cv()Z
    .locals 1

    iget-byte v0, p0, Lnbisdk/cc;->dJ:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cw()B
    .locals 1

    iget-byte v0, p0, Lnbisdk/cc;->dJ:B

    return v0
.end method

.method public final destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->destroy()V

    iput-object v1, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    :cond_0
    iput-object v1, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    iput-object v1, p0, Lnbisdk/cc;->dD:Landroid/graphics/Rect;

    iput-object v1, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    iput-object v1, p0, Lnbisdk/cc;->dF:Landroid/graphics/Rect;

    iput-object v1, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final f(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au$d;->jh()Lcom/nbi/map/data/Rectangle;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v2

    iget-object v3, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v3}, Lnbisdk/au;->dw()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lnbisdk/cc;->dI:Landroid/graphics/Paint;

    const v4, -0x21292b

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lnbisdk/cc;->dI:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lnbisdk/cc;->dD:Landroid/graphics/Rect;

    iget-object v4, p0, Lnbisdk/cc;->dE:Landroid/graphics/Rect;

    iget-object v5, p0, Lnbisdk/cc;->dI:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v0, v2, v1, v6, v6}, Lnbisdk/au;->a(Landroid/graphics/Canvas;Lcom/nbi/map/data/Rectangle;ZZ)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v2

    if-eq v0, v2, :cond_0

    :cond_3
    iget-object v0, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v2

    iget-object v3, p0, Lnbisdk/cc;->dA:Lnbisdk/au;

    invoke-virtual {v3}, Lnbisdk/au;->dw()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/cc;->dH:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final m(I)V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lnbisdk/cc;->dB:I

    const/4 v0, 0x2

    iput v0, p0, Lnbisdk/cc;->dC:I

    iget-object v0, p0, Lnbisdk/cc;->dz:Lnbisdk/fw;

    invoke-virtual {v0, v1}, Lnbisdk/fw;->m(I)V

    return-void
.end method
