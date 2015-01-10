.class public final Lnbisdk/xn;
.super Ljava/lang/Object;


# instance fields
.field private Df:Lnbisdk/pc;

.field private Dg:Lnbisdk/pc;

.field private Dh:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Di:Lnbisdk/r;

.field private Dj:Lnbisdk/fw;

.field private Dk:Landroid/graphics/Rect;

.field private Dl:Landroid/graphics/Rect;

.field private Dm:I

.field private dI:Landroid/graphics/Paint;

.field private lh:Lnbisdk/au;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnbisdk/fw;Lnbisdk/au;Lnbisdk/pc;Lnbisdk/pc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnbisdk/xn;->lh:Lnbisdk/au;

    iput-object p3, p0, Lnbisdk/xn;->Df:Lnbisdk/pc;

    iput-object p4, p0, Lnbisdk/xn;->Dg:Lnbisdk/pc;

    iput-object p1, p0, Lnbisdk/xn;->Dj:Lnbisdk/fw;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnbisdk/xn;->Dk:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnbisdk/xn;->Dl:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnbisdk/xn;->dI:Landroid/graphics/Paint;

    return-void
.end method

.method private a(Lnbisdk/hf;ILnbisdk/r;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lnbisdk/hf;->hr()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lnbisdk/hf;->hp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/xn;->Dh:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lnbisdk/xn;->lh:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au;->ji()Lnbisdk/gp;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/gp;->gG()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p3, Lnbisdk/r;->as:Lnbisdk/r$b;

    move v4, v2

    move-object v5, v1

    move v1, v2

    :goto_0
    if-eqz v5, :cond_4

    if-nez v4, :cond_0

    iget v4, v5, Lnbisdk/r$b;->zo:I

    if-ne p2, v4, :cond_2

    :cond_0
    move v4, v3

    :goto_1
    if-nez v1, :cond_1

    iget v1, v5, Lnbisdk/r$b;->zn:I

    if-ne v6, v1, :cond_3

    :cond_1
    move v1, v3

    :goto_2
    iget-object v5, v5, Lnbisdk/r$b;->zp:Lnbisdk/r$b;

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    if-eqz v2, :cond_7

    invoke-virtual {p1, v3}, Lnbisdk/hf;->B(Z)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    iget-object v1, p0, Lnbisdk/xn;->Di:Lnbisdk/r;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Lnbisdk/r;->add(II)V

    goto :goto_3
.end method

.method private jl()V
    .locals 13

    iget-object v0, p0, Lnbisdk/xn;->lh:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jK()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v0, p0, Lnbisdk/xn;->Dj:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cq()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    iget-object v1, p0, Lnbisdk/xn;->Dg:Lnbisdk/pc;

    invoke-virtual {v1}, Lnbisdk/pc;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    iget-object v1, p0, Lnbisdk/xn;->Dg:Lnbisdk/pc;

    invoke-virtual {v1, v6}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v4

    invoke-virtual {v4}, Lnbisdk/hf;->hr()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v7, :cond_3

    iget-object v1, p0, Lnbisdk/xn;->dI:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4}, Lnbisdk/hf;->hn()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4}, Lnbisdk/hf;->ho()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4}, Lnbisdk/hf;->hn()I

    move-result v3

    invoke-virtual {v4}, Lnbisdk/hf;->cE()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v4}, Lnbisdk/hf;->ho()I

    move-result v5

    invoke-virtual {v4}, Lnbisdk/hf;->cE()I

    move-result v4

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lnbisdk/xn;->dI:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lnbisdk/hf;->hn()I

    move-result v1

    invoke-virtual {v4}, Lnbisdk/hf;->ho()I

    move-result v2

    invoke-virtual {v4}, Lnbisdk/hf;->cE()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int v8, v1, v3

    add-int v9, v2, v3

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_2

    move v1, v2

    :goto_2
    if-ge v1, v9, :cond_4

    int-to-float v10, v3

    int-to-float v11, v1

    const/4 v12, 0x0

    invoke-virtual {v0, v7, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v1, v5

    goto :goto_2

    :cond_4
    add-int v1, v3, v4

    move v3, v1

    goto :goto_1
.end method

.method private oG()V
    .locals 3

    new-instance v0, Lnbisdk/r;

    invoke-direct {v0}, Lnbisdk/r;-><init>()V

    iput-object v0, p0, Lnbisdk/xn;->Di:Lnbisdk/r;

    iget v0, p0, Lnbisdk/xn;->Dm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnbisdk/xn;->Df:Lnbisdk/pc;

    invoke-virtual {v0}, Lnbisdk/pc;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lnbisdk/xn;->Df:Lnbisdk/pc;

    invoke-virtual {v1, v0}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/xn;->Di:Lnbisdk/r;

    invoke-direct {p0, v1, v0, v2}, Lnbisdk/xn;->a(Lnbisdk/hf;ILnbisdk/r;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lnbisdk/xn;->Df:Lnbisdk/pc;

    invoke-virtual {v1}, Lnbisdk/pc;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnbisdk/xn;->Df:Lnbisdk/pc;

    invoke-virtual {v1, v0}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v1

    iget-object v2, p0, Lnbisdk/xn;->Di:Lnbisdk/r;

    invoke-direct {p0, v1, v0, v2}, Lnbisdk/xn;->a(Lnbisdk/hf;ILnbisdk/r;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private oH()V
    .locals 10

    iget-object v0, p0, Lnbisdk/xn;->Di:Lnbisdk/r;

    invoke-virtual {v0}, Lnbisdk/r;->I()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/r$b;

    iget-object v2, p0, Lnbisdk/xn;->Df:Lnbisdk/pc;

    iget v3, v0, Lnbisdk/r$b;->zn:I

    invoke-virtual {v2, v3}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v2

    iget-object v3, p0, Lnbisdk/xn;->Dg:Lnbisdk/pc;

    iget v4, v0, Lnbisdk/r$b;->zo:I

    invoke-virtual {v3, v4}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v3

    invoke-virtual {v2}, Lnbisdk/hf;->hr()Z

    move-result v4

    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {v3, v2}, Lnbisdk/hf;->b(Lnbisdk/hf;)V

    iget v4, v0, Lnbisdk/r$b;->zn:I

    iget v0, v0, Lnbisdk/r$b;->zo:I

    if-eq v4, v0, :cond_0

    iget-object v0, p0, Lnbisdk/xn;->Dj:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cq()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v4, p0, Lnbisdk/xn;->Dj:Lnbisdk/fw;

    invoke-virtual {v4}, Lnbisdk/fw;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lnbisdk/xn;->Dk:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lnbisdk/hf;->hn()I

    move-result v6

    invoke-virtual {v2}, Lnbisdk/hf;->ho()I

    move-result v7

    invoke-virtual {v2}, Lnbisdk/hf;->hn()I

    move-result v8

    invoke-virtual {v2}, Lnbisdk/hf;->cE()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v2}, Lnbisdk/hf;->ho()I

    move-result v9

    invoke-virtual {v2}, Lnbisdk/hf;->cE()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lnbisdk/xn;->Dl:Landroid/graphics/Rect;

    invoke-virtual {v3}, Lnbisdk/hf;->hn()I

    move-result v5

    invoke-virtual {v3}, Lnbisdk/hf;->ho()I

    move-result v6

    invoke-virtual {v3}, Lnbisdk/hf;->hn()I

    move-result v7

    invoke-virtual {v3}, Lnbisdk/hf;->cE()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Lnbisdk/hf;->ho()I

    move-result v8

    invoke-virtual {v3}, Lnbisdk/hf;->cE()I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lnbisdk/xn;->Dk:Landroid/graphics/Rect;

    iget-object v3, p0, Lnbisdk/xn;->Dl:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private oI()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnbisdk/xn;->Dg:Lnbisdk/pc;

    invoke-virtual {v1}, Lnbisdk/pc;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnbisdk/xn;->Dg:Lnbisdk/pc;

    invoke-virtual {v1, v0}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/hf;->hs()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnbisdk/hf;->hq()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ZI)V
    .locals 4

    iget-object v0, p0, Lnbisdk/xn;->Df:Lnbisdk/pc;

    invoke-virtual {v0}, Lnbisdk/pc;->size()I

    move-result v0

    iget-object v1, p0, Lnbisdk/xn;->Dg:Lnbisdk/pc;

    invoke-virtual {v1}, Lnbisdk/pc;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p2, p0, Lnbisdk/xn;->Dm:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/xn;->Dh:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lnbisdk/xn;->Dg:Lnbisdk/pc;

    invoke-virtual {v1}, Lnbisdk/pc;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lnbisdk/xn;->Dg:Lnbisdk/pc;

    invoke-virtual {v1, v0}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/hf;->hp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v3, p0, Lnbisdk/xn;->Dh:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lnbisdk/xn;->oG()V

    invoke-direct {p0}, Lnbisdk/xn;->oH()V

    invoke-direct {p0}, Lnbisdk/xn;->oI()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lnbisdk/xn;->jl()V

    goto :goto_0
.end method
