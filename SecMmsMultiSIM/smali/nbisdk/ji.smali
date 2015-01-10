.class final Lnbisdk/ji;
.super Lnbisdk/ql;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/ji$a;
    }
.end annotation


# instance fields
.field ay:I

.field bE:I

.field private bj:I

.field cJ:I

.field cU:I

.field os:Lnbisdk/qm;

.field private ot:Lnbisdk/yv;

.field private ou:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lnbisdk/qm;Lnbisdk/yv;I)V
    .locals 1

    invoke-direct {p0}, Lnbisdk/ql;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnbisdk/ji;->bj:I

    iput-object p1, p0, Lnbisdk/ji;->os:Lnbisdk/qm;

    iput-object p2, p0, Lnbisdk/ji;->ot:Lnbisdk/yv;

    iput p3, p0, Lnbisdk/ji;->ay:I

    return-void
.end method


# virtual methods
.method public final O()V
    .locals 1

    iget-object v0, p0, Lnbisdk/ji;->ou:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ji;->ou:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ji;->ou:Ljava/util/Vector;

    :cond_0
    return-void
.end method

.method public final S()I
    .locals 1

    iget-object v0, p0, Lnbisdk/ji;->ot:Lnbisdk/yv;

    iget-object v0, v0, Lnbisdk/yv;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final aA(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnbisdk/ji;->ot:Lnbisdk/yv;

    iget-object v1, v1, Lnbisdk/yv;->br:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnbisdk/ji;->ot:Lnbisdk/yv;

    iget-object v1, v1, Lnbisdk/yv;->br:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/ji;->os:Lnbisdk/qm;

    iget-object v1, v1, Lnbisdk/qm;->vB:[[B

    iget v2, p0, Lnbisdk/ji;->cU:I

    add-int/2addr v0, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lnbisdk/ro;

    invoke-direct {v0, p1}, Lnbisdk/ro;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final aF(I)Lnbisdk/ql;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lnbisdk/ji;->ou:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/ji;->ou:Ljava/util/Vector;

    invoke-virtual {p0}, Lnbisdk/ji;->is()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/ji;->ou:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnbisdk/ji;->ou:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ql;

    return-object v0
.end method

.method public final ak()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ji;->ot:Lnbisdk/yv;

    iget-object v0, v0, Lnbisdk/yv;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public final am()I
    .locals 3

    iget v0, p0, Lnbisdk/ji;->bj:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lnbisdk/ji;->is()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lnbisdk/ji;->bj:I

    :cond_1
    iget v0, p0, Lnbisdk/ji;->bj:I

    return v0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lnbisdk/ql;->b()V

    :try_start_0
    invoke-virtual {p0}, Lnbisdk/ji;->is()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ji;

    invoke-virtual {v0}, Lnbisdk/ji;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    iput-object v2, p0, Lnbisdk/ji;->os:Lnbisdk/qm;

    iput-object v2, p0, Lnbisdk/ji;->ot:Lnbisdk/yv;

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lnbisdk/ji;->bE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnbisdk/ji;->os:Lnbisdk/qm;

    const/4 v1, 0x0

    iput-object v1, v0, Lnbisdk/qm;->vA:[Lnbisdk/ji;

    iget-object v0, p0, Lnbisdk/ji;->os:Lnbisdk/qm;

    const/4 v1, 0x0

    iput-object v1, v0, Lnbisdk/qm;->vB:[[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final iq()Lnbisdk/ql;
    .locals 2

    iget v0, p0, Lnbisdk/ji;->bE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/ji;->os:Lnbisdk/qm;

    iget-object v0, v0, Lnbisdk/qm;->vA:[Lnbisdk/ji;

    iget v1, p0, Lnbisdk/ji;->bE:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final ir()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lnbisdk/ji;->ot:Lnbisdk/yv;

    iget-object v0, v0, Lnbisdk/yv;->br:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final is()Ljava/util/Enumeration;
    .locals 1

    new-instance v0, Lnbisdk/ji$a;

    invoke-direct {v0, p0}, Lnbisdk/ji$a;-><init>(Lnbisdk/ji;)V

    return-object v0
.end method
