.class final Lnbisdk/qm;
.super Ljava/lang/Object;


# instance fields
.field ay:I

.field vA:[Lnbisdk/ji;

.field vB:[[B


# direct methods
.method constructor <init>([I[Lnbisdk/yv;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnbisdk/kt;,
            Lnbisdk/tv;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lnbisdk/ji;

    iput-object v0, p0, Lnbisdk/qm;->vA:[Lnbisdk/ji;

    move v1, v2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lnbisdk/qm;->vA:[Lnbisdk/ji;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    aget v3, p1, v1

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    move v3, v4

    :goto_1
    aget v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    move v5, v4

    :goto_2
    aget-object v7, p2, v1

    iget-object v8, p0, Lnbisdk/qm;->vA:[Lnbisdk/ji;

    new-instance v9, Lnbisdk/ji;

    invoke-direct {v9, p0, v7, v1}, Lnbisdk/ji;-><init>(Lnbisdk/qm;Lnbisdk/yv;I)V

    aput-object v9, v8, v1

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lnbisdk/rm;

    invoke-direct {v0}, Lnbisdk/rm;-><init>()V

    throw v0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/ji;

    iput v1, v0, Lnbisdk/ji;->cJ:I

    iget v0, v0, Lnbisdk/ji;->bE:I

    iput v0, v9, Lnbisdk/ji;->bE:I

    move v0, v2

    :goto_3
    if-eqz v3, :cond_7

    move v3, v4

    :goto_4
    if-eqz v5, :cond_4

    const/4 v0, -0x1

    iput v0, v9, Lnbisdk/ji;->cJ:I

    :goto_5
    iget v0, p0, Lnbisdk/qm;->ay:I

    iput v0, v9, Lnbisdk/ji;->cU:I

    iget v0, p0, Lnbisdk/qm;->ay:I

    invoke-virtual {v9}, Lnbisdk/ji;->S()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, p0, Lnbisdk/qm;->ay:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v1, -0x1

    iput v7, v9, Lnbisdk/ji;->bE:I

    goto :goto_3

    :cond_4
    invoke-virtual {v6, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lnbisdk/rm;

    invoke-direct {v0}, Lnbisdk/rm;-><init>()V

    throw v0

    :cond_6
    return-void

    :cond_7
    move v3, v0

    goto :goto_4
.end method
