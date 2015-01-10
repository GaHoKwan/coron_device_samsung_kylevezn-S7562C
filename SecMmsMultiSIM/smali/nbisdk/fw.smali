.class public final Lnbisdk/fw;
.super Ljava/lang/Object;


# instance fields
.field private BW:Lcom/nbi/map/data/Rectangle;

.field private BX:Lcom/nbi/map/data/Rectangle;

.field private BY:Landroid/graphics/Canvas;

.field private BZ:Lnbisdk/pc;

.field private Ca:Lnbisdk/pc;

.field private Cb:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private Cc:Lnbisdk/fw$b;

.field private Cd:I

.field private Ce:I

.field private Cf:I

.field private Cg:I

.field private dA:Lnbisdk/au;

.field private dB:I

.field private dC:I

.field private mContext:Landroid/content/Context;

.field private vI:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/nbi/common/NBIContext;Lnbisdk/au;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnbisdk/fw;->dB:I

    const/4 v0, 0x1

    iput v0, p0, Lnbisdk/fw;->dC:I

    invoke-virtual {p1}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->nE()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/fw;->mContext:Landroid/content/Context;

    invoke-static {}, Lnbisdk/bt;->nD()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/fw;->Cb:Ljava/util/Hashtable;

    iput-object p2, p0, Lnbisdk/fw;->dA:Lnbisdk/au;

    new-instance v0, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v0}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v0, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    invoke-direct {p0}, Lnbisdk/fw;->ov()V

    iget-object v0, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->makeClone()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/fw;->BX:Lcom/nbi/map/data/Rectangle;

    new-instance v0, Lnbisdk/pc;

    invoke-direct {v0}, Lnbisdk/pc;-><init>()V

    iput-object v0, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    new-instance v0, Lnbisdk/pc;

    invoke-direct {v0}, Lnbisdk/pc;-><init>()V

    iput-object v0, p0, Lnbisdk/fw;->Ca:Lnbisdk/pc;

    new-instance v0, Lnbisdk/fw$a;

    invoke-direct {v0, p0}, Lnbisdk/fw$a;-><init>(Lnbisdk/fw;)V

    invoke-virtual {p2, v0}, Lnbisdk/au;->a(Lnbisdk/fw$a;)V

    return-void
.end method

