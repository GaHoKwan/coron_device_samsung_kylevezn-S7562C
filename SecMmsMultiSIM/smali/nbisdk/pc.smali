.class public final Lnbisdk/pc;
.super Ljava/lang/Object;


# instance fields
.field private dB:I

.field private dC:I

.field private uH:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/hf;",
            ">;"
        }
    .end annotation
.end field

.field private uI:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnbisdk/hf;",
            ">;>;"
        }
    .end annotation
.end field

.field private uJ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lnbisdk/pc;->dB:I

    const/4 v0, 0x1

    iput v0, p0, Lnbisdk/pc;->dC:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/pc;->uI:Ljava/util/Hashtable;

    iput v1, p0, Lnbisdk/pc;->uJ:I

    return-void
.end method

.method private bb(I)V
    .locals 5

    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    div-int v2, p1, v0

    iget v1, p0, Lnbisdk/pc;->uJ:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnbisdk/pc;->uJ:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    iget v3, p0, Lnbisdk/pc;->uJ:I

    invoke-virtual {v0}, Lnbisdk/hf;->getPriority()I

    move-result v4

    div-int/2addr v4, v2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lnbisdk/hf;->setPriority(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private lf()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    invoke-virtual {v0, v1}, Lnbisdk/hf;->setIndex(I)V

    const-string v0, "updateTileList"

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/au;Lcom/nbi/map/data/Rectangle;IIII)V
    .locals 13

    invoke-virtual {p1}, Lnbisdk/au$d;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lnbisdk/pc;->dB:I

    sub-int v6, v0, v1

    invoke-virtual {p1}, Lnbisdk/au;->cE()I

    move-result v0

    iget v1, p0, Lnbisdk/pc;->dC:I

    mul-int v7, v0, v1

    invoke-virtual {p2}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v0

    div-int/2addr v0, v7

    invoke-virtual {p2}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    div-int/2addr v1, v7

    add-int v8, p3, v0

    add-int v9, p4, v1

    const/4 v2, 0x1

    shl-int v10, v2, v6

    iget-object v2, p0, Lnbisdk/pc;->uI:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v2, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    mul-int/2addr v0, v1

    if-eq v2, v0, :cond_4

    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    move/from16 v5, p3

    :goto_0
    if-ge v5, v8, :cond_7

    move/from16 v2, p4

    move v3, v0

    move v4, v1

    :goto_1
    if-ge v2, v9, :cond_6

    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    move-object v1, v0

    :goto_2
    invoke-virtual {v1, v6}, Lnbisdk/hf;->setTz(I)V

    invoke-virtual {v1, v7}, Lnbisdk/hf;->q(I)V

    rem-int v0, v5, v10

    if-gez v0, :cond_1

    add-int/2addr v0, v10

    :cond_1
    invoke-virtual {v1, v0}, Lnbisdk/hf;->setTx(I)V

    sub-int v0, v5, p3

    mul-int/2addr v0, v7

    invoke-virtual {v1, v0}, Lnbisdk/hf;->ap(I)V

    rem-int v0, v2, v10

    if-gez v0, :cond_2

    add-int/2addr v0, v10

    :cond_2
    invoke-virtual {v1, v0}, Lnbisdk/hf;->setTy(I)V

    sub-int v0, v2, p4

    mul-int/2addr v0, v7

    invoke-virtual {v1, v0}, Lnbisdk/hf;->aq(I)V

    invoke-virtual {v1}, Lnbisdk/hf;->hn()I

    move-result v0

    div-int/lit8 v11, v7, 0x2

    add-int/2addr v0, v11

    invoke-virtual {v1}, Lnbisdk/hf;->ho()I

    move-result v11

    div-int/lit8 v12, v7, 0x2

    add-int/2addr v11, v12

    sub-int v12, p5, v0

    sub-int v0, p5, v0

    mul-int/2addr v0, v12

    sub-int v12, p6, v11

    sub-int v11, p6, v11

    mul-int/2addr v11, v12

    add-int/2addr v0, v11

    invoke-virtual {v1, v0}, Lnbisdk/hf;->setPriority(I)V

    invoke-virtual {v1}, Lnbisdk/hf;->getPriority()I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, p0, Lnbisdk/pc;->uI:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lnbisdk/hf;->hp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lnbisdk/pc;->uI:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lnbisdk/hf;->hp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    invoke-virtual {v0}, Lnbisdk/hf;->hj()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    new-instance v0, Lnbisdk/hf;

    invoke-direct {v0, p1}, Lnbisdk/hf;-><init>(Lnbisdk/au;)V

    iget-object v1, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v1, v0

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v1, v4

    move v0, v3

    goto/16 :goto_0

    :cond_7
    const-string v0, "updateTileList"

    const-string v2, ""

    invoke-static {v0, v2}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lnbisdk/pc;->bb(I)V

    invoke-direct {p0}, Lnbisdk/pc;->lf()V

    return-void
.end method

.method public final aX(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnbisdk/hf;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/pc;->uI:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ba(I)Lnbisdk/hf;
    .locals 1

    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    return-object v0
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/pc;->uI:Ljava/util/Hashtable;

    iput-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    return-void
.end method

.method public final f(Lnbisdk/ct;)Ljava/util/Vector;
    .locals 5
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

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lnbisdk/pc;->uI:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lnbisdk/hf;->e(Lnbisdk/ct;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final lg()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnbisdk/hf;->z(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final lh()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/hf;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    return-object v0
.end method

.method public final m(I)V
    .locals 1

    iput p1, p0, Lnbisdk/pc;->dB:I

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iput v0, p0, Lnbisdk/pc;->dC:I

    return-void
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lnbisdk/pc;->uH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
