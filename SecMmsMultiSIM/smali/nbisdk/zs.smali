.class public final Lnbisdk/zs;
.super Ljava/lang/Object;


# instance fields
.field private Ey:Lnbisdk/fz;

.field private FC:Lnbisdk/xj;

.field private FD:Lnbisdk/yu;


# direct methods
.method private constructor <init>(Lnbisdk/xj;Lnbisdk/fz;Lnbisdk/yu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/zs;->FC:Lnbisdk/xj;

    iput-object p2, p0, Lnbisdk/zs;->Ey:Lnbisdk/fz;

    iput-object p3, p0, Lnbisdk/zs;->FD:Lnbisdk/yu;

    return-void
.end method

.method public static a(Lnbisdk/xj;Lnbisdk/fz;)V
    .locals 7

    new-instance v0, Lnbisdk/yu;

    invoke-virtual {p0}, Lnbisdk/xj;->oE()I

    move-result v1

    invoke-direct {v0, v1}, Lnbisdk/yu;-><init>(I)V

    new-instance v2, Lnbisdk/zs;

    invoke-direct {v2, p0, p1, v0}, Lnbisdk/zs;-><init>(Lnbisdk/xj;Lnbisdk/fz;Lnbisdk/yu;)V

    :cond_0
    iget-object v0, v2, Lnbisdk/zs;->FD:Lnbisdk/yu;

    invoke-virtual {v0}, Lnbisdk/yu;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Lnbisdk/zs;->FD:Lnbisdk/yu;

    invoke-virtual {v0}, Lnbisdk/yu;->fj()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v2, Lnbisdk/zs;->FC:Lnbisdk/xj;

    invoke-virtual {v1}, Lnbisdk/xj;->oE()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, v2, Lnbisdk/zs;->FC:Lnbisdk/xj;

    invoke-virtual {v1, v0}, Lnbisdk/xj;->get(I)Ljava/lang/Object;

    move-result-object v4

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_1

    iget-object v5, v2, Lnbisdk/zs;->FC:Lnbisdk/xj;

    sub-int v6, v1, v3

    invoke-virtual {v5, v6}, Lnbisdk/xj;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v2, Lnbisdk/zs;->Ey:Lnbisdk/fz;

    invoke-interface {v6, v4, v5}, Lnbisdk/fz;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_1

    iget-object v6, v2, Lnbisdk/zs;->FC:Lnbisdk/xj;

    invoke-virtual {v6, v1, v5}, Lnbisdk/xj;->set(ILjava/lang/Object;)V

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_1
    iget-object v5, v2, Lnbisdk/zs;->FC:Lnbisdk/xj;

    invoke-virtual {v5, v1, v4}, Lnbisdk/xj;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