.method static synthetic a(Lnbisdk/fw;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/fw;->invalidate()V

    return-void
.end method

.method private invalidate()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v1}, Lnbisdk/pc;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v1, v0}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/hf;->hq()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ov()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    iget-object v0, p0, Lnbisdk/fw;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lnbisdk/fw;->dA:Lnbisdk/au;

    invoke-virtual {v2}, Lnbisdk/au;->cE()I

    move-result v2

    iget v3, p0, Lnbisdk/fw;->dC:I

    mul-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {v1, v4}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    invoke-virtual {v1, v4}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    mul-int v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    mul-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    iget v0, p0, Lnbisdk/fw;->dB:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lnbisdk/fw;->Cb:Ljava/util/Hashtable;

    const-string v1, "ossBitmap"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v0

    iget-object v1, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lnbisdk/fw;->dA:Lnbisdk/au;

    invoke-virtual {v2}, Lnbisdk/au;->dw()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v0

    iget-object v1, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lnbisdk/fw;->dA:Lnbisdk/au;

    invoke-virtual {v2}, Lnbisdk/au;->dw()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lnbisdk/fw;->Cb:Ljava/util/Hashtable;

    const-string v2, "ossBitmap"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnbisdk/fw;->Cb:Ljava/util/Hashtable;

    const-string v1, "ossKey"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lnbisdk/fw;->BY:Landroid/graphics/Canvas;

    :cond_5
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lnbisdk/ct;)Ljava/util/Vector;
    .locals 3
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

    iget-object v0, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v0, p1}, Lnbisdk/pc;->f(Lnbisdk/ct;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lnbisdk/fw$1;

    invoke-direct {v1, p0}, Lnbisdk/fw$1;-><init>(Lnbisdk/fw;)V

    invoke-static {v0, v1}, Lnbisdk/xd;->b(Ljava/util/Vector;Lnbisdk/fz;)V

    :cond_0
    return-object v0
.end method

.method public final a(Lnbisdk/fw$b;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/fw;->Cc:Lnbisdk/fw$b;

    return-void
.end method

.method public final a(ZZI)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lnbisdk/fw;->invalidate()V

    :cond_0
    iget-object v0, p0, Lnbisdk/fw;->Ca:Lnbisdk/pc;

    iget-object v1, p0, Lnbisdk/fw;->dA:Lnbisdk/au;

    invoke-virtual {p0}, Lnbisdk/fw;->cF()Lcom/nbi/map/data/Rectangle;

    move-result-object v2

    iget v3, p0, Lnbisdk/fw;->Cd:I

    iget v4, p0, Lnbisdk/fw;->Cf:I

    iget v5, p0, Lnbisdk/fw;->Cg:I

    iget v6, p0, Lnbisdk/fw;->Ce:I

    invoke-virtual/range {v0 .. v6}, Lnbisdk/pc;->a(Lnbisdk/au;Lcom/nbi/map/data/Rectangle;IIII)V

    iget v0, p0, Lnbisdk/fw;->dB:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lnbisdk/fw;->dA:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->ji()Lnbisdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/gp;->gD()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lnbisdk/yp;

    iget-object v1, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    iget-object v2, p0, Lnbisdk/fw;->Ca:Lnbisdk/pc;

    invoke-direct {v0, p0, v1, v2}, Lnbisdk/yp;-><init>(Lnbisdk/fw;Lnbisdk/pc;Lnbisdk/pc;)V

    invoke-virtual {v0}, Lnbisdk/yp;->pc()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    iget-object v1, p0, Lnbisdk/fw;->Ca:Lnbisdk/pc;

    iput-object v1, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    iput-object v0, p0, Lnbisdk/fw;->Ca:Lnbisdk/pc;

    iget-object v0, p0, Lnbisdk/fw;->Cc:Lnbisdk/fw$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/fw;->Cc:Lnbisdk/fw$b;

    invoke-interface {v0}, Lnbisdk/fw$b;->mw()V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lnbisdk/xn;

    iget-object v1, p0, Lnbisdk/fw;->dA:Lnbisdk/au;

    iget-object v2, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    iget-object v3, p0, Lnbisdk/fw;->Ca:Lnbisdk/pc;

    invoke-direct {v0, p0, v1, v2, v3}, Lnbisdk/xn;-><init>(Lnbisdk/fw;Lnbisdk/au;Lnbisdk/pc;Lnbisdk/pc;)V

    invoke-virtual {v0, p2, p3}, Lnbisdk/xn;->a(ZI)V

    goto :goto_0
.end method

.method public final a(Lcom/nbi/map/data/Rectangle;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v3}, Lnbisdk/pc;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v3, v0}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnbisdk/hf;->c(Lcom/nbi/map/data/Rectangle;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Lnbisdk/hf;->A(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final b(Lnbisdk/ct;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v1}, Lnbisdk/pc;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v1, v0}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnbisdk/hf;->c(Lnbisdk/ct;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final cF()Lcom/nbi/map/data/Rectangle;
    .locals 3

    iget-object v0, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    iget-object v1, p0, Lnbisdk/fw;->dA:Lnbisdk/au;

    invoke-virtual {v1}, Lnbisdk/au;->jS()I

    move-result v1

    iget-object v2, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lnbisdk/fw;->BX:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    iget-object v0, p0, Lnbisdk/fw;->BX:Lcom/nbi/map/data/Rectangle;

    :cond_0
    return-object v0
.end method

.method public final ck()I
    .locals 1

    iget v0, p0, Lnbisdk/fw;->Cg:I

    return v0
.end method

.method public final cl()I
    .locals 1

    iget v0, p0, Lnbisdk/fw;->Ce:I

    return v0
.end method

.method public final co()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lnbisdk/fw;->dB:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    move v3, v2

    :goto_1
    iget-object v4, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v4}, Lnbisdk/pc;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v4, v3}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnbisdk/hf;->A(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public final cp()V
    .locals 1

    iget-object v0, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v0}, Lnbisdk/pc;->lg()V

    invoke-direct {p0}, Lnbisdk/fw;->invalidate()V

    return-void
.end method

.method public final cq()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lnbisdk/fw;->BY:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public final cr()Lnbisdk/pc;
    .locals 1

    iget-object v0, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    return-object v0
.end method

.method public final ct()Z
    .locals 2

    iget-object v0, p0, Lnbisdk/fw;->Cb:Ljava/util/Hashtable;

    const-string v1, "ossKey"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cu()V
    .locals 4

    iget-object v0, p0, Lnbisdk/fw;->Cb:Ljava/util/Hashtable;

    const-string v1, "ossKey"

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final destroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lnbisdk/fw;->dA:Lnbisdk/au;

    iget-object v0, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v0}, Lnbisdk/pc;->destroy()V

    iput-object v1, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    :cond_0
    iget-object v0, p0, Lnbisdk/fw;->Ca:Lnbisdk/pc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/fw;->Ca:Lnbisdk/pc;

    invoke-virtual {v0}, Lnbisdk/pc;->destroy()V

    iput-object v1, p0, Lnbisdk/fw;->Ca:Lnbisdk/pc;

    :cond_1
    iput-object v1, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    iput-object v1, p0, Lnbisdk/fw;->BX:Lcom/nbi/map/data/Rectangle;

    iput-object v1, p0, Lnbisdk/fw;->Cb:Ljava/util/Hashtable;

    iput-object v1, p0, Lnbisdk/fw;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lnbisdk/fw;->BY:Landroid/graphics/Canvas;

    iput-object v1, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnbisdk/fw;->vI:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final m(I)V
    .locals 1

    iput p1, p0, Lnbisdk/fw;->dB:I

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iput v0, p0, Lnbisdk/fw;->dC:I

    invoke-direct {p0}, Lnbisdk/fw;->ov()V

    iget-object v0, p0, Lnbisdk/fw;->BW:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Lcom/nbi/map/data/Rectangle;->makeClone()Lcom/nbi/map/data/Rectangle;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/fw;->BX:Lcom/nbi/map/data/Rectangle;

    iget-object v0, p0, Lnbisdk/fw;->BZ:Lnbisdk/pc;

    invoke-virtual {v0, p1}, Lnbisdk/pc;->m(I)V

    iget-object v0, p0, Lnbisdk/fw;->Ca:Lnbisdk/pc;

    invoke-virtual {v0, p1}, Lnbisdk/pc;->m(I)V

    return-void
.end method

.method public final o(II)V
    .locals 0

    iput p1, p0, Lnbisdk/fw;->Cd:I

    iput p2, p0, Lnbisdk/fw;->Cf:I

    return-void
.end method

.method public final p(II)V
    .locals 0

    iput p1, p0, Lnbisdk/fw;->Cg:I

    iput p2, p0, Lnbisdk/fw;->Ce:I

    return-void
.end method
