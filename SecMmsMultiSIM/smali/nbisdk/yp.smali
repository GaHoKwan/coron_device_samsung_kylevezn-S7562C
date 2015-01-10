.class public final Lnbisdk/yp;
.super Ljava/lang/Object;


# instance fields
.field private Es:Lnbisdk/pc;

.field private Et:Lnbisdk/pc;

.field private Eu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private Ev:Landroid/graphics/Rect;

.field private Ew:Landroid/graphics/Rect;

.field private dz:Lnbisdk/fw;


# direct methods
.method public constructor <init>(Lnbisdk/fw;Lnbisdk/pc;Lnbisdk/pc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/yp;->dz:Lnbisdk/fw;

    iput-object p2, p0, Lnbisdk/yp;->Es:Lnbisdk/pc;

    iput-object p3, p0, Lnbisdk/yp;->Et:Lnbisdk/pc;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnbisdk/yp;->Ev:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnbisdk/yp;->Ew:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Lnbisdk/hf;Lnbisdk/hf;)V
    .locals 8

    iget-object v0, p0, Lnbisdk/yp;->dz:Lnbisdk/fw;

    invoke-virtual {v0}, Lnbisdk/fw;->cq()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/yp;->dz:Lnbisdk/fw;

    invoke-virtual {v1}, Lnbisdk/fw;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lnbisdk/yp;->Ev:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lnbisdk/hf;->hn()I

    move-result v3

    invoke-virtual {p1}, Lnbisdk/hf;->ho()I

    move-result v4

    invoke-virtual {p1}, Lnbisdk/hf;->hn()I

    move-result v5

    invoke-virtual {p1}, Lnbisdk/hf;->cE()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Lnbisdk/hf;->ho()I

    move-result v6

    invoke-virtual {p1}, Lnbisdk/hf;->cE()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lnbisdk/yp;->Ew:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lnbisdk/hf;->hn()I

    move-result v3

    invoke-virtual {p2}, Lnbisdk/hf;->ho()I

    move-result v4

    invoke-virtual {p2}, Lnbisdk/hf;->hn()I

    move-result v5

    invoke-virtual {p2}, Lnbisdk/hf;->cE()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p2}, Lnbisdk/hf;->ho()I

    move-result v6

    invoke-virtual {p2}, Lnbisdk/hf;->cE()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lnbisdk/yp;->Ev:Landroid/graphics/Rect;

    iget-object v3, p0, Lnbisdk/yp;->Ew:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private pd()V
    .locals 8

    iget-object v0, p0, Lnbisdk/yp;->Eu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/yp;->Et:Lnbisdk/pc;

    invoke-virtual {v0}, Lnbisdk/pc;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lnbisdk/yp;->Et:Lnbisdk/pc;

    invoke-virtual {v0, v1}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/hf;->hp()Ljava/lang/String;

    move-result-object v4

    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lnbisdk/yp;->Eu:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v1, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    iget-object v5, p0, Lnbisdk/yp;->Es:Lnbisdk/pc;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v0

    iget-object v5, p0, Lnbisdk/yp;->Et:Lnbisdk/pc;

    invoke-virtual {v5, v1}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lnbisdk/yp;->a(Lnbisdk/hf;Lnbisdk/hf;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v5, p0, Lnbisdk/yp;->Et:Lnbisdk/pc;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v0

    iget-object v4, p0, Lnbisdk/yp;->Et:Lnbisdk/pc;

    invoke-virtual {v4, v1}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lnbisdk/yp;->a(Lnbisdk/hf;Lnbisdk/hf;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final pc()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnbisdk/yp;->Eu:Ljava/util/Map;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/yp;->Es:Lnbisdk/pc;

    invoke-virtual {v0}, Lnbisdk/pc;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/yp;->Es:Lnbisdk/pc;

    invoke-virtual {v0, v1}, Lnbisdk/pc;->ba(I)Lnbisdk/hf;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/hf;->hp()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnbisdk/yp;->Eu:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lnbisdk/yp;->Eu:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lnbisdk/yp;->pd()V

    return-void
.end method
