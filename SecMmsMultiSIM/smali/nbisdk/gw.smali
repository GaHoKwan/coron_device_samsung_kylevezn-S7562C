.class public abstract Lnbisdk/gw;
.super Ljava/lang/Object;


# instance fields
.field protected lw:Ljava/util/Vector;

.field protected lx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method protected final ah(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-virtual {v0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final ai(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/gw;->lx:Ljava/lang/String;

    return-void
.end method

.method public final am(I)Lnbisdk/vl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    return-object v0
.end method

.method public final c(Lnbisdk/gw;)V
    .locals 3

    iget-object v0, p1, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lnbisdk/gw;->am(I)Lnbisdk/vl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnbisdk/gw;->c(Lnbisdk/vl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lnbisdk/vl;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lnbisdk/vl;)V
    .locals 2

    invoke-virtual {p1}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnbisdk/gw;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lnbisdk/gw;->c(Lnbisdk/vl;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method protected final e(Lnbisdk/vl;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-virtual {v0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-virtual {v0}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public f(B)V
    .locals 3

    new-instance v0, Lnbisdk/vl;

    const-string v1, "source"

    const-string v2, "user"

    invoke-direct {v0, v1, v2}, Lnbisdk/vl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnbisdk/gw;->d(Lnbisdk/vl;)V

    return-void
.end method

.method public final gU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/gw;->lx:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilterCount()I
    .locals 1

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-virtual {v0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lnbisdk/vl;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final indexOf(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lnbisdk/gw;->lw:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/vl;

    invoke-virtual {v0}, Lnbisdk/vl;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
